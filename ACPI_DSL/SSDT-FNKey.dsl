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
    }
}

