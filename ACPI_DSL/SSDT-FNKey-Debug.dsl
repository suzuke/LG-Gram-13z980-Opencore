/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLrpyTPt.aml, Sun Apr 19 02:35:55 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000155 (341)
 *     Revision         0x02
 *     Checksum         0xDB
 *     OEM ID           "OCLT"
 *     OEM Table ID     "FNKey"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "OCLT", "FNKey", 0x00000000)
{
    External (_SB.SLPB, DeviceObj)
    External (_SB.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB.PCI0.LPCB.H_EC.LID0, DeviceObj)
    External (_SB.PCI0.LPCB.H_EC.XQ34, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ50, MethodObj)    // 0 Arguments
    External (_SB.PCI0.LPCB.H_EC.XQ51, MethodObj)    // 0 Arguments
    External (_SB.PCI0.LPCB.PS2K, DeviceObj)
    External (RMDT.P1__, MethodObj) 

    Scope (_SB.PCI0.LPCB.H_EC)
    {
        Method (_Q34, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \RMDT.P1 ("KEYBOARD-Q34")
            If (_OSI ("Darwin"))
            {
                //Notify (\_SB.SLPB, 0x80)
                //Notify (\_SB.PCI0.LPCB.H_EC.LID0, 0x80)
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ34 ()
            }
        }
        
        Method (_Q50, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \RMDT.P1 ("KEYBOARD-Q50")
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0406)
                Notify (\_SB.PCI0.LPCB.PS2K, 0x10) // Reserved
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ50 ()
            }
        }

        Method (_Q51, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            \RMDT.P1 ("KEYBOARD-Q51")
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0405)
                Notify (\_SB.PCI0.LPCB.PS2K, 0x20) // Reserved
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ51 ()
            }
        }
        
        Method (_Q01, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q01")
        }
        Method (_Q02, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q02")
        }
        Method (_Q03, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q03")
        }
        Method (_Q04, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q04")
        }        
        Method (_Q05, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q05")
        }
        Method (_Q06, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q06")
        }
        Method (_Q08, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q08")
        }
        Method (_Q20, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q20")
        }
        Method (_Q30, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q30")
        }
        Method (_Q7B, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q7B")
        }
        Method (_Q7C, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q7C")
        }
        //Method (_Q34, 0, NotSerialized)
        Method (_Q36, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q36")
        }
        Method (_Q37, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q37")
        }
        Method (_Q80, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q80")
        }
        Method (_Q3B, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q3B")
        }
        Method (_Q3D, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q3D")
        }
        Method (_Q40, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q40")
        }
        Method (_Q42, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q42")
        }
        Method (_Q45, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q45")
        }
        Method (_Q47, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q47")
        }
        //Method (_Q50, 0, NotSerialized)
        //Method (_Q51, 0, NotSerialized)
        Method (_Q52, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q52")
        }
        Method (_Q53, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q53")
        }
        Method (_Q63, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q63")
        }
        Method (_Q64, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q64")
        }
        Method (_Q67, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q67")
        }
        Method (_Q69, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q69")
        }
        Method (_Q6A, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q6A")
        }
        Method (_Q6B, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q6B")
        }
        Method (_Q6C, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q6C")
        }
        Method (_Q6F, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q6F")
        }
        Method (_Q72, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q72")
        }
        Method (_Q73, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q73")
        }
        Method (_Q82, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q82")
        }
        Method (_Q83, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q83")
        }
        Method (_Q84, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q84")
        }
        Method (_Q85, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q85")
        }
        Method (_Q79, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q79")
        }
        Method (_Q7A, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q7A")
        }
        Method (_Q90, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q90")
        }
    }
}

