/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-0-XnSsdt.aml, Fri Apr 24 10:58:03 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00004125 (16677)
 *     Revision         0x02
 *     Checksum         0xE1
 *     OEM ID           "LGE   "
 *     OEM Table ID     "XnSsdt "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LGE   ", "XnSsdt ", 0x00003000)
{
    External (_PR_.CPU0, UnknownObj)    // (from opcode)
    External (_PR_.CPU0.TPSS, PkgObj)    // (from opcode)
    External (_PR_.CPU1, UnknownObj)    // (from opcode)
    External (_PR_.CPU2, UnknownObj)    // (from opcode)
    External (_PR_.CPU3, UnknownObj)    // (from opcode)
    External (_PR_.CPU4, UnknownObj)    // (from opcode)
    External (_PR_.CPU5, UnknownObj)    // (from opcode)
    External (_PR_.CPU6, UnknownObj)    // (from opcode)
    External (_PR_.CPU7, UnknownObj)    // (from opcode)
    External (_PR_.DSAE, UnknownObj)    // (from opcode)
    External (_PR_.DTS1, UnknownObj)    // (from opcode)
    External (_PR_.DTS2, UnknownObj)    // (from opcode)
    External (_PR_.DTS3, UnknownObj)    // (from opcode)
    External (_PR_.DTS4, UnknownObj)    // (from opcode)
    External (_PR_.DTSE, UnknownObj)    // (from opcode)
    External (_PR_.DTSF, UnknownObj)    // (from opcode)
    External (_PR_.PDTS, UnknownObj)    // (from opcode)
    External (_PR_.PKGA, UnknownObj)    // (from opcode)
    External (_PR_.POWS, UnknownObj)    // (from opcode)
    External (_PR_.TRPD, UnknownObj)    // (from opcode)
    External (_PR_.TRPF, UnknownObj)    // (from opcode)
    External (_SB_.GGOV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.GGPE, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.IETM, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.DOCK, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GFX0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.AINT, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.GFX0.ALSI, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.CBLV, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.CDCK, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.CLID, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.GSSE, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.IUER, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.ADBG, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CMB0.FAKB, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECMT, MutexObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.GEN1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.GEN2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.GEN3, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.GEN4, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MAP1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MAP1._WED, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MAP1.CA82, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MAP1.CAUS, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MAP1.WMAB, MethodObj)    // 3 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MAP1.WMBA, MethodObj)    // 3 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MAP1.WMBB, MethodObj)    // 3 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.SEN1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.SEN2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.SEN3, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.SEN4, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.SEN5, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.TESR, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.RP01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.HPEX, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PMSX, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP07, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XDCI, DeviceObj)    // (from opcode)
    External (_SB_.PWRB, DeviceObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.SLPB, DeviceObj)    // (from opcode)
    External (_SB_.UBTC, DeviceObj)    // (from opcode)
    External (_SB_.UBTC.CCI0, IntObj)    // (from opcode)
    External (_SB_.UBTC.CCI1, IntObj)    // (from opcode)
    External (_SB_.UBTC.CCI2, IntObj)    // (from opcode)
    External (_SB_.UBTC.CCI3, IntObj)    // (from opcode)
    External (_SB_.UBTC.CCI_, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGI0, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGI1, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGI2, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGI3, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGI4, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGI5, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGI6, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGI7, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGI8, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGI9, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGI_, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGIA, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGIB, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGIC, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGID, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGIE, IntObj)    // (from opcode)
    External (_SB_.UBTC.MGIF, IntObj)    // (from opcode)
    External (_TZ_.ETMD, IntObj)    // (from opcode)
    External (_TZ_.LTST, MethodObj)    // 0 Arguments (from opcode)
    External (_TZ_.TZ00, ThermalZoneObj)    // (from opcode)
    External (_TZ_.TZ01, ThermalZoneObj)    // (from opcode)
    External (ACTT, IntObj)    // (from opcode)
    External (ADBG, MethodObj)    // 1 Arguments (from opcode)
    External (AIRP, FieldUnitObj)    // (from opcode)
    External (AITS, FieldUnitObj)    // (from opcode)
    External (ALSD, DeviceObj)    // (from opcode)
    External (ALSE, UnknownObj)    // (from opcode)
    External (BDRV, FieldUnitObj)    // (from opcode)
    External (BID_, IntObj)    // (from opcode)
    External (BRTL, UnknownObj)    // (from opcode)
    External (BRTN, MethodObj)    // 1 Arguments (from opcode)
    External (CTDB, IntObj)    // (from opcode)
    External (CWLS, FieldUnitObj)    // (from opcode)
    External (DBGS, IntObj)    // (from opcode)
    External (DKSM, IntObj)    // (from opcode)
    External (DLMP, FieldUnitObj)    // (from opcode)
    External (DPTS, FieldUnitObj)    // (from opcode)
    External (DSEN, IntObj)    // (from opcode)
    External (DSTS, IntObj)    // (from opcode)
    External (DTS1, FieldUnitObj)    // (from opcode)
    External (DTS2, FieldUnitObj)    // (from opcode)
    External (DTSE, FieldUnitObj)    // (from opcode)
    External (ECAV, UnknownObj)    // (from opcode)
    External (ECDB, IntObj)    // (from opcode)
    External (ECLP, IntObj)    // (from opcode)
    External (ECMT, UnknownObj)    // Warning: Unknown object
    External (ECNO, IntObj)    // (from opcode)
    External (ECON, IntObj)    // (from opcode)
    External (ECRV, FieldUnitObj)    // (from opcode)
    External (ECUP, IntObj)    // (from opcode)
    External (EGFX, FieldUnitObj)    // (from opcode)
    External (EHLD, UnknownObj)    // (from opcode)
    External (FCEX, FieldUnitObj)    // (from opcode)
    External (FNKC, FieldUnitObj)    // (from opcode)
    External (FNMC, FieldUnitObj)    // (from opcode)
    External (FXOS, FieldUnitObj)    // (from opcode)
    External (GGPE, IntObj)    // Warning: Unknown object
    External (HEFE, IntObj)    // (from opcode)
    External (IGDS, UnknownObj)    // (from opcode)
    External (INTK, FieldUnitObj)    // (from opcode)
    External (ISMC, FieldUnitObj)    // (from opcode)
    External (IUBE, IntObj)    // (from opcode)
    External (IUCE, IntObj)    // (from opcode)
    External (IUDE, IntObj)    // (from opcode)
    External (LATS, FieldUnitObj)    // (from opcode)
    External (LGON, FieldUnitObj)    // (from opcode)
    External (LHIH, UnknownObj)    // (from opcode)
    External (LIDS, UnknownObj)    // (from opcode)
    External (LLOW, UnknownObj)    // (from opcode)
    External (NVME, FieldUnitObj)    // (from opcode)
    External (OBDM, FieldUnitObj)    // (from opcode)
    External (ODV0, IntObj)    // (from opcode)
    External (ODV1, IntObj)    // (from opcode)
    External (OSYS, IntObj)    // (from opcode)
    External (P2ME, FieldUnitObj)    // (from opcode)
    External (P2MK, FieldUnitObj)    // (from opcode)
    External (P8XH, MethodObj)    // 2 Arguments (from opcode)
    External (PB1E, IntObj)    // (from opcode)
    External (PCIL, FieldUnitObj)    // (from opcode)
    External (PFID, FieldUnitObj)    // (from opcode)
    External (PFLV, IntObj)    // (from opcode)
    External (PL4R, FieldUnitObj)    // (from opcode)
    External (PL4W, FieldUnitObj)    // (from opcode)
    External (PLMS, FieldUnitObj)    // (from opcode)
    External (PMB0, FieldUnitObj)    // (from opcode)
    External (PMGS, FieldUnitObj)    // (from opcode)
    External (PNOT, MethodObj)    // 0 Arguments (from opcode)
    External (PSVT, IntObj)    // (from opcode)
    External (PTPS, FieldUnitObj)    // (from opcode)
    External (PWRS, IntObj)    // (from opcode)
    External (RBEC, FieldUnitObj)    // (from opcode)
    External (RCVR, FieldUnitObj)    // (from opcode)
    External (RDMS, FieldUnitObj)    // (from opcode)
    External (RMTS, FieldUnitObj)    // (from opcode)
    External (RMTY, FieldUnitObj)    // (from opcode)
    External (RONS, FieldUnitObj)    // (from opcode)
    External (RS4W, FieldUnitObj)    // (from opcode)
    External (RTIP, UnknownObj)    // (from opcode)
    External (S5WU, FieldUnitObj)    // (from opcode)
    External (SBTP, FieldUnitObj)    // (from opcode)
    External (SECS, FieldUnitObj)    // (from opcode)
    External (SLID, FieldUnitObj)    // (from opcode)
    External (SMTF, FieldUnitObj)    // (from opcode)
    External (SSMP, IntObj)    // (from opcode)
    External (SWCM, FieldUnitObj)    // (from opcode)
    External (TBTM, FieldUnitObj)    // (from opcode)
    External (TCNT, IntObj)    // (from opcode)
    External (TLSP, FieldUnitObj)    // (from opcode)
    External (TRBA, FieldUnitObj)    // (from opcode)
    External (TRSZ, FieldUnitObj)    // (from opcode)
    External (TVFP, FieldUnitObj)    // (from opcode)
    External (UAMS, UnknownObj)    // (from opcode)
    External (UCEN, FieldUnitObj)    // (from opcode)
    External (UCHG, FieldUnitObj)    // (from opcode)
    External (UP1D, UnknownObj)    // (from opcode)
    External (USBL, FieldUnitObj)    // (from opcode)
    External (WIFC, IntObj)    // (from opcode)
    External (WOLE, FieldUnitObj)    // (from opcode)
    External (WOLS, FieldUnitObj)    // (from opcode)
    External (XBAP, FieldUnitObj)    // (from opcode)
    External (XMID, FieldUnitObj)    // (from opcode)

    Name (LGEC, Zero)
    Name (XSTY, Zero)
    Name (XNTD, Zero)
    Name (NTFF, Zero)
    Method (NTF0, 1, NotSerialized)
    {
        Notify (\_SB.PCI0.LPCB.H_EC.MAP1, Arg0)
        Notify (\XINI, Arg0)
    }

    Device (XINI)
    {
        Name (_HID, "LGEX0820")  // _HID: Hardware ID
        OperationRegion (XIN1, 0x8F, Zero, 0x04B0)
        Field (XIN1, AnyAcc, Lock, Preserve)
        {
            DMSG,   8, 
            Offset (0x10), 
            P80B,   8, 
            P81B,   8, 
            P82B,   8, 
            P83B,   8, 
            P84B,   8, 
            P85B,   8, 
            P86B,   8, 
            P87B,   8, 
            Offset (0x3E8), 
            PMSG,   1600
        }

        Field (XIN1, DWordAcc, Lock, Preserve)
        {
            Offset (0x10), 
            P80D,   32, 
            P84D,   32
        }

        Name (PLAV, Zero)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If (LEqual (Arg0, 0x8F))
            {
                If (LEqual (Arg1, One))
                {
                    Store (One, PLAV)
                }
                Else
                {
                    Store (Zero, PLAV)
                }
            }
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (PLMS)
            {
                Return (0x1F)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (WMAB, 3, Serialized)
        {
            Return (\_SB.PCI0.LPCB.H_EC.MAP1.WMAB (Arg0, Arg1, Arg2))
        }

        Method (WMBA, 3, NotSerialized)
        {
            Return (\_SB.PCI0.LPCB.H_EC.MAP1.WMBA (Arg0, Arg1, Arg2))
        }

        Method (WMBB, 3, NotSerialized)
        {
            Return (\_SB.PCI0.LPCB.H_EC.MAP1.WMBB (Arg0, Arg1, Arg2))
        }

        Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
        {
            Return (\_SB.PCI0.LPCB.H_EC.MAP1._WED (Arg0))
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LEqual (Arg0, ToUUID ("e9d5c705-0052-4646-aea3-ebdeca39001a")))
            {
                While (One)
                {
                    Store (ToInteger (Arg2), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        Return (Buffer (0x04)
                        {
                             0x01, 0x0F, 0x22, 0x2C                         
                        })
                    }

                    Break
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }

        Method (IREP, 0, Serialized)
        {
            If (And (XNTD, One))
            {
                ADBG ("IREP")
            }

            Return (0x08)
        }

        Method (OREP, 2, Serialized)
        {
            Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            While (One)
            {
                Store (ToInteger (Arg0), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    And (Arg1, 0xFF, Local0)
                    Store (Zero, Local1)
                    Store (\_SB.PCI0.LPCB.H_EC.ECRX (Local0), Local1)
                    Return (Local1)
                }
                ElseIf (LEqual (_T_0, One))
                {
                    And (Arg1, 0xFF, Local0)
                    And (ShiftRight (Arg1, 0x08), 0xFF, Local1)
                    \_SB.PCI0.LPCB.H_EC.ECWX (Local0, Local1)
                    Return (Zero)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    Store (ToInteger (Arg1), \XNTD)
                    Return (Zero)
                }
                ElseIf (LEqual (_T_0, 0x03))
                {
                    While (One)
                    {
                        Store (ToInteger (Arg1), _T_1)
                        If (LEqual (_T_1, Zero))
                        {
                            If (And (XNTD, One))
                            {
                                ADBG ("Goint To S0")
                            }

                            If (LEqual (\_SB.PCI0.LPCB.H_EC.KBBS, One))
                            {
                                Store (Zero, \_SB.PCI0.LPCB.H_EC.WSLP)
                            }
                        }
                        ElseIf (LEqual (_T_1, One))
                        {
                            If (And (XNTD, One))
                            {
                                ADBG ("Goint To Sx")
                            }
                        }
                        ElseIf (LEqual (_T_1, 0x08))
                        {
                            If (And (XNTD, One))
                            {
                                ADBG ("Goint To S3")
                            }

                            If (LEqual (\_SB.PCI0.LPCB.H_EC.KBBS, One))
                            {
                                Store (One, \_SB.PCI0.LPCB.H_EC.WSLP)
                            }

                            Store (0x08, \XSTY)
                        }
                        ElseIf (LEqual (_T_1, 0x10))
                        {
                            If (And (XNTD, One))
                            {
                                ADBG ("Goint To Hibernate")
                            }

                            If (LEqual (\_SB.PCI0.LPCB.H_EC.KBBS, One))
                            {
                                Store (One, \_SB.PCI0.LPCB.H_EC.WSLP)
                            }

                            Store (0x10, \XSTY)
                        }
                        ElseIf (LEqual (_T_1, 0x18))
                        {
                            If (And (XNTD, One))
                            {
                                ADBG ("Goint To Hibrid Sleep")
                            }

                            If (LEqual (\_SB.PCI0.LPCB.H_EC.KBBS, One))
                            {
                                Store (One, \_SB.PCI0.LPCB.H_EC.WSLP)
                            }

                            Store (0x18, \XSTY)
                        }
                        ElseIf (LEqual (_T_1, 0x20))
                        {
                            If (And (XNTD, One))
                            {
                                ADBG ("Goint To S5")
                            }

                            Store (0x20, \XSTY)
                        }
                        ElseIf (LEqual (_T_1, 0x30))
                        {
                            If (And (XNTD, One))
                            {
                                ADBG ("Goint To Hibrid Shutdown")
                            }

                            If (LEqual (\_SB.PCI0.LPCB.H_EC.KBBS, One))
                            {
                                Store (One, \_SB.PCI0.LPCB.H_EC.WSLP)
                            }

                            Store (0x30, \XSTY)
                        }
                        ElseIf (LEqual (_T_1, 0x0100))
                        {
                            ADBG ("Boot and Resume Completed...")
                        }
                        ElseIf (LEqual (_T_1, 0x0101))
                        {
                            ADBG ("Boot and Resume Completed...")
                        }
                        ElseIf (And (XNTD, One))
                        {
                            ADBG ("XNTI Callback")
                            ADBG (ToHexString (Arg1))
                        }

                        Break
                    }

                    Return (Zero)
                }
                ElseIf (LEqual (_T_0, 0x04))
                {
                    Store (ToInteger (Arg1), \NTFF)
                    Return (Zero)
                }
                ElseIf (LEqual (_T_0, 0x06))
                {
                    Store (ToInteger (Arg1), \WOLE)
                    Return (Zero)
                }
                ElseIf (LEqual (_T_0, 0x07))
                {
                    While (One)
                    {
                        Store (ToInteger (Arg1), _T_2)
                        If (LEqual (_T_2, Zero))
                        {
                            ADBG ("Enumerate Graphics")
                            Notify (\_SB.PCI0.GFX0, Zero)
                        }
                        Else
                        {
                        }

                        Break
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }

                Break
            }
        }
    }

    Scope (\)
    {
        Name (WFLG, 0xFF)
        Name (DLMS, Zero)
        Name (OWNE, Zero)
        Name (HINH, Zero)
        Name (SPPC, Zero)
        Name (RDLY, Zero)
        Name (ARQ0, Zero)
        Name (OSDP, Zero)
        Name (PIPP, Zero)
        Name (FRED, Zero)
        Name (TSRC, 0x55)
        Name (TSEL, Zero)
        Name (LXSV, 0x50)
        Name (FLUX, 0x012C)
        Name (LXIN, 0x012C)
        Name (LXOT, 0x0834)
        Name (LBUF, Buffer (0x1E) {})
        Name (ECOS, Zero)
        Method (G_DD, 2, NotSerialized)
        {
            CreateDWordField (Arg0, Arg1, Z001)
            Return (Z001)
        }

        Method (G_DW, 2, NotSerialized)
        {
            CreateWordField (Arg0, Arg1, Z003)
            Return (Z003)
        }

        Method (G_DB, 2, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, Z005)
            Return (Z005)
        }

        Method (S_DD, 3, NotSerialized)
        {
            CreateDWordField (Arg0, Arg1, Z001)
            Store (Arg2, Z001)
        }

        Method (S_DW, 3, NotSerialized)
        {
            CreateWordField (Arg0, Arg1, Z003)
            Store (Arg2, Z003)
        }

        Method (S_DB, 3, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, Z005)
            Store (Arg2, Z005)
        }

        Name (FCHE, Zero)
        Name (FPDC, Zero)
        Name (FPAC, Zero)
        Name (CBRT, Zero)
        Name (CSCT, Zero)
        Name (IFTM, Zero)
        Name (VIBC, Zero)
        Name (FFSD, Zero)
        Name (IFTA, Zero)
        Name (SEC, Zero)
        Name (MIN, Zero)
        Name (HOUR, Zero)
        Name (CIRM, Zero)
        Name (DATE, Zero)
        Name (MON, Zero)
        Name (YEAR, Zero)
        Name (CEN, Zero)
        Name (TVTM, Zero)
        Name (TV04, Zero)
        Name (TV07, Zero)
        Name (PLGE, Zero)
        Name (NAIO, Zero)
        Name (BSAT, Zero)
        Name (RECO, Zero)
        Name (BTW8, Zero)
        Name (XSAT, Zero)
        Name (NEXT, Zero)
        Name (CRNT, Zero)
        Name (WLE0, Zero)
        Name (WLE1, Zero)
        Name (BTPR, Zero)
        Name (DCBL, Buffer (0x0F) {})
        Name (ACBL, Buffer (0x0F) {})
        Method (CTBF, 1, Serialized)
        {
            If (LGreaterEqual (OSYS, 0x07D6))
            {
                ToBuffer (Arg0, Local0)
                Return (Local0)
            }
            Else
            {
                Store (Arg0, \LBUF)
                Return (\LBUF)
            }
        }

        Name (\CSST, Zero)
        Method (SBRT, 0, Serialized)
        {
            Store (\_SB.PCI0.LPCB.H_EC.LBRI, Local0)
            SPBE (PWRS, Local0, Zero)
        }

        Method (SBRR, 0, Serialized)
        {
            Store (\_SB.PCI0.LPCB.H_EC.LBRR, Local0)
        }

        Method (SBTN, 0, NotSerialized)
        {
            Store (\_SB.PCI0.LPCB.H_EC.LBRI, Local0)
        }

        Method (SPBR, 1, NotSerialized)
        {
            If (IGDS) {}
        }

        Method (S6KS, 1, NotSerialized)
        {
        }

        Method (SBCP, 1, NotSerialized)
        {
            Store (Arg0, Local0)
            If (Local0)
            {
                Divide (Local0, 0x0A, Local1, Local0)
                If (LGreaterEqual (Local0, 0x03))
                {
                    Subtract (Local0, 0x03, Local0)
                }
            }
        }

        Method (SPBE, 3, NotSerialized)
        {
            Store (Arg1, \CBRT)
            If (LNot (Arg2))
            {
                If (Arg0)
                {
                    Store (CTBF (ACBL), Local0)
                    And (ShiftRight (Arg1, 0x04), 0x0F, Local1)
                }
                Else
                {
                    Store (CTBF (DCBL), Local0)
                    And (Arg1, 0x0F, Local1)
                }

                Store (G_DB (Local0, Local1), Local1)
                If (Local1)
                {
                    Store (Local1, BRTL)
                    \_SB.PCI0.GFX0.AINT (One, BRTL)
                }
            }
        }

        Method (WPC0, 2, NotSerialized)
        {
            If (LEqual (Arg0, One))
            {
                Sleep (0xC8)
                Store (WLRD (), Local0)
                If (BTPR)
                {
                    Or (Local0, ShiftLeft (BTRD (), One), Local0)
                }

                Return (Local0)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                And (Arg1, 0x07, Local0)
                Store (Local0, \CWLS)
                And (Local0, One, Local1)
                WLON (Local1)
                And (ShiftRight (Local0, One), One, Local1)
                And (ShiftRight (Local1, One), One, Local0)
                If (BTPR)
                {
                    BTON (Local1)
                }

                Return (Zero)
            }

            Return (0x80000002)
        }

        Method (CDP0, 0, NotSerialized)
        {
            Store (Zero, Local0)
            If (LOr (WLE0, WLE1))
            {
                Or (Local0, One, Local0)
            }

            If (BTPR)
            {
                Or (Local0, 0x02, Local0)
            }

            Return (Local0)
        }

        Method (CDP1, 0, NotSerialized)
        {
            Return (Zero)
        }

        Method (GLUX, 0, NotSerialized)
        {
            If (LEqual (DLMS, 0x07))
            {
                Store (\_SB.PCI0.LPCB.H_EC.ALS, Local0)
            }
            ElseIf (LEqual (DLMS, 0x06))
            {
                Store (FLUX, Local0)
            }
            ElseIf (LEqual (DLMS, Zero))
            {
                Store (LXIN, Local0)
            }
            ElseIf (LEqual (DLMS, One))
            {
                Store (LXSV, Local0)
            }
            ElseIf (LEqual (DLMS, 0x04))
            {
                Store (LXOT, Local0)
            }
            Else
            {
                Store (LXIN, Local0)
            }

            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPCB.H_EC)
    {
        Method (NBST, 0, Serialized)
        {
            If (XBAP)
            {
                \_SB.PCI0.LPCB.H_EC.CMB0.XBST ()
                Notify (\_SB.PCI0.LPCB.H_EC.CMB0, 0x80)
            }
        }

        Method (NBIF, 0, Serialized)
        {
            If (XBAP)
            {
                If (LGreaterEqual (ECOS, 0x04))
                {
                    \_SB.PCI0.LPCB.H_EC.CMB0.XBIX ()
                }
                Else
                {
                    \_SB.PCI0.LPCB.H_EC.CMB0.XBIF ()
                }

                Notify (\_SB.PCI0.LPCB.H_EC.CMB0, 0x81)
            }
        }
    }

    Scope (\)
    {
        Method (WPWR, 1, Serialized)
        {
        }

        Method (WRST, 1, Serialized)
        {
        }

        Method (WLON, 1, Serialized)
        {
            \_SB.SGOV (0x0202000A, Arg0)
        }

        Method (WLRD, 0, Serialized)
        {
            Store (\_SB.GGOV (0x0202000A), Local0)
            Return (Local0)
        }

        Method (BTON, 1, Serialized)
        {
            \_SB.SGOV (0x0202000B, Arg0)
        }

        Method (BTRD, 0, Serialized)
        {
            Store (\_SB.GGOV (0x0202000B), Local0)
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPCB.H_EC)
    {
        Device (HBTN)
        {
            Name (_HID, "LGEX0815")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LAnd (AIRP, LGreaterEqual (OSYS, 0x07DC)))
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                Return (Zero)
            }

            Method (IREP, 0, NotSerialized)
            {
                Store ("IREP", Debug)
                Store (One, Local0)
                Return (Local0)
            }

            Method (OREP, 2, NotSerialized)
            {
                Store ("OREP", Debug)
                Return (Zero)
            }
        }
    }

    Name (EVKY, One)
    Name (EVBR, 0x0140)
    Name (EVWL, 0x0136)
    Name (EVFN, 0x013B)
    Name (EVDK, 0x0148)
    OperationRegion (WDTC, SystemIO, 0x1854, 0x04)
    Field (WDTC, ByteAcc, Lock, Preserve)
    {
            ,   14, 
        WDTE,   1
    }

    OperationRegion (PRT1, SystemIO, 0x72, 0x02)
    Field (PRT1, ByteAcc, Lock, Preserve)
    {
        P72H,   8, 
        P73H,   8
    }

    Scope (\_SB.PCI0.LPCB)
    {
        Scope (\_SB.PCI0.LPCB.H_EC)
        {
            Name (NDUP, Zero)
            Name (CDPP, Zero)
            Name (OCPV, Zero)
            Name (SLNV, Zero)
            Name (APPV, Zero)
            Name (MB16, Zero)
            OperationRegion (PRT1, SystemIO, 0x2E, 0x02)
            Field (PRT1, ByteAcc, Lock, Preserve)
            {
                P2EH,   8, 
                P2FH,   8
            }

            OperationRegion (ECF4, EmbeddedControl, Zero, 0xFF)
            Field (ECF4, ByteAcc, Lock, Preserve)
            {
                Offset (0x01), 
                VER,    24, 
                CMC,    8, 
                Offset (0x08), 
                AVER,   48, 
                Offset (0x0F), 
                CHNL,   8, 
                SMPR,   8, 
                SMST,   8, 
                SMAD,   8, 
                SMCM,   8, 
                SMD0,   256, 
                SMCT,   8, 
                SMAA,   8, 
                SAD0,   8, 
                SAD1,   8, 
                Offset (0x50), 
                TTS1,   8, 
                TTS2,   8, 
                TTS3,   8, 
                TTS4,   8, 
                TTS5,   8, 
                TTS6,   8, 
                TTS7,   8, 
                TTS8,   8, 
                TTS9,   8, 
                TTS0,   8, 
                Offset (0x60), 
                SPT,    4, 
                ACPI,   1, 
                IRST,   1, 
                ISCT,   1, 
                HRST,   1, 
                BDRV,   8, 
                MSWK,   1, 
                KBWK,   1, 
                LNW4,   1, 
                LNW3,   1, 
                RWK4,   1, 
                LIW3,   1, 
                LIW4,   1, 
                BLW3,   1, 
                LWB4,   1, 
                LWB3,   1, 
                Offset (0x64), 
                TPDP,   1, 
                TPDU,   1, 
                IKDP,   1, 
                IKDU,   1, 
                E6KY,   1, 
                FNXC,   1, 
                    ,   1, 
                RDMD,   1, 
                SPW,    3, 
                SLT4,   1, 
                DBCH,   1, 
                FCHE,   1, 
                DMBS,   1, 
                AUDI,   1, 
                    ,   4, 
                DAYM,   1, 
                VIBC,   2, 
                ISOL,   1, 
                PBNS,   1, 
                EFQE,   1, 
                    ,   2, 
                MUTE,   3, 
                VBRC,   1, 
                DLB1,   1, 
                DLB2,   1, 
                DTHM,   1, 
                DTM2,   1, 
                DGTM,   1, 
                DTS0,   1, 
                Offset (0x69), 
                OTYP,   8, 
                ITBT,   1, 
                Offset (0x6C), 
                WRI,    1, 
                WLAN,   1, 
                WLID,   1, 
                WIPS,   1, 
                WLBT,   1, 
                WPBN,   1, 
                WTMR,   1, 
                Offset (0x6D), 
                WDVB,   1, 
                WADB,   1, 
                WDME,   1, 
                Offset (0x6E), 
                LID,    1, 
                PRDU,   1, 
                BAYS,   1, 
                BAYB,   1, 
                UTPS,   1, 
                    ,   1, 
                DAYS,   1, 
                Offset (0x6F), 
                    ,   1, 
                PTPF,   1, 
                PTPT,   1, 
                Offset (0x70), 
                ANDR,   1, 
                DPTS,   1, 
                G3SE,   1, 
                LM89,   1, 
                EJCD,   1, 
                    ,   1, 
                VSTB,   1, 
                HBSP,   1, 
                Offset (0x72), 
                KBBR,   4, 
                WSLP,   1, 
                KBBM,   2, 
                KBBS,   1, 
                RRRR,   1, 
                MTAP,   1, 
                FNLK,   1, 
                Offset (0x74), 
                HKEY,   3, 
                    ,   1, 
                PLMT,   1, 
                    ,   1, 
                PBP,    1, 
                PBP2,   1, 
                Offset (0x76), 
                TVT0,   1, 
                TVT1,   1, 
                TVT2,   1, 
                TVT3,   1, 
                Offset (0x77), 
                Offset (0x7F), 
                MBSE,   8, 
                ACP,    1, 
                BAP1,   1, 
                BAP2,   1, 
                BAP3,   1, 
                LBAT,   2, 
                Offset (0x81), 
                BT,     2, 
                BPU,    1, 
                Offset (0x82), 
                BST,    3, 
                Offset (0x83), 
                BTY,    8, 
                BDCH,   8, 
                BDCL,   8, 
                BFCH,   8, 
                BFCL,   8, 
                BDVH,   8, 
                BDVL,   8, 
                BWCH,   8, 
                BWCL,   8, 
                BLCH,   8, 
                BLCL,   8, 
                BCG1,   16, 
                BCG2,   16, 
                BSNH,   8, 
                BSNL,   8, 
                BPRH,   8, 
                BPRL,   8, 
                BRCH,   8, 
                BRCL,   8, 
                BPVH,   8, 
                BPVL,   8, 
                BTP,    16, 
                CBT,    16, 
                BMFG,   72, 
                TSI,    4, 
                HYST,   4, 
                TSHT,   8, 
                TSLT,   8, 
                DPTF,   1, 
                    ,   3, 
                PPSL,   4, 
                PINV,   8, 
                PENV,   8, 
                PSTP,   8, 
                CFSH,   8, 
                CFSP,   8, 
                PENS,   8, 
                DEVT,   8, 
                Offset (0xB8), 
                MAXP,   8, 
                CURP,   8, 
                BMB1,   8, 
                BMB2,   8, 
                BCSP,   8, 
                MADT,   1, 
                FLON,   1, 
                BTST,   1, 
                NOST,   1, 
                VDON,   1, 
                EXTW,   1, 
                HDDP,   1, 
                NSON,   1, 
                USCC,   1, 
                    ,   1, 
                    ,   1, 
                Offset (0xBF), 
                CMDR,   8, 
                TME0,   1, 
                FANC,   1, 
                FANE,   1, 
                FTMD,   1, 
                FDBG,   1, 
                CAMA,   1, 
                FZMD,   2, 
                TSSR,   8, 
                FMOD,   8, 
                Offset (0xC5), 
                BTMR,   8, 
                Offset (0xC8), 
                TMP1,   8, 
                TMP2,   8, 
                RPM2,   8, 
                FRPM,   8, 
                GMOD,   8, 
                GTMP,   8, 
                TMOD,   8, 
                DFAN,   8, 
                FTMP,   8, 
                DGPT,   8, 
                TMDH,   8, 
                TMDL,   8, 
                TMAH,   8, 
                TMAL,   8, 
                TMIH,   8, 
                TMIL,   8, 
                CYCH,   8, 
                CYCL,   8, 
                CYH2,   8, 
                CYL2,   8, 
                LUX1,   8, 
                LUX2,   8, 
                Offset (0xE0), 
                LBRI,   8, 
                LBCR,   8, 
                PFD,    1, 
                LMD,    1, 
                BPP,    1, 
                BCEL,   1, 
                Offset (0xE3), 
                LFRV,   8, 
                FNKN,   8, 
                MTRQ,   8, 
                LBRR,   8, 
                FNST,   1, 
                Offset (0xE8), 
                FNTM,   8, 
                TBTV,   1, 
                TBTT,   1, 
                Offset (0xEB), 
                SLED,   3, 
                Offset (0xEC), 
                Offset (0xED), 
                LSSD,   4, 
                LSSA,   4, 
                INSO,   1, 
                SMDM,   1, 
                    ,   2, 
                TBLM,   1, 
                Offset (0xEF), 
                LCDS,   4, 
                GVEN,   4, 
                SMDE,   8, 
                Offset (0xF2), 
                DBTN,   8, 
                IKTY,   8, 
                LCDT,   8, 
                Offset (0xF6), 
                DBGC,   8
            }

            Field (ECF4, ByteAcc, Lock, Preserve)
            {
                Offset (0x14), 
                SDA0,   8, 
                SDA1,   8, 
                SDA2,   8, 
                SDA3,   8, 
                SDA4,   8, 
                SDA5,   8, 
                SDA6,   8, 
                SDA7,   8, 
                SDA8,   8, 
                SDA9,   8, 
                SD0A,   8, 
                SD0B,   8, 
                SD0C,   8, 
                SD0D,   8, 
                SD0E,   8, 
                SD0F,   8, 
                SD10,   8, 
                SD11,   8, 
                SD12,   8, 
                SD13,   8, 
                SD14,   8, 
                SD15,   8, 
                SD16,   8, 
                SD17,   8, 
                SD18,   8, 
                SD19,   8, 
                SD1A,   8, 
                SD1B,   8, 
                SD1C,   8, 
                SD1D,   8, 
                SD1E,   8, 
                SD1F,   8, 
                Offset (0x50), 
                UVER,   16, 
                RSV1,   16, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8, 
                Offset (0x6E), 
                LSTE,   1, 
                Offset (0x80), 
                RPWR,   1, 
                Offset (0x84), 
                BDC,    16, 
                BFC,    16, 
                BDV,    16, 
                BDWC,   16, 
                BDLC,   16, 
                Offset (0x92), 
                BSN,    16, 
                BPR,    16, 
                BRC,    16, 
                BPV,    16, 
                Offset (0xC0), 
                ECC0,   8, 
                Offset (0xC8), 
                TSR1,   8, 
                TSR2,   8, 
                Offset (0xD8), 
                CYC1,   16, 
                Offset (0xDC), 
                ALS,    16
            }

            OperationRegion (MBOO, SystemIO, 0x0680, 0x02)
            Field (MBOO, ByteAcc, NoLock, Preserve)
            {
                MIND,   8, 
                MDAT,   8
            }

            Method (MBRD, 1, Serialized)
            {
                Store (Add (Arg0, 0x10), MIND)
                Return (MDAT)
            }

            Method (MBWR, 2, Serialized)
            {
                Store (Add (Arg0, 0x10), MIND)
                Store (Arg1, MDAT)
                Return (Zero)
            }

            Method (ECRX, 1, Serialized)
            {
                Store (And (Arg0, 0xFF), Local0)
                OperationRegion (ECF5, EmbeddedControl, Local0, One)
                Field (ECF5, ByteAcc, Lock, Preserve)
                {
                    TEMP,   8
                }

                Store (TEMP, Local1)
                Return (Local1)
            }

            Method (ECWX, 2, Serialized)
            {
                Store (And (Arg0, 0xFF), Local0)
                OperationRegion (ECF5, EmbeddedControl, Local0, One)
                Field (ECF5, ByteAcc, Lock, Preserve)
                {
                    TEMP,   8
                }

                Store (And (Arg1, 0xFF), TEMP)
            }

            Method (ECRD, 1, Serialized)
            {
                If (LGEC)
                {
                    Store (DerefOf (Arg0), Local0)
                    Return (Local0)
                }
            }

            Method (ECWT, 2, Serialized)
            {
                If (LGEC)
                {
                    Store (Arg0, Arg1)
                }
            }

            Method (ECMD, 1, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (Arg0, _T_0)
                    If (LEqual (_T_0, 0x1A)) {}
                    ElseIf (LEqual (_T_0, 0x4A)) {}
                    ElseIf (LEqual (_T_0, 0xE0)) {}
                    Else
                    {
                        Return (Zero)
                    }

                    Break
                }

                Store (Acquire (ECMT, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    If (ECAV)
                    {
                        While (ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CMDR)))
                        {
                            Stall (0x14)
                        }

                        ECWT (Arg0, RefOf (\_SB.PCI0.LPCB.H_EC.CMDR))
                    }

                    Release (ECMT)
                    Return (Zero)
                }

                ADBG ("ECMD - end")
            }

            Method (ECNT, 1, Serialized)
            {
                Return (Zero)
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LAnd (LEqual (Arg0, 0x03), LEqual (Arg1, One)))
                {
                    Store (0x55, P2EH)
                    Store (0x1E, P2EH)
                    If (LEqual (P2FH, 0x02))
                    {
                        Store (One, MB16)
                    }

                    Store (0xAA, P2EH)
                    Store (One, LGEC)
                    Store (One, ECAV)
                    Store (\DSTS, \_SB.PCI0.GFX0.CDCK)
                    Store (One, LIDS)
                    Store (One, PWRS)
                    Store (0x03, \_SB.PCI0.GFX0.CLID)
                    Store (Zero, PLGE)
                    Store (One, MADT)
                    Store (Zero, DPTS)
                    Store (One, WLE0)
                    Store (One, BTPR)
                    Store (Zero, SPT)
                    Store (ECOS, \_SB.PCI0.LPCB.H_EC.OTYP)
                    If (LNotEqual (ACP, PWRS))
                    {
                        Store (ACP, PWRS)
                        PNOT ()
                    }

                    INSM ()
                    Store (Zero, DGPT)
                    Store (One, \_SB.PCI0.LPCB.H_EC.NDUP)
                    Store (0xC8, \_SB.PCI0.LPCB.H_EC.BTMR)
                }
            }

            Method (_GPE, 0, NotSerialized)  // _GPE: General Purpose Events
            {
                Store (GGPE (0x0201000F), Local0)
            }

            Method (_Q01, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, One)
                If (LGEC)
                {
                    Store (ACP, PWRS)
                    Notify (\_SB.ADP1, 0x80)
                    PNOT ()
                    If (LEqual (ECOS, One))
                    {
                        SBRT ()
                    }

                    If (LEqual (EGFX, One))
                    {
                        If (LEqual (ACP, One))
                        {
                            If (LEqual (DGPT, One))
                            {
                                If (LEqual (EGFX, One))
                                {
                                    Notify (\_SB.PCI0.RP01.PXSX, 0xD1)
                                }

                                Store (Zero, DGPT)
                            }
                        }
                    }
                }
            }

            Method (_Q02, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x02)
                If (LGEC)
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.DLB1)
                    NBST ()
                }
            }

            Method (_Q03, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x03)
                If (LGEC)
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.DLB1)
                    Store (One, \_SB.PCI0.LPCB.H_EC.DLB2)
                    NBST ()
                }
            }

            Method (_Q04, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x04)
                If (LGEC)
                {
                    NBIF ()
                    NBST ()
                }
            }

            Method (_Q05, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x05)
                If (LGEC)
                {
                    NBST ()
                }
            }

            Method (_Q06, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x06)
                If (LGEC)
                {
                    NBST ()
                }
            }

            Method (_Q08, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x08)
                If (LEqual (\CSST, Zero))
                {
                    ADBG ("_Q08 in S0")
                    Sleep (0x012C)
                    Notify (\_SB.PWRB, 0x80)
                }
                Else
                {
                    ADBG ("_Q08 in Sx")
                }
            }

            Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x20)
                If (LGEC)
                {
                    Store (Zero, Local0)
                    Store (\_TZ.LTST (), Local0)
                    Store (One, DTHM)
                    Notify (\_TZ.TZ00, 0x80)
                }
            }

            Method (_Q30, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (0x10000000, ^MAP1.CA82)
                \NTF0 (0x82)
            }

            Method (_Q7B, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (0x10000100, ^MAP1.CA82)
                \NTF0 (0x82)
            }

            Method (_Q7C, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (0x10000101, ^MAP1.CA82)
                \NTF0 (0x82)
            }

            Method (_Q34, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x34)
                If (LGEC)
                {
                    If (And (XNTD, One))
                    {
                        Store (MAXP, Local0)
                        Store (Local0, OCPV)
                        APPL ()
                        Store (Local0, CURP)
                    }
                    ElseIf (LEqual (\CSST, Zero))
                    {
                        Notify (\_SB.SLPB, 0x80)
                    }
                }
            }

            Method (_Q36, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x36)
                If (LAnd (LGreaterEqual (OSYS, 0x07DC), LEqual (AIRP, One)))
                {
                    If (CondRefOf (WPC0))
                    {
                        Store (WPC0 (One, Zero), Local0)
                        Store (One, Local1)
                        If (BTPR)
                        {
                            Or (Local1, 0x02, Local1)
                        }

                        And (Local0, Local1, Local0)
                        If (LNotEqual (Local0, Local1))
                        {
                            WPC0 (0x02, Local1)
                            Sleep (0x01F4)
                        }
                    }

                    Notify (^HBTN, 0x80)
                    Return (Zero)
                }

                If (INTK)
                {
                    Store (One, \_SB.PCI0.RP01.PMSX)
                    Store (One, \_SB.PCI0.RP01.HPEX)
                    If (CondRefOf (WPC0))
                    {
                        If (LOr (LNotEqual (And (OWNE, 0x07), Zero), LEqual (CDP0 (), One)))
                        {
                            Store (WPC0 (One, Zero), Local0)
                            If (LEqual (CDP0 (), One))
                            {
                                Store (0x03, Local1)
                            }
                            Else
                            {
                                P8XH (Zero, OWNE)
                                Store (And (OWNE, 0x07), Local1)
                            }

                            Store (And (Local0, Local1), Local3)
                            If (LEqual (Local3, Zero))
                            {
                                Store (Local1, Local2)
                            }
                            Else
                            {
                                Store (Zero, Local2)
                            }

                            Not (Local1, Local4)
                            And (Local0, Local4, Local0)
                            Or (Local0, Local2, Local0)
                            Store (WPC0 (0x02, Local0), Local0)
                        }
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.MAP1))
                    {
                        Store (EVWL, \_SB.PCI0.LPCB.H_EC.MAP1.CAUS)
                        \NTF0 (0x80)
                    }
                }
            }

            Method (_Q37, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x37)
            }

            Method (_Q80, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x80)
                Notify (\XINI, 0x10)
            }

            Method (_Q3B, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LGEC)
                {
                    Store (ACP, Local0)
                    If (Local0)
                    {
                        Store (ShiftRight (And (\_SB.PCI0.LPCB.H_EC.DFAN, 0x30), 0x04), Local1)
                    }
                    Else
                    {
                        Store (ShiftRight (And (\_SB.PCI0.LPCB.H_EC.DFAN, 0x03), Zero), Local1)
                    }

                    Store (Or (ShiftLeft (Local1, 0x04), Local1), \_SB.PCI0.LPCB.H_EC.DFAN)
                    SLMD (Local1)
                    If (LNotEqual (INTK, Zero))
                    {
                        Store (EVFN, \_SB.PCI0.LPCB.H_EC.MAP1.CAUS)
                        \NTF0 (0x80)
                    }
                }
            }

            Method (_Q3D, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x3D)
                If (LGEC)
                {
                    Store (E6KY, Local0)
                    S6KS (Local0)
                }
            }

            Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x40)
                SBRT ()
                Store (EVBR, ^MAP1.CAUS)
                \NTF0 (0x80)
            }

            Method (_Q42, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x42)
                If (SLID)
                {
                    Store (LID, LIDS)
                    Notify (\_SB.PCI0.LPCB.H_EC.LID0, 0x80)
                }
            }

            Method (_Q45, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x45)
            }

            Method (_Q47, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x47)
                If (LGEC)
                {
                    Store (BCSP, Local0)
                    SBCP (Local0)
                }
            }

            Method (_Q50, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x50)
                If (LGEC)
                {
                    If (And (XNTD, One))
                    {
                        Store (OCPV, Local0)
                        Increment (Local0)
                        If (LLessEqual (Local0, MAXP))
                        {
                            Store (Local0, OCPV)
                            APPL ()
                            Store (Local0, CURP)
                        }
                    }
                    ElseIf (And (XNTD, 0x04))
                    {
                        If (\_SB.PCI0.LPCB.H_EC.CMB0.FAKB)
                        {
                            Subtract (\_SB.PCI0.LPCB.H_EC.CMB0.FAKB, One, \_SB.PCI0.LPCB.H_EC.CMB0.FAKB)
                        }

                        NBST ()
                        Return (Zero)
                    }
                    ElseIf (And (OSDP, One))
                    {
                        BRTN (0x86)
                        Sleep (0x0A)
                        Store (0x09000087, ^MAP1.CA82)
                        \NTF0 (0x82)
                    }
                    Else
                    {
                        BRTN (0x86)
                    }
                }
            }

            Method (_Q51, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x51)
                If (And (XNTD, One))
                {
                    P8XH (Zero, 0x6A)
                    Store (OCPV, Local0)
                    If (LGreater (Local0, CDPP))
                    {
                        Decrement (Local0)
                        Store (Local0, OCPV)
                        APPL ()
                        Store (Local0, CURP)
                    }
                    Else
                    {
                        Store (Zero, Local0)
                        Store (Local0, OCPV)
                        APPL ()
                        Store (Local0, CURP)
                    }
                }
                ElseIf (And (XNTD, 0x04))
                {
                    If (LLess (\_SB.PCI0.LPCB.H_EC.CMB0.FAKB, 0x64))
                    {
                        Add (\_SB.PCI0.LPCB.H_EC.CMB0.FAKB, One, \_SB.PCI0.LPCB.H_EC.CMB0.FAKB)
                    }

                    NBST ()
                    Return (Zero)
                }
                ElseIf (And (OSDP, One))
                {
                    BRTN (0x87)
                    Sleep (0x0A)
                    Store (0x09000087, ^MAP1.CA82)
                    \NTF0 (0x82)
                }
                Else
                {
                    BRTN (0x87)
                }
            }

            Method (_Q52, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x52)
                If (XBAP)
                {
                    Store (0x0A000000, ^MAP1.CA82)
                    \NTF0 (0x82)
                }
            }

            Method (_Q53, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x53)
                If (XBAP)
                {
                    Store (0x0A000001, ^MAP1.CA82)
                    \NTF0 (0x82)
                }
            }

            Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x63)
                Store (0xFD, SSMP)
            }

            Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x64)
                If (LGEC)
                {
                    Or (0x0D000000, \_SB.PCI0.LPCB.H_EC.SLED, ^MAP1.CA82)
                    \NTF0 (0x82)
                }
            }

            Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (ALS, Local0)
                Store (And (ShiftRight (Local0, 0x08), 0xFF), LHIH)
                Store (And (Local0, 0xFF), LLOW)
                If (LAnd (LEqual (ALSE, 0x02), IGDS))
                {
                    \_SB.PCI0.GFX0.AINT (Zero, Local0)
                    Notify (\_SB.PCI0.LPCB.H_EC.ALSD, 0x80)
                }
            }

            Method (_Q69, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x69)
                Store (OCPV, Local0)
                Increment (Local0)
                If (LLessEqual (Local0, MAXP))
                {
                    Store (Local0, OCPV)
                    APPL ()
                    Store (Local0, CURP)
                }
            }

            Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x6A)
                Store (OCPV, Local0)
                If (LGreater (Local0, CDPP))
                {
                    Decrement (Local0)
                    Store (Local0, OCPV)
                    APPL ()
                    Store (Local0, CURP)
                }
                Else
                {
                    Store (Zero, Local0)
                    Store (Local0, OCPV)
                    APPL ()
                    Store (Local0, CURP)
                }
            }

            Method (_Q6B, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x6B)
                Store (MAXP, Local0)
                Store (Local0, OCPV)
                APPL ()
                Store (Local0, CURP)
            }

            Method (_Q6C, 0, NotSerialized)  // _Qxx: EC Query
            {
                ADBG ("_Q6C start")
                Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSSR)), Local0)
                ADBG (Concatenate ("_SB.PCI0.LPCB.H_EC.TSSR:", ToHexString (Local0)))
                While (Local0)
                {
                    \_SB.PCI0.LPCB.H_EC.ECWT (Zero, RefOf (\_SB.PCI0.LPCB.H_EC.TSSR))
                    If (And (Local0, One, Local1))
                    {
                        Notify (\_SB.PCI0.LPCB.H_EC.SEN1, 0x90)
                    }

                    If (And (Local0, 0x02, Local1))
                    {
                        Notify (\_SB.PCI0.LPCB.H_EC.SEN2, 0x90)
                    }

                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSSR)), Local0)
                }

                ADBG ("_Q6C - end")
            }

            Method (_Q6F, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x6F)
                If (LEqual (DGPT, Zero))
                {
                    If (LEqual (EGFX, One))
                    {
                        If (LEqual (\EGFX, One))
                        {
                            Notify (\_SB.PCI0.RP01.PXSX, 0xD2)
                        }
                    }

                    Store (One, DGPT)
                }
                Else
                {
                    If (LEqual (EGFX, One))
                    {
                        If (LEqual (\EGFX, One))
                        {
                            Notify (\_SB.PCI0.RP01.PXSX, 0xD1)
                        }
                    }

                    Store (Zero, DGPT)
                }
            }

            Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x72)
                If (LGEC)
                {
                    Store (0x0F020000, ^MAP1.CA82)
                    \NTF0 (0x82)
                }
            }

            Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8XH (Zero, 0x73)
                If (LEqual (Or (\_SB.PCI0.LPCB.H_EC.PBP, \_SB.PCI0.LPCB.H_EC.PBP2), One))
                {
                    If (LEqual (And (\_SB.PCI0.LPCB.H_EC.PBP2, One), One))
                    {
                        Or (0x0E00000A, \_SB.PCI0.LPCB.H_EC.NOST, ^MAP1.CA82)
                    }
                    Else
                    {
                        Or (0x0E000002, \_SB.PCI0.LPCB.H_EC.NOST, ^MAP1.CA82)
                    }
                }
                Else
                {
                    Or (0x0E000000, \_SB.PCI0.LPCB.H_EC.NOST, ^MAP1.CA82)
                }

                \NTF0 (0x82)
            }

            Method (_Q82, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (0x1000EC82, ^MAP1.CA82)
                \NTF0 (0x82)
            }

            Method (_Q83, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (0x1000EC83, ^MAP1.CA82)
                \NTF0 (0x82)
                ECWX (0xDA, Or (ECRX (0xDA), 0x20))
            }

            Method (_Q84, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (0x1000EC84, ^MAP1.CA82)
                \NTF0 (0x82)
                ECWX (0xDA, Or (ECRX (0xDA), 0x80))
            }

            Method (_Q85, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (0x1000EC85, ^MAP1.CA82)
                \NTF0 (0x82)
                ECWX (0xDA, Or (ECRX (0xDA), 0x08))
            }

            Method (UCEV, 0, Serialized)
            {
                Store (MBRD (Zero), \_SB.UBTC.MGI0)
                Store (MBRD (One), \_SB.UBTC.MGI1)
                Store (MBRD (0x02), \_SB.UBTC.MGI2)
                Store (MBRD (0x03), \_SB.UBTC.MGI3)
                Store (MBRD (0x04), \_SB.UBTC.MGI4)
                Store (MBRD (0x05), \_SB.UBTC.MGI5)
                Store (MBRD (0x06), \_SB.UBTC.MGI6)
                Store (MBRD (0x07), \_SB.UBTC.MGI7)
                Store (MBRD (0x08), \_SB.UBTC.MGI8)
                Store (MBRD (0x09), \_SB.UBTC.MGI9)
                Store (MBRD (0x0A), \_SB.UBTC.MGIA)
                Store (MBRD (0x0B), \_SB.UBTC.MGIB)
                Store (MBRD (0x0C), \_SB.UBTC.MGIC)
                Store (MBRD (0x0D), \_SB.UBTC.MGID)
                Store (MBRD (0x0E), \_SB.UBTC.MGIE)
                Store (MBRD (0x0F), \_SB.UBTC.MGIF)
                Store (CCI0, \_SB.UBTC.CCI0)
                Store (CCI1, \_SB.UBTC.CCI1)
                Store (CCI2, \_SB.UBTC.CCI2)
                Store (CCI3, \_SB.UBTC.CCI3)
                ADBG ("UCSI:UCEV")
                ADBG (Concatenate ("UCSI:PPM->OPM(CCI) :", ToHexString (\_SB.UBTC.CCI)))
                ADBG (Concatenate ("UCSI:PPM->OPM(MGI) :", ToHexString (\_SB.UBTC.MGI)))
                Notify (\_SB.UBTC, 0x80)
            }

            Method (_Q79, 0, NotSerialized)  // _Qxx: EC Query
            {
                UCEV ()
            }

            Method (_Q7A, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (0x10000001, ^MAP1.CA82)
                \NTF0 (0x82)
            }

            Method (_Q90, 0, NotSerialized)  // _Qxx: EC Query
            {
                ADBG ("_Q90")
                Notify (\XINI, 0x20)
            }

            Device (SIO)
            {
                Name (_HID, EisaId ("PNP0A05"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (\INTK, Zero))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                OperationRegion (SMSC, SystemIO, 0x2E, 0x02)
                Field (SMSC, ByteAcc, NoLock, Preserve)
                {
                    INDX,   8, 
                    DATA,   8
                }

                IndexField (INDX, DATA, ByteAcc, Lock, Preserve)
                {
                    Offset (0x07), 
                    CR07,   8, 
                    Offset (0x30), 
                    CR30,   8, 
                    Offset (0x60), 
                    CR60,   8, 
                    CR61,   8, 
                    Offset (0x70), 
                    CR70,   8
                }

                Method (ENTR, 0, NotSerialized)
                {
                    Store (0x55, INDX)
                }

                Method (EXIT, 0, NotSerialized)
                {
                    Store (0xAA, INDX)
                }

                Mutex (S350, 0x00)
                Method (READ, 3, NotSerialized)
                {
                    Acquire (S350, 0xFFFF)
                    ENTR ()
                    Store (0x07, INDX)
                    Store (Arg0, DATA)
                    Store (Arg1, INDX)
                    Store (DATA, Local0)
                    And (Local0, Arg2, Local1)
                    EXIT ()
                    Release (S350)
                    Return (Local1)
                }

                Method (WRIT, 4, NotSerialized)
                {
                    Acquire (S350, 0xFFFF)
                    ENTR ()
                    Store (0x07, INDX)
                    Store (Arg0, DATA)
                    Store (Arg1, INDX)
                    Store (DATA, Local0)
                    And (Local0, Not (Arg2), Local1)
                    Or (Local1, Arg3, Local2)
                    Store (Local2, DATA)
                    EXIT ()
                    Release (S350)
                }

                Device (COMA)
                {
                    Name (_HID, EisaId ("PNP0501"))  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LGreaterEqual (OSYS, 0x07DC))
                        {
                            ENTR ()
                            Store (0x0D, Local0)
                            Store (0x04, CR07)
                            If (LAnd (CR30, One))
                            {
                                Store (0x0F, Local0)
                            }

                            EXIT ()
                            Return (Local0)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        ENTR ()
                        Store (0x04, CR07)
                        Store (Zero, CR30)
                        EXIT ()
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                _Y3A)
                            IRQNoFlags (_Y3B)
                                {4}
                        })
                        CreateByteField (BUF0, \_SB.PCI0.LPCB.H_EC.SIO.COMA._CRS._Y3A._MIN, IOL0)  // _MIN: Minimum Base Address
                        CreateByteField (BUF0, 0x03, IOH0)
                        CreateByteField (BUF0, \_SB.PCI0.LPCB.H_EC.SIO.COMA._CRS._Y3A._MAX, IOL1)  // _MAX: Maximum Base Address
                        CreateByteField (BUF0, 0x05, IOH1)
                        CreateByteField (BUF0, \_SB.PCI0.LPCB.H_EC.SIO.COMA._CRS._Y3A._LEN, LEN0)  // _LEN: Length
                        CreateWordField (BUF0, \_SB.PCI0.LPCB.H_EC.SIO.COMA._CRS._Y3B._INT, IRQW)  // _INT: Interrupts
                        ENTR ()
                        Store (0x04, CR07)
                        Store (CR60, IOH0)
                        Store (CR61, IOL0)
                        Store (IOL0, IOL1)
                        Store (IOH0, IOH1)
                        Store (0x08, LEN0)
                        ShiftLeft (One, CR70, IRQW)
                        EXIT ()
                        Return (BUF0)
                    }

                    Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        })
                        Return (BUF0)
                    }

                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateByteField (Arg0, 0x02, IOLO)
                        CreateByteField (Arg0, 0x03, IOHI)
                        CreateWordField (Arg0, 0x09, IRQW)
                        ENTR ()
                        Store (0x04, CR07)
                        Store (Zero, CR30)
                        Store (IOLO, CR61)
                        Store (IOHI, CR60)
                        Store (Subtract (FindSetRightBit (IRQW), One), CR70)
                        Store (One, CR30)
                        EXIT ()
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                    }

                    Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                    {
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                    }
                }
            }

            Method (APPL, 0, Serialized)
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (SLNV)
                {
                    While (One)
                    {
                        Store (OCPV, _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            Store (0x08, Local0)
                        }
                        ElseIf (LEqual (_T_0, One))
                        {
                            Store (0x08, Local0)
                        }
                        ElseIf (LEqual (_T_0, 0x02))
                        {
                            Store (0x08, Local0)
                        }
                        ElseIf (LEqual (_T_0, 0x03))
                        {
                            Store (0x06, Local0)
                        }
                        ElseIf (LEqual (_T_0, 0x04))
                        {
                            Store (0x05, Local0)
                        }
                        ElseIf (LEqual (_T_0, 0x05))
                        {
                            Store (0x03, Local0)
                        }
                        Else
                        {
                            Store (0x03, Local0)
                        }

                        Break
                    }
                }
                Else
                {
                    While (One)
                    {
                        Store (OCPV, _T_1)
                        If (LEqual (_T_1, Zero))
                        {
                            Store (0x0F, Local0)
                        }
                        ElseIf (LEqual (_T_1, One))
                        {
                            Store (0x0A, Local0)
                        }
                        ElseIf (LEqual (_T_1, 0x02))
                        {
                            Store (0x08, Local0)
                        }
                        ElseIf (LEqual (_T_1, 0x03))
                        {
                            Store (0x06, Local0)
                        }
                        ElseIf (LEqual (_T_1, 0x04))
                        {
                            Store (0x05, Local0)
                        }
                        ElseIf (LEqual (_T_1, 0x05))
                        {
                            Store (0x03, Local0)
                        }
                        Else
                        {
                            Store (0x03, Local0)
                        }

                        Break
                    }
                }

                Store (Local0, \ODV0)
                If (APPV)
                {
                    Store (Subtract (0x0F, APPV), Local1)
                    If (LLess (Local1, Local0))
                    {
                        Store (Local1, \ODV0)
                    }
                }

                Notify (\_SB.IETM, 0x88)
            }

            Method (SLMD, 1, NotSerialized)
            {
                Store (Or (ShiftLeft (Arg0, 0x04), Arg0), \_SB.PCI0.LPCB.H_EC.DFAN)
                Store (And (Arg0, One), SLNV)
                APPL ()
            }

            Method (INSM, 0, NotSerialized)
            {
                SLMD (Zero)
            }

            Method (SPPC, 1, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (TCNT), _T_0)
                    If (LEqual (_T_0, 0x08))
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                        Notify (\_PR.CPU2, 0x80)
                        Notify (\_PR.CPU3, 0x80)
                        Notify (\_PR.CPU4, 0x80)
                        Notify (\_PR.CPU5, 0x80)
                        Notify (\_PR.CPU6, 0x80)
                        Notify (\_PR.CPU7, 0x80)
                    }
                    ElseIf (LEqual (_T_0, 0x04))
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                        Notify (\_PR.CPU2, 0x80)
                        Notify (\_PR.CPU3, 0x80)
                    }
                    ElseIf (LEqual (_T_0, 0x02))
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                    }
                    Else
                    {
                        Notify (\_PR.CPU0, 0x80)
                    }

                    Break
                }
            }

            Device (ALSD)
            {
                Name (_HID, "ACPI0008")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (ALSE, 0x02))
                    {
                        Return (0x0B)
                    }

                    Return (Zero)
                }

                Method (_ALI, 0, NotSerialized)  // _ALI: Ambient Light Illuminance
                {
                    Store (GLUX (), Local0)
                    Return (Local0)
                }

                Name (_ALR, Package (0x05)  // _ALR: Ambient Light Response
                {
                    Package (0x02)
                    {
                        0x46, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x49, 
                        0x0A
                    }, 

                    Package (0x02)
                    {
                        0x55, 
                        0x50
                    }, 

                    Package (0x02)
                    {
                        0x64, 
                        0x012C
                    }, 

                    Package (0x02)
                    {
                        0x96, 
                        0x03E8
                    }
                })
            }

            Device (LID0)
            {
                Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (\PFID, 0x05))
                    {
                        Return (Zero)
                    }

                    If (SLID)
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                {
                    Return (LID)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x18, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (LGEC)
                    {
                        If (Arg0)
                        {
                            Store (One, \_SB.PCI0.LPCB.H_EC.LIW3)
                        }
                        Else
                        {
                            Store (Zero, \_SB.PCI0.LPCB.H_EC.LIW3)
                        }
                    }
                }
            }

            Device (CMB0)
            {
                Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Name (BATS, Ones)
                Name (CRIT, Zero)
                Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                {
                    \_SB
                })
                Name (BLFC, Zero)
                Mutex (BATM, 0x01)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (\PFID, 0x05))
                    {
                        Return (Zero)
                    }

                    If (LGEC)
                    {
                        Acquire (BATM, 0xFFFF)
                        Store (\_SB.PCI0.LPCB.H_EC.BAP1, BATS)
                        Release (BATM)
                    }

                    If (LEqual (BATS, Zero))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (0x1F)
                    }
                }

                Name (PBIF, Package (0x0D)
                {
                    Zero, 
                    Ones, 
                    Ones, 
                    One, 
                    Ones, 
                    Zero, 
                    Zero, 
                    0x64, 
                    0x4B, 
                    "", 
                    "", 
                    "LION", 
                    " LG "
                })
                Method (XBIF, 0, NotSerialized)
                {
                    If (MB16)
                    {
                        Store (BDC, Local0)
                    }
                    Else
                    {
                        Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.BDCH, 0x08), \_SB.PCI0.LPCB.H_EC.BDCL, Local0)
                    }

                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (0xFFFFFFFF, Index (PBIF, One))
                    }
                    Else
                    {
                        Store (Multiply (Local0, 0x0A), Index (PBIF, One))
                    }

                    If (MB16)
                    {
                        Store (BFC, Local0)
                    }
                    Else
                    {
                        Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.BFCH, 0x08), \_SB.PCI0.LPCB.H_EC.BFCL, Local0)
                    }

                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (0xFFFFFFFF, BLFC)
                        Store (0xFFFFFFFF, Index (PBIF, 0x02))
                    }
                    Else
                    {
                        Store (Local0, BLFC)
                        Store (Multiply (Local0, 0x0A), Index (PBIF, 0x02))
                    }

                    If (MB16)
                    {
                        Store (BDV, Local0)
                    }
                    Else
                    {
                        Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.BDVH, 0x08), \_SB.PCI0.LPCB.H_EC.BDVL, Local0)
                    }

                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (0xFFFFFFFF, Local0)
                    }

                    Store (Local0, Index (PBIF, 0x04))
                    Store (Divide (DerefOf (Index (PBIF, One)), 0xC8, ), Index (PBIF, 0x05))
                    Store (Divide (DerefOf (Index (PBIF, One)), 0x0190, ), Index (PBIF, 0x06))
                    If (LEqual (DerefOf (Index (PBIF, 0x09)), ""))
                    {
                        Store (ToString (BMFG, Ones), Index (PBIF, 0x09))
                    }

                    Acquire (BATM, 0xFFFF)
                    If (MB16)
                    {
                        Store (BSN, Local0)
                    }
                    Else
                    {
                        Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.BSNH, 0x08), \_SB.PCI0.LPCB.H_EC.BSNL, Local0)
                    }

                    Release (BATM)
                    Concatenate (ToDecimalString (Local0), "", Index (PBIF, 0x0A))
                    Return (PBIF)
                }

                Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                {
                    XBIF ()
                    Return (PBIF)
                }

                Name (PBIX, Package (0x14)
                {
                    Zero, 
                    Zero, 
                    Ones, 
                    Ones, 
                    One, 
                    Ones, 
                    Zero, 
                    Zero, 
                    Ones, 
                    0x000182B8, 
                    0x0002BF20, 
                    0x3E80, 
                    0xEA60, 
                    0xEA60, 
                    0x4B, 
                    0x4B, 
                    "", 
                    "", 
                    "LION", 
                    " LG "
                })
                Method (XBIX, 0, NotSerialized)
                {
                    XBIF ()
                    Store (DerefOf (Index (PBIF, Zero)), Index (PBIX, One))
                    Store (DerefOf (Index (PBIF, One)), Index (PBIX, 0x02))
                    Store (DerefOf (Index (PBIF, 0x02)), Index (PBIX, 0x03))
                    Store (DerefOf (Index (PBIF, 0x03)), Index (PBIX, 0x04))
                    Store (DerefOf (Index (PBIF, 0x04)), Index (PBIX, 0x05))
                    Store (DerefOf (Index (PBIF, 0x05)), Index (PBIX, 0x06))
                    Store (DerefOf (Index (PBIF, 0x06)), Index (PBIX, 0x07))
                    If (MB16)
                    {
                        Store (CYC1, Local0)
                    }
                    Else
                    {
                        Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.CYCH, 0x08), \_SB.PCI0.LPCB.H_EC.CYCL, Local0)
                    }

                    Store (Local0, Index (PBIX, 0x08))
                    Store (DerefOf (Index (PBIF, 0x05)), Index (PBIX, 0x0E))
                    Store (DerefOf (Index (PBIF, 0x06)), Index (PBIX, 0x0F))
                    Store (DerefOf (Index (PBIF, 0x09)), Index (PBIX, 0x10))
                    Store (DerefOf (Index (PBIF, 0x0A)), Index (PBIX, 0x11))
                    Return (PBIX)
                }

                Name (FAKB, Zero)
                Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
                {
                    XBIX ()
                    Return (PBIX)
                }

                Name (BUFF, Package (0x04)
                {
                    Zero, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Method (XBST, 0, NotSerialized)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.BST, Index (BUFF, Zero))
                    If (MB16)
                    {
                        Store (BPR, Local0)
                    }
                    Else
                    {
                        Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.BPRH, 0x08), \_SB.PCI0.LPCB.H_EC.BPRL, Local0)
                    }

                    If (LEqual (Local0, 0x7FFF))
                    {
                        Store (0xFFFFFFFF, Local0)
                        Store (Local0, Index (BUFF, One))
                    }
                    Else
                    {
                        Store (Local0, Local1)
                        If (And (Local0, 0x8000))
                        {
                            Store (Subtract (0x00010000, Local1), Local2)
                        }
                        Else
                        {
                            Store (Local1, Local2)
                        }

                        If (MB16)
                        {
                            Store (BPV, Local3)
                        }
                        Else
                        {
                            Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.BPVH, 0x08), \_SB.PCI0.LPCB.H_EC.BPVL, Local3)
                        }

                        Divide (Multiply (Local2, Local3), 0x03E8, Local4, Local0)
                        Store (Local0, Index (BUFF, One))
                    }

                    Acquire (BATM, 0xFFFF)
                    If (MB16)
                    {
                        Store (BRC, Local0)
                    }
                    Else
                    {
                        Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.BRCH, 0x08), \_SB.PCI0.LPCB.H_EC.BRCL, Local0)
                    }

                    Release (BATM)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (0xFFFFFFFF, Local0)
                    }

                    Acquire (BATM, 0xFFFF)
                    If (MB16)
                    {
                        Store (BFC, Local1)
                    }
                    Else
                    {
                        Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.BFCH, 0x08), \_SB.PCI0.LPCB.H_EC.BFCL, Local1)
                    }

                    Release (BATM)
                    If (LEqual (Local1, 0xFFFF))
                    {
                        Store (0xFFFFFFFF, Local1)
                    }

                    Store (BLFC, Local2)
                    Divide (Multiply (Local0, Local2), Local1, Local4, Local3)
                    If (LGreaterEqual (ShiftLeft (Local4, One), Local1))
                    {
                        Add (Local3, One, Local3)
                    }

                    Store (Local3, Local0)
                    If (LGreater (Local0, BLFC))
                    {
                        Store (Multiply (BLFC, 0x0A), Index (BUFF, 0x02))
                    }
                    Else
                    {
                        Store (Multiply (Local0, 0x0A), Index (BUFF, 0x02))
                    }

                    If (FAKB)
                    {
                        Store (DerefOf (Index (BUFF, 0x02)), Local0)
                        Subtract (Local0, Multiply (FAKB, 0x01F4), Local0)
                        Store (Local0, Index (BUFF, 0x02))
                    }

                    Acquire (BATM, 0xFFFF)
                    If (MB16)
                    {
                        Store (BPV, Local0)
                    }
                    Else
                    {
                        Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.BPVH, 0x08), \_SB.PCI0.LPCB.H_EC.BPVL, Local0)
                    }

                    Release (BATM)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (0xFFFFFFFF, Local0)
                    }

                    Store (Local0, Index (BUFF, 0x03))
                    Store (DerefOf (Index (BUFF, 0x02)), Local0)
                    Store (DerefOf (Index (PBIF, 0x02)), Local1)
                    Store (Concatenate ("BRC =", ToHexString (Local0)), Debug)
                    Store (Concatenate ("BFC =", ToHexString (Local1)), Debug)
                    Divide (Multiply (Local0, 0x64), Local1, Local3, Local4)
                    Store (Concatenate ("Result  =", ToHexString (Local4)), Debug)
                    If (LGreaterEqual (ShiftLeft (Local3, One), Local1))
                    {
                        Add (Local4, One, Local4)
                    }

                    Store (Concatenate ("Result(R)  =", ToHexString (Local4)), Debug)
                    Store (Concatenate ("Reminder =", ToHexString (Local3)), Debug)
                    Store (Concatenate ("PL4R =", ToHexString (PL4R)), Debug)
                    If (LLess (Local4, 0x0F))
                    {
                        If (LNotEqual (PL4R, 0x0110))
                        {
                            Store (0x0110, PL4W)
                            Store (0xFC, SSMP)
                        }
                    }
                    ElseIf (LNotEqual (PL4R, 0x0160))
                    {
                        Store (0x0160, PL4W)
                        Store (0xFC, SSMP)
                    }

                    Return (BUFF)
                }

                Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                {
                    XBST ()
                    Return (BUFF)
                }
            }
        }

        OperationRegion (PKBS, SystemIO, 0x60, 0x05)
        Field (PKBS, ByteAcc, Lock, Preserve)
        {
            PKBD,   8, 
            Offset (0x02), 
            Offset (0x03), 
            Offset (0x04), 
            PKBC,   8
        }

        Device (PS2K)
        {
            Name (_HID, "LGEX0001")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0303"))  // _CID: Compatible ID
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x28, 
                0x03
            })
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (LNotEqual (LGEC, Zero))
                {
                    Store (Arg0, Local0)
                    If (Local0)
                    {
                        \_SB.PCI0.LPCB.H_EC.ECWT (One, RefOf (\_SB.PCI0.LPCB.H_EC.KBWK))
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.ECWT (Zero, RefOf (\_SB.PCI0.LPCB.H_EC.KBWK))
                    }
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (P2MK)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0060,             // Range Minimum
                    0x0060,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0064,             // Range Minimum
                    0x0064,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {1}
            })
            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                StartDependentFn (0x00, 0x00)
                {
                    FixedIO (
                        0x0060,             // Address
                        0x01,               // Length
                        )
                    FixedIO (
                        0x0064,             // Address
                        0x01,               // Length
                        )
                    IRQNoFlags ()
                        {1}
                }
                EndDependentFn ()
            })
        }

        Device (PS2M)
        {
            Name (_HID, "ETD0E05")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0F13"))  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (P2ME)
                {
                    If (P2MK)
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {12}
            })
            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                StartDependentFn (0x00, 0x00)
                {
                    IRQNoFlags ()
                        {12}
                }
                EndDependentFn ()
            })
        }
    }

    Scope (\_SB)
    {
        Device (ADP1)
        {
            Name (_HID, "ACPI0003")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (\PFID, 0x05))
                {
                    Return (Zero)
                }

                If (LEqual (ECON, One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                Return (PWRS)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (Package (0x01)
                {
                    _SB
                })
            }
        }
    }

    Method (XPTS, 1, NotSerialized)
    {
        Store (Arg0, \CSST)
        XPCL (Arg0)
        If (LEqual (LGEC, Zero))
        {
            Return (Zero)
        }

        If (LLessEqual (Arg0, 0x03))
        {
            Store (Arg0, \_SB.PCI0.LPCB.H_EC.SPT)
            If (LNotEqual (WOLE, Zero))
            {
                Store (One, \_SB.PCI0.LPCB.H_EC.LWB3)
                Store (One, \_SB.PCI0.LPCB.H_EC.LNW3)
            }
        }

        If (LGreaterEqual (Arg0, 0x04))
        {
            If (LAnd (LGreaterEqual (OSYS, 0x07DC), LEqual (RMTS, One)))
            {
                If (LEqual (\SMTF, One))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.LIW4)
                }
            }

            If (LEqual (XSTY, 0x10))
            {
                If (LNotEqual (WOLE, Zero))
                {
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.G3SE)
                    Store (One, \_SB.PCI0.LPCB.H_EC.LWB4)
                    Store (One, \_SB.PCI0.LPCB.H_EC.LNW4)
                }
                ElseIf (LAnd (LEqual (And (\_SB.PCI0.LPCB.H_EC.TBTV, One), One), LEqual (And (\_SB.PCI0.LPCB.H_EC.TBTT, One), One)))
                {
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.G3SE)
                }
            }
        }

        If (SLID)
        {
            Store (One, \_SB.PCI0.LPCB.H_EC.LIW3)
        }
        Else
        {
            Store (Zero, \_SB.PCI0.LPCB.H_EC.LIW3)
        }

        Return (Zero)
    }

    Method (XPCL, 1, NotSerialized)
    {
        If (LEqual (LGEC, Zero))
        {
            Return (Zero)
        }

        Store (0x27, P72H)
        Store (P73H, Local2)
        If (And (Local2, One))
        {
            Store (0x40, Local0)
            Store (0x10, Local4)
        }
        Else
        {
            Store (0x48, Local0)
            Store (0x18, Local4)
        }

        Store (Zero, Local2)
        While (LLess (Local2, 0x06))
        {
            Subtract (0x05, Local2, Local3)
            Add (Local3, Local0, Local3)
            Store (Local3, P72H)
            Store (P73H, Local1)
            Add (Local3, 0x02, Local3)
            Store (Local3, P72H)
            Store (Local1, P73H)
            Increment (Local2)
        }

        Store (Add (Local0, One), P72H)
        Store (Zero, P73H)
        Store (Local0, P72H)
        Store (And (Arg0, 0xFF), P73H)
        Store (Zero, Local2)
        While (LLess (Local2, 0x08))
        {
            Store (Add (Local0, Local2), P72H)
            Store (P73H, Local1)
            \_SB.PCI0.LPCB.H_EC.MBWR (Add (Local4, Local2), Local1)
            Increment (Local2)
        }

        Store (0x27, P72H)
        Store (P73H, Local1)
        \_SB.PCI0.LPCB.H_EC.MBWR (0x20, Local1)
        Return (Zero)
    }

    Method (XWAK, 1, NotSerialized)
    {
        If (LEqual (LGEC, Zero))
        {
            Return (Zero)
        }

        Store (Zero, WOLE)
        Store (Zero, XSTY)
        Store (Zero, \_SB.PCI0.LPCB.H_EC.LIW3)
        Store (One, \_SB.PCI0.LPCB.H_EC.G3SE)
        Store (Zero, \_SB.PCI0.LPCB.H_EC.LNW4)
        Store (Zero, \_SB.PCI0.LPCB.H_EC.LNW3)
        Store (Zero, \_SB.PCI0.LPCB.H_EC.LWB4)
        Store (Zero, \_SB.PCI0.LPCB.H_EC.LWB3)
        Store (Zero, WDTE)
        Store (ECOS, \_SB.PCI0.LPCB.H_EC.OTYP)
        If (LNotEqual (\_SB.PCI0.LPCB.H_EC.ACP, PWRS))
        {
            Store (\_SB.PCI0.LPCB.H_EC.ACP, PWRS)
            PNOT ()
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LOr (LNotEqual (\PMB0, Zero), LEqual (Arg0, 0x04)))
            {
                Notify (\_SB.PWRB, 0x02)
            }

            Store (One, LIDS)
            If (IGDS)
            {
                Store (0x80000003, \_SB.PCI0.GFX0.CLID)
            }

            Notify (\_SB.PCI0.LPCB.H_EC.LID0, 0x80)
        }

        If (LEqual (Arg0, 0x04))
        {
            \_SB.PCI0.LPCB.H_EC.INSM ()
        }

        Return (Zero)
    }
}

