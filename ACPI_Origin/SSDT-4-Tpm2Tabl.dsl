/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-4-Tpm2Tabl.aml, Fri Apr 24 10:58:03 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000004C3 (1219)
 *     Revision         0x02
 *     Checksum         0x11
 *     OEM ID           "LGE   "
 *     OEM Table ID     "Tpm2Tabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LGE   ", "Tpm2Tabl", 0x00001000)
{
    External (PTTB, UnknownObj)    // (from opcode)

    Scope (\_SB)
    {
        Device (TPM)
        {
            Name (_HID, "MSFT0101")  // _HID: Hardware ID
            Name (_STR, Unicode ("TPM 2.0 Device"))  // _STR: Description String
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (LNotEqual (PTTB, 0xFED40040))
                {
                    Name (CRS0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00001000,         // Address Length
                            _Y3C)
                        Memory32Fixed (ReadOnly,
                            0xFED40000,         // Address Base
                            0x00001000,         // Address Length
                            )
                    })
                    CreateDWordField (CRS0, \_SB.TPM._CRS._Y3C._BAS, CBAS)  // _BAS: Base Address
                    Store (PTTB, CBAS)
                    Return (CRS0)
                }
                Else
                {
                    Name (CRS1, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED40000,         // Address Base
                            0x00001000,         // Address Length
                            )
                    })
                    Return (CRS1)
                }
            }

            OperationRegion (SMIP, SystemIO, 0xB2, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }

            OperationRegion (FHCI, SystemMemory, 0xFED40000, 0x1000)
            Field (FHCI, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                HERR,   32, 
                Offset (0x40), 
                CREQ,   32, 
                CSTS,   32, 
                Offset (0x4C), 
                HCMD,   32
            }

            OperationRegion (TNVS, SystemMemory, 0xAFECB000, 0x26)
            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                PPRM,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32
            }

            Method (PTS, 1, Serialized)
            {
                If (LAnd (LLess (Arg0, 0x06), LGreater (Arg0, 0x03)))
                {
                    If (LNot (And (MORD, 0x10)))
                    {
                        Store (0x02, MCIP)
                        Store (MCIN, IOB2)
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (HINF, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg1), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        Name (TPMV, Package (0x02)
                        {
                            One, 
                            Package (0x02)
                            {
                                One, 
                                0x20
                            }
                        })
                        If (LEqual (_STA (), Zero))
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }

                        Return (TPMV)
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Name (TPM2, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (TPM3, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Method (TPPI, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg1), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                     
                        })
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        Return ("1.3")
                    }
                    ElseIf (LEqual (_T_0, 0x02))
                    {
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ)
                        Store (0x02, PPIP)
                        Store (PPIN, IOB2)
                        Return (FRET)
                    }
                    ElseIf (LEqual (_T_0, 0x03))
                    {
                        Store (PPRQ, Index (TPM2, One))
                        Return (TPM2)
                    }
                    ElseIf (LEqual (_T_0, 0x04))
                    {
                        Return (0x02)
                    }
                    ElseIf (LEqual (_T_0, 0x05))
                    {
                        Store (0x05, PPIP)
                        Store (PPIN, IOB2)
                        Store (LPPR, Index (TPM3, One))
                        Store (PPRP, Index (TPM3, 0x02))
                        Return (TPM3)
                    }
                    ElseIf (LEqual (_T_0, 0x06))
                    {
                        Return (0x03)
                    }
                    ElseIf (LEqual (_T_0, 0x07))
                    {
                        Store (0x07, PPIP)
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ)
                        Store (Zero, PPRM)
                        If (LEqual (PPRQ, 0x17))
                        {
                            Store (DerefOf (Index (Arg2, One)), PPRM)
                        }

                        Store (PPIN, IOB2)
                        Return (FRET)
                    }
                    ElseIf (LEqual (_T_0, 0x08))
                    {
                        Store (0x08, PPIP)
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ)
                        Store (PPIN, IOB2)
                        Store (Zero, PPRQ)
                        Return (FRET)
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (One)
            }

            Method (TMCI, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg1), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        Store (DerefOf (Index (Arg2, Zero)), MORD)
                        Store (One, MCIP)
                        Store (MCIN, IOB2)
                        Return (MRET)
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (One)
            }

            Method (TSMI, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (WTME, Zero)
                While (One)
                {
                    Store (ToInteger (Arg1), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        Store (One, CREQ)
                        While (LAnd (LLessEqual (WTME, 0xC8), LNotEqual (And (CREQ, One), Zero)))
                        {
                            Sleep (One)
                            Increment (WTME)
                        }

                        Store (0x02, HCMD)
                        Return (Zero)
                    }
                    Else
                    {
                        BreakPoint
                    }

                    Break
                }

                Return (One)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8")))
                {
                    Return (HINF (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {
                    Return (TPPI (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
                {
                    Return (TMCI (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4")))
                {
                    Return (TSMI (Arg1, Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }
    }
}

