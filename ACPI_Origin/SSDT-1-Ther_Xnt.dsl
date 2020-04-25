/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-1-Ther_Xnt.aml, Fri Apr 24 10:58:03 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000513 (1299)
 *     Revision         0x02
 *     Checksum         0xDA
 *     OEM ID           "LGE   "
 *     OEM Table ID     "Ther_Xnt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LGE   ", "Ther_Xnt", 0x00001000)
{
    External (_PR_.ACRT, UnknownObj)    // (from opcode)
    External (_PR_.APSV, UnknownObj)    // (from opcode)
    External (_PR_.CPU0, UnknownObj)    // (from opcode)
    External (_PR_.CPU1, UnknownObj)    // (from opcode)
    External (_PR_.CPU2, UnknownObj)    // (from opcode)
    External (_PR_.CPU3, UnknownObj)    // (from opcode)
    External (_PR_.CPU4, UnknownObj)    // (from opcode)
    External (_PR_.CPU5, UnknownObj)    // (from opcode)
    External (_PR_.CPU6, UnknownObj)    // (from opcode)
    External (_PR_.CPU7, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.TMOD, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.TMP1, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.TSR1, FieldUnitObj)    // (from opcode)
    External (CRTT, IntObj)    // (from opcode)
    External (CTYP, IntObj)    // (from opcode)
    External (LGEC, IntObj)    // (from opcode)
    External (PSVT, IntObj)    // (from opcode)
    External (TC1V, IntObj)    // (from opcode)
    External (TC2V, IntObj)    // (from opcode)
    External (TCNT, IntObj)    // (from opcode)
    External (TSPV, IntObj)    // (from opcode)

    Scope (\_TZ)
    {
        Name (ETMD, One)
        ThermalZone (TZ00)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, \CTYP)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (Add (0x0AAC, Multiply (\CRTT, 0x0A)))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Subtract (\CRTT, 0x02, Local0)
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (C2K (STHT ()))
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If (LEqual (\TCNT, 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3, 
                        \_PR.CPU4, 
                        \_PR.CPU5, 
                        \_PR.CPU6, 
                        \_PR.CPU7
                    })
                }

                If (LEqual (\TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If (LEqual (\TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                If (CondRefOf (\_PR.APSV))
                {
                    If (LNotEqual (\_PR.APSV, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_PR.APSV, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\PSVT, 0x0A)))
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (\TC1V)
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (\TC2V)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (\TSPV)
            }
        }

        Method (C2K, 1, NotSerialized)
        {
            Add (Multiply (Arg0, 0x0A), 0x0AAC, Local0)
            Return (Local0)
        }

        Method (LTST, 0, Serialized)
        {
            Store (\_SB.PCI0.LPCB.H_EC.TMOD, Local0)
            If (LGreaterEqual (Local0, 0x07))
            {
                Store (Zero, Local0)
            }

            Return (Local0)
        }

        Method (STHT, 0, Serialized)
        {
            Store (LTST (), Local0)
            If (LGreaterEqual (Local0, 0x05))
            {
                Store (Add (CRTT, One), Local1)
            }
            ElseIf (LEqual (Local0, 0x04))
            {
                Store (Subtract (CRTT, One), Local1)
            }
            Else
            {
                Store (0x20, Local1)
            }

            Return (Local1)
        }

        ThermalZone (TZ01)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, \CTYP)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (CondRefOf (\_PR.ACRT))
                {
                    If (LNotEqual (\_PR.ACRT, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_PR.ACRT, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\CRTT, 0x0A)))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LNot (ETMD))
                {
                    Return (0x0AAC)
                }

                Return (0x0AAC)
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If (LEqual (\TCNT, 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3, 
                        \_PR.CPU4, 
                        \_PR.CPU5, 
                        \_PR.CPU6, 
                        \_PR.CPU7
                    })
                }

                If (LEqual (\TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If (LEqual (\TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                If (CondRefOf (\_PR.APSV))
                {
                    If (LNotEqual (\_PR.APSV, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_PR.APSV, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\PSVT, 0x0A)))
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (\TC1V)
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (\TC2V)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (\TSPV)
            }
        }
    }
}

