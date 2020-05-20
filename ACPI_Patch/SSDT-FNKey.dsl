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
    External (_SB.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB.PCI0.LPCB.H_EC.LID0, DeviceObj)
    External (_SB.PCI0.LPCB.H_EC.XQ34, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ36, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ37, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ40, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ63, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ72, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQFF, MethodObj)
    External (_SB.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB.PCI9.FNOK, IntObj)
    External (_SB.PCI9.MODE, IntObj)
    External (RMDT.P1__, MethodObj) 
    External (RMDT.P2__, MethodObj)
    External (LGEC, IntObj)
    External (_SB.PCI0.LPCB.H_EC.LBRI, FieldUnitObj)
    External (_SB.PCI0.LPCB.H_EC.MAP1.TLED, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.FNKN, FieldUnitObj)
        
    Scope (_SB.PCI0.LPCB.H_EC)
    {
        Method (_Q34, 0, NotSerialized) //FN + F4
        {
            \RMDT.P1 ("KEYBOARD-Q34")
            If (_OSI ("Darwin"))
            {
                If (LGEC)
                {
                    
                    If (\_SB.PCI9.MODE == 1) //PNP0C0E
                    {
                        \_SB.PCI9.FNOK =1
                        \_SB.PCI0.LPCB.H_EC.XQ34()
                    }
                    Else //PNP0C0D
                    {
                        If (\_SB.PCI9.FNOK != 1)
                        {
                            \_SB.PCI9.FNOK = 1
                        }
                        Else
                        {
                            \_SB.PCI9.FNOK = 0
                        }
                        Notify (\_SB.PCI0.LPCB.H_EC.LID0, 0x80)
                    }
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ34()
            }
        }
                
        Method (_Q36, 0, NotSerialized) //FN + F6
        {
            \RMDT.P1 ("KEYBOARD-Q36")
            If (_OSI ("Darwin"))
            {
                Notify(\_SB.PCI0.LPCB.PS2K, 0x036A) //mac F19, Bluetooth switch
                //Notify(\_SB.PCI0.LPCB.PS2K, 0x0368) //mac F17, Wifi switch
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ36()
            }
        }
        
        Method (_Q37, 0, NotSerialized) //FN + F7
        {
            \RMDT.P1 ("KEYBOARD-Q37")
            If (_OSI ("Darwin"))
            {
                Notify(\_SB.PCI0.LPCB.PS2K, 0x0367) //mac F16
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ37()
            }
        }
        
        Name(BRI0, 0)
        Name(BRI1, 0)
        Method (_Q40, 0, NotSerialized) //FN + F2, FN + F3
        {
            \RMDT.P1 ("KEYBOARD-Q40")
            If (_OSI ("Darwin"))
            {
                Store(\_SB.PCI0.LPCB.H_EC.LBRI, Local0)
                Store(BRI0, Local1)
                Store(BRI1, Local2)
                
                \RMDT.P2("KEYBOARD-Q40-Local0", Local0)
                \RMDT.P2("KEYBOARD-Q40-Local1", Local1)
                \RMDT.P2("KEYBOARD-Q40-Local2", Local2)
                                
                If(LEqual(Local0,Local1)){ //Reach bound
                    If(LEqual(Local0, 0x80))
                    {
                        Store(0x20,Local2)
                    }
                    Else
                    {
                        If(LEqual(Local0, 0x88))
                        {
                            Store(0x10,Local2)
                        }
                    }
                }Else{
                    If(LGreater(Local0,Local1)){                    
                        Store(0x10,Local2)
                    }Else{
                        Store(0x20,Local2)                
                    }
                }   
                             
                Store(Local0, BRI0)
                Store(Local2, BRI1)
                
                If(LEqual(Local2, 0x20))
                {
                    Notify(\_SB.PCI0.LPCB.PS2K, 0x0405)
                }
                ElseIf(LEqual(Local2, 0x10))
                {
                    Notify(\_SB.PCI0.LPCB.PS2K, 0x0406)
                }      
                \RMDT.P2 ("KEYBOARD-Q40-Local2", Local2)   
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ40()
            }
        }
        Method (_Q63, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q63")
            \_SB.PCI0.LPCB.H_EC.XQ63()
            If (_OSI("Darwin"))
            {
                Store(\_SB.PCI0.LPCB.H_EC.LBRI, BRI0)
            }
        }        
        Method (_Q72, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-Q72")
            if (_OSI("Darwin"))
            {
                Notify(\_SB.PCI0.LPCB.PS2K, 0x0369) //mac F18, sun
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ72()
            }
        }
        
        Name(TGLD, One)
        Method (_QFF, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-QFF")
            //\RMDT.P2 ("KEYBOARD-QFF-CAUS", \_SB.PCI0.LPCB.H_EC.MAP1.CAUS)
            //\RMDT.P2 ("KEYBOARD-QFF-MAR0", \_SB.PCI0.LPCB.H_EC.MAP1.MAR0)
            //\RMDT.P2 ("KEYBOARD-QFF-MAR1", \_SB.PCI0.LPCB.H_EC.MAP1.MAR1)
            //\RMDT.P2 ("KEYBOARD-QFF-MAR2", \_SB.PCI0.LPCB.H_EC.MAP1.MAR2)
            \RMDT.P2 ("KEYBOARD-QFF-FNKN", \_SB.PCI0.LPCB.H_EC.FNKN)
            If (_OSI ("Darwin"))
            {
                If (\_SB.PCI0.LPCB.H_EC.FNKN == 0x74) //FN+F5
                {
                    If (TGLD == 1)
                    {
                        TGLD = 0
                    }
                    ElseIf (TGLD == 0)
                    {
                        TGLD = 1
                    }
                    \_SB.PCI0.LPCB.H_EC.MAP1.TLED(TGLD)
                    Notify(\_SB.PCI0.LPCB.PS2K, 0x041e) // e01e
                }
                Else //0x70, FN+F1
                {
                    \RMDT.P1 ("KEYBOARD-QFF-F1")
                    Store(\_SB.PCI0.LPCB.H_EC.LBRI, Local0)
                    \RMDT.P2("KEYBOARD-QFF-Local0", Local0)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQFF()
            }
        }  
    }
}
