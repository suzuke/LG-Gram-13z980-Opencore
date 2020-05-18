
DefinitionBlock("", "SSDT", 2, "OCLT", "I2C-TPXX", 0)
{
    External (_SB.PCI0.I2C0, DeviceObj)
    External (_SB.PCI0.I2C1, DeviceObj)
    External (_SB.PCI0.I2C3, DeviceObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SDS7, FieldUnitObj)
    External (PTPS, FieldUnitObj)
    External (AITS, FieldUnitObj)
    External (_SB.GNUM, MethodObj)
    External (GPDI, FieldUnitObj)
    External (GPLI, FieldUnitObj)
    External (_SB.INUM, MethodObj)
    External (SDM0, FieldUnitObj)
    External (SDM1, FieldUnitObj)
    External (_SB.SHPO, MethodObj)
    External (_SB.PCI0.HIDG, BuffObj)
    External (_SB.PCI0.TP7G, BuffObj)
    External (_SB.PCI0.HIDD, MethodObj)
    External (_SB.PCI0.TP7D, MethodObj)
    
    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            SDS0 = 0
            PTPS = 0x02 //origin = 1
            SDS1 = 0
            AITS = 0
            //SDS7 = 0 //FPC
        }
    }

    Scope (_SB.PCI0.I2C0)
    {
        Name (SSCN, Package () { 432, 507, 30 })
        Name (FMCN, Package () { 72, 160, 30 })   
        Device (TPDX)
        {
            Name (HID2, Zero)
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0020, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                    0x00, ResourceConsumer, _Y1E, Exclusive,
                    )
            })
            Name (SBFI, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveLow, ExclusiveAndWake, ,, _Y1F)
                {
                    0x00000000,
                }
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
            })
            CreateWordField (SBFB, \_SB.PCI0.I2C0.TPDX._Y1E._ADR, BADR)  // _ADR: Address
            CreateDWordField (SBFB, \_SB.PCI0.I2C0.TPDX._Y1E._SPE, SPED)  // _SPE: Speed
            CreateWordField (SBFG, 0x17, INT1)
            CreateDWordField (SBFI, \_SB.PCI0.I2C0.TPDX._Y1F._INT, INT2)  // _INT: Interrupts
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                /*If (LLess (OSYS, 0x07DC))
                {
                    SRXO (GPDI, One)
                }*/

                Store (GNUM (GPDI), INT1)
                Store (INUM (GPDI), INT2)
                If (LEqual (SDM0, Zero))
                {
                    SHPO (GPDI, One)
                }

                //If (LEqual (PTPS, One))
                //{
                    Store ("04CA00A0", _HID)
                    Store (0x20, HID2)
                    Store (0x68, BADR)
                    Return (Zero)
                //}

                /*If (LEqual (SDS0, One))
                {
                    Store ("SYNA2393", _HID)
                    Store (0x20, HID2)
                    Return (Zero)
                }

                If (LEqual (SDS0, 0x02))
                {
                    Store ("06CB2846", _HID)
                    Store (0x20, HID2)
                    Return (Zero)
                }

                If (LEqual (SDS0, 0x06))
                {
                    Store ("ALPS0000", _HID)
                    Store (0x20, HID2)
                    Store (0x2C, BADR)
                    Return (Zero)
                }

                If (LEqual (SDS0, 0x05))
                {
                    Store ("CUST0001", _HID)
                    Store (TPDH, HID2)
                    Store (TPDB, BADR)
                    If (LEqual (TPDS, Zero))
                    {
                        Store (0x000186A0, SPED)
                    }

                    If (LEqual (TPDS, One))
                    {
                        Store (0x00061A80, SPED)
                    }

                    If (LEqual (TPDS, 0x02))
                    {
                        Store (0x000F4240, SPED)
                    }

                    Return (Zero)
                }*/
            }

            Name (_HID, "XXXX0000")  // _HID: Hardware ID
            Name (_CID, "PNP0C50")  // _CID: Compatible ID
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, HIDG))
                {
                    Return (HIDD (Arg0, Arg1, Arg2, Arg3, HID2))
                }

                If (LEqual (Arg0, TP7G))
                {
                    Return (TP7D (Arg0, Arg1, Arg2, Arg3, SBFB, SBFG))
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                /*If (LEqual (PTPS, One))
                {
                    Return (0x0F)
                }

                If (LOr (LEqual (SDS0, 0x05), LOr (LEqual (SDS0, One), LOr (LEqual (SDS0, 0x02), LEqual (SDS0, 0x06)))))
                {
                    Return (0x0F)
                }

                Return (Zero)*/
                
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                /*If (LLess (OSYS, 0x07DC))
                {
                    Return (SBFI)
                }*/

                /*If (LEqual (SDM0, Zero))
                {
                    Return (ConcatenateResTemplate (SBFB, SBFG))
                }

                Return (ConcatenateResTemplate (SBFB, SBFI))*/
                
                Return (ConcatenateResTemplate (SBFB, SBFG))
            }
        }
    }
    

    Scope (_SB.PCI0.I2C1)
    {
        Name (SSCN, Package () { 432, 507, 30 })
        Name (FMCN, Package () { 72, 160, 30 })
        Device (TPLX)
        {
            Name (HID2, Zero)
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x004C, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                    0x00, ResourceConsumer, _Y24, Exclusive,
                    )
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, Exclusive, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
            })
            Name (SBFI, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, _Y25)
                {
                    0x00000000,
                }
            })
            CreateWordField (SBFB, \_SB.PCI0.I2C1.TPLX._Y24._ADR, BADR)  // _ADR: Address
            CreateDWordField (SBFB, \_SB.PCI0.I2C1.TPLX._Y24._SPE, SPED)  // _SPE: Speed
            CreateDWordField (SBFI, \_SB.PCI0.I2C1.TPLX._Y25._INT, INT2)  // _INT: Interrupts
            CreateWordField (SBFG, 0x17, INT1)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                /*If (LLess (OSYS, 0x07DC))
                {
                    SRXO (GPLI, One)
                }*/

                Store (GNUM (GPLI), INT1)
                Store (INUM (GPLI), INT2)
                If (LEqual (SDM1, Zero))
                {
                    SHPO (GPLI, One)
                }

                //If (LEqual (SDS1, One))
                //{
                    Store ("ATML3432", _HID)
                    Store (Zero, HID2)
                    Store (0x4C, BADR)
                    Store (0x00061A80, SPED)
                    Return (Zero)
                //}

                /*If (LEqual (SDS1, 0x02))
                {
                    Store ("ATML2952", _HID)
                    Store (Zero, HID2)
                    Store (0x4A, BADR)
                    Store (0x00061A80, SPED)
                    Return (Zero)
                }

                If (LEqual (SDS1, 0x03))
                {
                    Store ("ELAN2097", _HID)
                    Store (One, HID2)
                    Store (0x10, BADR)
                    Store (0x00061A80, SPED)
                    Return (Zero)
                }

                If (LEqual (SDS1, 0x04))
                {
                    Store ("NTRG0001", _HID)
                    Store (One, HID2)
                    Store (0x07, BADR)
                    Store (0x00061A80, SPED)
                    Return (Zero)
                }

                If (LEqual (SDS1, 0x05))
                {
                    Store ("NTRG0002", _HID)
                    Store (One, HID2)
                    Store (0x64, BADR)
                    Store (0x00061A80, SPED)
                    Return (Zero)
                }

                If (LEqual (SDS1, 0x06))
                {
                    Store ("WCOM508E", _HID)
                    Store (One, HID2)
                    Store (0x0A, BADR)
                    If (LEqual (TPLS, Zero))
                    {
                        Store (0x00061A80, SPED)
                    }

                    If (LEqual (TPLS, One))
                    {
                        Store (0x000F4240, SPED)
                    }

                    Return (Zero)
                }

                If (LEqual (SDS1, 0x07))
                {
                    Store ("CUST0000", _HID)
                    Store (TPLH, HID2)
                    Store (TPLB, BADR)
                    If (LEqual (TPLS, Zero))
                    {
                        Store (0x000186A0, SPED)
                    }

                    If (LEqual (TPLS, One))
                    {
                        Store (0x00061A80, SPED)
                    }

                    If (LEqual (TPLS, 0x02))
                    {
                        Store (0x000F4240, SPED)
                    }

                    Return (Zero)
                }*/
            }

            Name (_HID, "XXXX0000")  // _HID: Hardware ID
            Name (_CID, "PNP0C50")  // _CID: Compatible ID
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, HIDG))
                {
                    Return (HIDD (Arg0, Arg1, Arg2, Arg3, HID2))
                }

                If (LEqual (Arg0, TP7G))
                {
                    Return (TP7D (Arg0, Arg1, Arg2, Arg3, SBFB, SBFG))
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                /*If (LNotEqual (SDS1, Zero))
                {
                    Return (0x0F)
                }

                Return (Zero)*/
                
                If (_OSI ("Darwin"))
                {
                    //Return (0x0F)
                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }

            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                /*If (LLess (OSYS, 0x07DC))
                {
                    Return (SBFI)
                }

                If (LEqual (SDM1, Zero))
                {
                    Return (ConcatenateResTemplate (SBFB, SBFG))
                }

                Return (ConcatenateResTemplate (SBFB, SBFI))*/
                Return (ConcatenateResTemplate (SBFB, SBFG))
            }
        }
    }

    Scope (_SB.PCI0.I2C3)
    {
        Name (SSCN, Package () { 432, 507, 30 })
        Name (FMCN, Package () { 72, 160, 30 })
        Device (TPLX)
        {   
            Name (HID2, Zero)
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0034, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C3",
                    0x00, ResourceConsumer, _Y26, Exclusive,
                    )
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, Exclusive, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
            })
            Name (SBFI, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, _Y27)
                {
                    0x00000000,
                }
            })
            CreateWordField (SBFB, \_SB.PCI0.I2C3.TPLX._Y26._ADR, BADR)  // _ADR: Address
            CreateDWordField (SBFB, \_SB.PCI0.I2C3.TPLX._Y26._SPE, SPED)  // _SPE: Speed
            CreateDWordField (SBFI, \_SB.PCI0.I2C3.TPLX._Y27._INT, INT2)  // _INT: Interrupts
            CreateWordField (SBFG, 0x17, INT1)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                /*If (LLess (OSYS, 0x07DC))
                {
                    SRXO (GPLI, One)
                }*/

                Store (GNUM (GPLI), INT1)
                Store (INUM (GPLI), INT2)
                Store ("MELF0411", _HID)
                Store (Zero, HID2)
                Store (0x34, BADR)
                Store (0x00061A80, SPED)
                Return (Zero)
            }

            Name (_HID, "XXXX0000")  // _HID: Hardware ID
            Name (_CID, "PNP0C50")  // _CID: Compatible ID
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, HIDG))
                {
                    Return (HIDD (Arg0, Arg1, Arg2, Arg3, HID2))
                }

                If (LEqual (Arg0, TP7G))
                {
                    Return (TP7D (Arg0, Arg1, Arg2, Arg3, SBFB, SBFG))
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                /*If (LEqual (AITS, One))
                {
                    Return (0x0F)
                }

                Return (Zero)*/
                
                If (_OSI ("Darwin"))
                {
                    //Return (0x0F)
                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                /*If (LLess (OSYS, 0x07DC))
                {
                    Return (SBFI)
                }

                Return (ConcatenateResTemplate (SBFB, SBFI))*/
                Return (ConcatenateResTemplate (SBFB, SBFG))
            }
        }
    }
}
