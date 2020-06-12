
#define GOV_TLED        0x2020008
#define WM_GET          1
#define WM_SET          2
#define WM_KEY_LIGHT    0x400
#define WM_TLED         0x404
#define WM_FN_LOCK      0x407
#define WM_BATT_LIMIT   0x61
#define WM_READER_MODE  0xBF
#define WM_FAN_MODE	   0x33
#define WMBB_USB_CHARGE 0x10B
#define WMBB_BATT_LIMIT 0x10C

#define KEY_FNF1        0x70
#define KEY_FNF5        0x74

#define KEY_F14         0x0405
#define KEY_F15         0x0406
#define KEY_F16         0x0367
#define KEY_F17         0x0368
#define KEY_F18         0x0369
#define KEY_F19         0x036A

#define BRIGHTNESS_DOWN 0x20
#define BRIGHTNESS_UP   0x10

#define PNP0C0E_MODE    1
#define PNP0C0D_MODE    0

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
    External (_SB.PCI0.LPCB.H_EC.FNKN, FieldUnitObj)
    
    External (_SB.GGOV, MethodObj)
    External (XINI.WMAB, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.RDMD, FieldUnitObj)
        
    Scope (_SB.PCI0.LPCB.H_EC)
    {
        Method (_Q34, 0, NotSerialized) //FN + F4
        {
            \RMDT.P1 ("KEYBOARD-Q34")
            If (_OSI ("Darwin"))
            {
                If (LGEC)
                {
                    If (\_SB.PCI9.MODE == PNP0C0E_MODE)
                    {
                        \_SB.PCI9.FNOK = 1
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
                Notify(\_SB.PCI0.LPCB.PS2K, KEY_F19)
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
                Notify(\_SB.PCI0.LPCB.PS2K, KEY_F16)
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
                
                If(LEqual(Local2, BRIGHTNESS_DOWN))
                {
                    Notify(\_SB.PCI0.LPCB.PS2K, KEY_F14)
                }
                ElseIf(LEqual(Local2, BRIGHTNESS_UP))
                {
                    Notify(\_SB.PCI0.LPCB.PS2K, KEY_F15)
                }
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
                
        Method (_Q72, 0, NotSerialized) //FN + F9
        {
            \RMDT.P1 ("KEYBOARD-Q72")
            If (_OSI("Darwin"))
            {
                Local0 = \_SB.PCI0.LPCB.H_EC.RDMD
                \_SB.PCI0.LPCB.H_EC.RDMD = !Local0
                Notify(\_SB.PCI0.LPCB.PS2K, KEY_F18)
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ72()
            }
        }
        
        Method (_QFF, 0, NotSerialized)
        {
            \RMDT.P1 ("KEYBOARD-QFF")
            If (_OSI ("Darwin"))
            {
                Local0 = \_SB.PCI0.LPCB.H_EC.FNKN
                If (Local0 == KEY_FNF5)
                {
                    Local1 = \_SB.GGOV(GOV_TLED)
                    \XINI.WMAB(WM_TLED, WM_SET, !Local1)
                    Notify(\_SB.PCI0.LPCB.PS2K, 0x041e) // e01e
                }
                ElseIf (Local0 == KEY_FNF1)
                {
                    Notify(\_SB.PCI0.LPCB.PS2K, KEY_F17)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQFF()
            }
        }  
    }

    External(_SB.PCI0.LPCB.PS2K, DeviceObj)
    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Name (RMCF,Package() 
        {
            "Keyboard", Package()
            {
                "Custom PS2 Map", Package()
                {
                    Package(){},
                    "e01e=e037",
                    "e037=64", //PrtSc -> F13
                    "46=e01f", //FN + PrtSc (ScrLk) -> Dead key
                },
                
                //or
                /*
                "Custom ADB Map", Package()
                {
                    Package(){},
                    "1e=06",
                }
                */
            },
        })
    }
}
