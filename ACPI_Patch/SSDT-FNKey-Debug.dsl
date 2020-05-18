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
DefinitionBlock ("", "SSDT", 2, "OCLT", "FNDbug", 0x00000000)
{
    External (_SB.SLPB, DeviceObj)
    External (_SB.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB.PCI0.LPCB.H_EC.XQ01, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ02, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ03, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ04, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ05, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ06, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ08, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ20, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ30, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ7B, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ7C, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ34, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ36, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ37, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ80, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ3B, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ3D, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ40, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ42, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ45, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ47, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ50, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ51, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ52, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ53, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ63, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ64, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ67, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ69, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ6A, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ6B, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ6C, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ6F, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ72, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ73, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ82, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ83, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ84, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ85, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ79, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ7A, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ90, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQFF, MethodObj)
    External (RMDT.P1__, MethodObj) 
    External (RMDT.P2__, MethodObj)
    External (BRTL, FieldUnitObj)
    External (PWRS, IntObj)
    External (\_SB.PCI0.LPCB.H_EC.LBRI, FieldUnitObj)

    Scope (_SB.PCI0.LPCB.H_EC)
    {   
        Method (_Q01, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q01")
            \_SB.PCI0.LPCB.H_EC.XQ01()
        }
        Method (_Q02, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q02")
            \_SB.PCI0.LPCB.H_EC.XQ02()
        }
        Method (_Q03, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q03")
            \_SB.PCI0.LPCB.H_EC.XQ03()
        }
        Method (_Q04, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q04")
            \_SB.PCI0.LPCB.H_EC.XQ04()
        }        
        Method (_Q05, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q05")
            \_SB.PCI0.LPCB.H_EC.XQ05()
        }
        Method (_Q06, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q06")
            \_SB.PCI0.LPCB.H_EC.XQ06()
        }
        Method (_Q08, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q08")
            \_SB.PCI0.LPCB.H_EC.XQ08()
        }
        Method (_Q20, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q20")
            \_SB.PCI0.LPCB.H_EC.XQ20()
        }
        Method (_Q30, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q30")
            \_SB.PCI0.LPCB.H_EC.XQ30()
        }
        Method (_Q7B, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q7B")
            \_SB.PCI0.LPCB.H_EC.XQ7B()
        }
        Method (_Q7C, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q7C")
            \_SB.PCI0.LPCB.H_EC.XQ7C()
        }
        //Method (_Q34, 0, NotSerialized)
        //{
        //    \RMDT.P1 ("KEYBOARD-Q34")
        //    \_SB.PCI0.LPCB.H_EC.XQ34()
        //}
        //Method (_Q36, 0, NotSerialized)
        //{
        //    \RMDT.P1 ("KEYBOARD-Q36")
        //    \_SB.PCI0.LPCB.H_EC.XQ36()
        //}
        //Method (_Q37, 0, NotSerialized)
        //{
        //    \RMDT.P1 ("KEYBOARD-Q37")
        //    \_SB.PCI0.LPCB.H_EC.XQ37()
        //}
        Method (_Q80, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q80")
            \_SB.PCI0.LPCB.H_EC.XQ80()
        }
        Method (_Q3B, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q3B")
            \_SB.PCI0.LPCB.H_EC.XQ3B()
        }
        Method (_Q3D, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q3D")
            \_SB.PCI0.LPCB.H_EC.XQ3D()
        }
        //Method (_Q40, 0, NotSerialized)
        //{
        //    \RMDT.P1 ("KEYBOARD-Q40")
        //    \_SB.PCI0.LPCB.H_EC.XQ40()
        //    \RMDT.P2 ("KEYBOARD-Q40-BRTL", BRTL)
        //    \RMDT.P2 ("KEYBOARD-Q40-PWRS", PWRS)
        //    \RMDT.P2 ("KEYBOARD-Q40-LBRI", \_SB.PCI0.LPCB.H_EC.LBRI) 
        //}
        Method (_Q42, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q42")
            \_SB.PCI0.LPCB.H_EC.XQ42()
        }
        Method (_Q45, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q45")
            \_SB.PCI0.LPCB.H_EC.XQ45()
        }
        Method (_Q47, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q47")
            \_SB.PCI0.LPCB.H_EC.XQ47()
        }
        Method (_Q50, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q50")
            \_SB.PCI0.LPCB.H_EC.XQ50()
        }
        Method (_Q51, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q51")
            \_SB.PCI0.LPCB.H_EC.XQ51()
        }
        Method (_Q52, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q52")
            \_SB.PCI0.LPCB.H_EC.XQ52()
        }
        Method (_Q53, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q53")
            \_SB.PCI0.LPCB.H_EC.XQ53()
        }
        Method (_Q63, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q63")
            \_SB.PCI0.LPCB.H_EC.XQ63()
        }
        Method (_Q64, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q64")
            \_SB.PCI0.LPCB.H_EC.XQ64()
        }
        Method (_Q67, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q67")
            \_SB.PCI0.LPCB.H_EC.XQ67()
        }
        Method (_Q69, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q69")
            \_SB.PCI0.LPCB.H_EC.XQ69()
        }
        Method (_Q6A, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q6A")
            \_SB.PCI0.LPCB.H_EC.XQ6A()
        }
        Method (_Q6B, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q6B")
            \_SB.PCI0.LPCB.H_EC.XQ6B()
        }
        Method (_Q6C, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q6C")
            \_SB.PCI0.LPCB.H_EC.XQ6C()
        }
        Method (_Q6F, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q6F")
            \_SB.PCI0.LPCB.H_EC.XQ6F()
        }
        //Method (_Q72, 0, NotSerialized)
        //{
        //    \RMDT.P1 ("KEYBOARD-Q72")
        //    \_SB.PCI0.LPCB.H_EC.XQ72()
        //}
        Method (_Q73, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q73")
            \_SB.PCI0.LPCB.H_EC.XQ73()
        }
        Method (_Q82, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q82")
            \_SB.PCI0.LPCB.H_EC.XQ82()
        }
        Method (_Q83, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q83")
            \_SB.PCI0.LPCB.H_EC.XQ83()
        }
        Method (_Q84, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q84")
            \_SB.PCI0.LPCB.H_EC.XQ84()
        }
        Method (_Q85, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q85")
            \_SB.PCI0.LPCB.H_EC.XQ85()
        }
        Method (_Q79, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q79")
            \_SB.PCI0.LPCB.H_EC.XQ79()
        }
        Method (_Q7A, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q7A")
            \_SB.PCI0.LPCB.H_EC.XQ7A()
        }
        Method (_Q90, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q90")
            \_SB.PCI0.LPCB.H_EC.XQ90()
        }
        //Method (_QFF, 0, NotSerialized)
        //{
        //    \RMDT.P1 ("KEYBOARD-QFF")
        //    \_SB.PCI0.LPCB.H_EC.XQFF()
        //}    
    }
}

