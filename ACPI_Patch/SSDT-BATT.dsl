/*

 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "BATT", 0x00000000)
{
    External (_SB.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB.PCI0.LPCB.H_EC.CMB0, DeviceObj)
    External (_SB.PCI0.LPCB.H_EC.CMB0.PBIF, PkgObj)
    External (_SB.PCI0.LPCB.H_EC.CMB0.PBIX, PkgObj)
    External (_SB.PCI0.LPCB.H_EC.CMB0.BLFC, IntObj)
    External (_SB.PCI0.LPCB.H_EC.BATM, MutexObj)
    External (_SB.PCI0.LPCB.H_EC.MB16, IntObj)
    External (_SB.PCI0.LPCB.H_EC.BDCH, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BDCL, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BFCH, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BFCL, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BDVH, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BDVL, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BSNH, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BSNL, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.CYCH, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.CYCL, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BST, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BPRH, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BPRL, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BPVH, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BPVL, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BRCH, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.BRCL, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.CMB0.FAKB, IntObj)
    External (_SB.PCI0.LPCB.H_EC.CMB0.BUFF, PkgObj)
    External (_SB.PCI0.LPCB.H_EC.CMB0.YBIF, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.CMB0.YBIX, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.CMB0.YBST, MethodObj)
    External (PL4R, FieldUnitObj)
    External (PL4W, FieldUnitObj)
    External (SSMP, IntObj)

    Method (B1B2, 2, NotSerialized)
    {
        Return ((Arg0 | (Arg1 << 0x08)))
    }

    Method (B1B4, 4, NotSerialized)
    {
        Local0 = (Arg2 | (Arg3 << 0x08))
        Local0 = (Arg1 | (Local0 << 0x08))
        Local0 = (Arg0 | (Local0 << 0x08))
        Return (Local0)
    }

    Method (W16B, 3, NotSerialized)
    {
        Arg0 = Arg2
        Arg1 = (Arg2 >> 0x08)
    }

    Scope (_SB.PCI0.LPCB.H_EC)
    {
        Method (RE1B, 1, NotSerialized)
        {
            OperationRegion (ERM2, EmbeddedControl, Arg0, One)
            Field (ERM2, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            Return (BYTE) /* \RE1B.BYTE */
        }

        Method (RECB, 2, Serialized)
        {
            Arg1 = ((Arg1 + 0x07) >> 0x03)
            Name (TEMP, Buffer (Arg1){})
            Arg1 += Arg0
            Local0 = Zero
            While ((Arg0 < Arg1))
            {
                TEMP [Local0] = RE1B (Arg0)
                Arg0++
                Local0++
            }

            Return (TEMP) /* \RECB.TEMP */
        }

        Method (WE1B, 2, NotSerialized)
        {
            OperationRegion (ERM2, EmbeddedControl, Arg0, One)
            Field (ERM2, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            BYTE = Arg1
        }

        Method (WECB, 3, Serialized)
        {
            Arg1 = ((Arg1 + 0x07) >> 0x03)
            Name (TEMP, Buffer (Arg1){})
            TEMP = Arg2
            Arg1 += Arg0
            Local0 = Zero
            While ((Arg0 < Arg1))
            {
                WE1B (Arg0, DerefOf (TEMP [Local0]))
                Arg0++
                Local0++
            }
        }
        
        OperationRegion (XCF4, EmbeddedControl, Zero, 0xFF)
        Field (XCF4, ByteAcc, Lock, Preserve)
        {
            Offset (0x84),
            BDC0,    8,//BDC
            BDC1,    8,
            BFC0,    8,//BFC
            BFC1,    8,
            BDV0,    8,//BDV
            BDV1,    8,
            Offset (0x92),
            BSN0,    8,//BSN
            BSN1,    8,
            BPR0,    8,//BPR
            BPR1,    8,
            BRC0,    8,//BRC
            BRC1,    8,
            BPV0,    8,//BPV
            BPV1,    8,
            Offset (0xDB),
            YC10,    8,//CYC1
            YC11,    8
        }
    } /* Scope (_SB.PCI0.LPCB.H_EC) */

    Scope (_SB.PCI0.LPCB.H_EC.CMB0)
    {
        Method (XBIF, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                If (MB16)
                {
                    Local0 = B1B2 (\_SB.PCI0.LPCB.H_EC.BDC0, \_SB.PCI0.LPCB.H_EC.BDC1)
                }
                Else
                {
                    Local0 = ((\_SB.PCI0.LPCB.H_EC.BDCH << 0x08) + \_SB.PCI0.LPCB.H_EC.BDCL)
                }

                If ((Local0 == 0xFFFF))
                {
                    PBIF [One] = 0xFFFFFFFF
                }
                Else
                {
                    PBIF [One] = (Local0 * 0x0A)
                }

                If (MB16)
                {
                    Local0 = B1B2 (\_SB.PCI0.LPCB.H_EC.BFC0, \_SB.PCI0.LPCB.H_EC.BFC1)
                }
                Else
                {
                    Local0 = ((\_SB.PCI0.LPCB.H_EC.BFCH << 0x08) + \_SB.PCI0.LPCB.H_EC.BFCL)
                }

                If ((Local0 == 0xFFFF))
                {
                    BLFC = 0xFFFFFFFF
                    PBIF [0x02] = 0xFFFFFFFF
                }
                Else
                {
                    BLFC = Local0
                    PBIF [0x02] = (Local0 * 0x0A)
                }

                If (MB16)
                {
                    Local0 = B1B2 (\_SB.PCI0.LPCB.H_EC.BDV0, \_SB.PCI0.LPCB.H_EC.BDV1)
                }
                Else
                {
                    Local0 = ((\_SB.PCI0.LPCB.H_EC.BDVH << 0x08) + \_SB.PCI0.LPCB.H_EC.BDVL)
                }

                If ((Local0 == 0xFFFF))
                {
                    Local0 = 0xFFFFFFFF
                }

                PBIF [0x04] = Local0
                PBIF [0x05] = (DerefOf (PBIF [One]) / 0xC8)
                PBIF [0x06] = (DerefOf (PBIF [One]) / 0x0190)
                If ((DerefOf (PBIF [0x09]) == ""))
                {
                    PBIF [0x09] = ToString (RECB (0x9E, 0x48), Ones)
                }

                Acquire (BATM, 0xFFFF)
                If (MB16)
                {
                    Local0 = B1B2 (\_SB.PCI0.LPCB.H_EC.BSN0, \_SB.PCI0.LPCB.H_EC.BSN1)
                }
                Else
                {
                    Local0 = ((\_SB.PCI0.LPCB.H_EC.BSNH << 0x08) + \_SB.PCI0.LPCB.H_EC.BSNL)
                }

                Release (BATM)
                Concatenate (ToDecimalString (Local0), "", PBIF [0x0A])
                Return (PBIF) /* \_SB_.PCI0.LPCB.H_EC.CMB0.PBIF */
            }
            Else
            {
                Return (YBIF ())
            }

        }
        
        Method (XBIX, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                XBIF ()
                PBIX [One] = DerefOf (PBIF [Zero])
                PBIX [0x02] = DerefOf (PBIF [One])
                PBIX [0x03] = DerefOf (PBIF [0x02])
                PBIX [0x04] = DerefOf (PBIF [0x03])
                PBIX [0x05] = DerefOf (PBIF [0x04])
                PBIX [0x06] = DerefOf (PBIF [0x05])
                PBIX [0x07] = DerefOf (PBIF [0x06])
                If (MB16)
                {
                    Local0 = B1B2 (\_SB.PCI0.LPCB.H_EC.YC10, \_SB.PCI0.LPCB.H_EC.YC11)
                }
                Else
                {
                    Local0 = ((\_SB.PCI0.LPCB.H_EC.CYCH << 0x08) + \_SB.PCI0.LPCB.H_EC.CYCL)
                }
                PBIX [0x08] = Local0
                PBIX [0x0E] = DerefOf (PBIF [0x05])
                PBIX [0x0F] = DerefOf (PBIF [0x06])
                PBIX [0x10] = DerefOf (PBIF [0x09])
                PBIX [0x11] = DerefOf (PBIF [0x0A])
                Return (PBIX) /* \_SB_.PCI0.LPCB.H_EC.CMB0.PBIX */
            }
            Else
            {
                Return (YBIX ())
            }
        }
        
        Method (XBST, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                BUFF [Zero] = \_SB.PCI0.LPCB.H_EC.BST
                If (MB16)
                {
                    Local0 = B1B2 (\_SB.PCI0.LPCB.H_EC.BPR0, \_SB.PCI0.LPCB.H_EC.BPR1)
                }
                Else
                {
                    Local0 = ((\_SB.PCI0.LPCB.H_EC.BPRH << 0x08) + \_SB.PCI0.LPCB.H_EC.BPRL)
                }
                If ((Local0 == 0x7FFF))
                {
                    Local0 = 0xFFFFFFFF
                    BUFF [One] = Local0
                }
                Else
                {
                    Local1 = Local0
                    If ((Local0 & 0x8000))
                    {
                        Local2 = (0x00010000 - Local1)
                    }
                    Else
                    {
                        Local2 = Local1
                    }
                    If (MB16)
                    {
                        Local3 = B1B2 (\_SB.PCI0.LPCB.H_EC.BPV0, \_SB.PCI0.LPCB.H_EC.BPV1)
                    }
                    Else
                    {
                        Local3 = ((\_SB.PCI0.LPCB.H_EC.BPVH << 0x08) + \_SB.PCI0.LPCB.H_EC.BPVL)
                    }
                    Divide ((Local2 * Local3), 0x03E8, Local4, Local0)
                    BUFF [One] = Local0
                }
                Acquire (BATM, 0xFFFF)
                If (MB16)
                {
                    Local0 = B1B2 (\_SB.PCI0.LPCB.H_EC.BRC0, \_SB.PCI0.LPCB.H_EC.BRC1)
                }
                Else
                {
                    Local0 = ((\_SB.PCI0.LPCB.H_EC.BRCH << 0x08) + \_SB.PCI0.LPCB.H_EC.BRCL)
                }
                Release (BATM)
                If ((Local0 == 0xFFFF))
                {
                    Local0 = 0xFFFFFFFF
                }
                Acquire (BATM, 0xFFFF)
                If (MB16)
                {
                    Local1 = B1B2 (\_SB.PCI0.LPCB.H_EC.BFC0, \_SB.PCI0.LPCB.H_EC.BFC1)
                }
                Else
                {
                    Local1 = ((\_SB.PCI0.LPCB.H_EC.BFCH << 0x08) + \_SB.PCI0.LPCB.H_EC.BFCL)
                }
                Release (BATM)
                If ((Local1 == 0xFFFF))
                {
                    Local1 = 0xFFFFFFFF
                }
                Local2 = BLFC /* \_SB_.PCI0.LPCB.H_EC.CMB0.BLFC */
                Divide ((Local0 * Local2), Local1, Local4, Local3)
                If (((Local4 << One) >= Local1))
                {
                    Local3 += One
                }
                Local0 = Local3
                If ((Local0 > BLFC))
                {
                    BUFF [0x02] = (BLFC * 0x0A)
                }
                Else
                {
                    BUFF [0x02] = (Local0 * 0x0A)
                }
                If (FAKB)
                {
                    Local0 = DerefOf (BUFF [0x02])
                    Local0 -= (FAKB * 0x01F4)
                    BUFF [0x02] = Local0
                }
                Acquire (BATM, 0xFFFF)
                If (MB16)
                {
                    Local0 = B1B2 (\_SB.PCI0.LPCB.H_EC.BPV0, \_SB.PCI0.LPCB.H_EC.BPV1)
                }
                Else
                {
                    Local0 = ((\_SB.PCI0.LPCB.H_EC.BPVH << 0x08) + \_SB.PCI0.LPCB.H_EC.BPVL)
                }
                Release (BATM)
                If ((Local0 == 0xFFFF))
                {
                    Local0 = 0xFFFFFFFF
                }
                BUFF [0x03] = Local0
                Local0 = DerefOf (BUFF [0x02])
                Local1 = DerefOf (PBIF [0x02])
                Debug = Concatenate ("BRC =", ToHexString (Local0))
                Debug = Concatenate ("BFC =", ToHexString (Local1))
                Divide ((Local0 * 0x64), Local1, Local3, Local4)
                Debug = Concatenate ("Result  =", ToHexString (Local4))
                If (((Local3 << One) >= Local1))
                {
                    Local4 += One
                }
                Debug = Concatenate ("Result(R)  =", ToHexString (Local4))
                Debug = Concatenate ("Reminder =", ToHexString (Local3))
                Debug = Concatenate ("PL4R =", ToHexString (PL4R))
                If ((Local4 < 0x0F))
                {
                    If ((PL4R != 0x0110))
                    {
                        PL4W = 0x0110
                        SSMP = 0xFC
                    }
                }
                ElseIf ((PL4R != 0x0160))
                {
                    PL4W = 0x0160
                    SSMP = 0xFC
                }
                Return (BUFF) /* \_SB_.PCI0.LPCB.H_EC.CMB0.BUFF */
            }
            Else
            {
                Return (YBST ())
            }
        }

    } /* Scope (_SB.PCI0.LPCB.H_EC.CMB0) */
}