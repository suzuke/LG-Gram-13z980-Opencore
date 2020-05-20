//
// In config ACPI, _LID to XLID
// Find:     5F4C4944 00
// Replace:  584C4944 00
//
DefinitionBlock("", "SSDT", 2, "OCLT", "LIDpatch", 0)
{
    //note:_LID 's path
    //path:_SB.LID0._LID
    External(_SB.PCI0.LPCB.H_EC.LID0, DeviceObj)
    External(_SB.PCI0.LPCB.H_EC.LID0.XLID, MethodObj)
    External(_SB.PCI9.FNOK, IntObj)
    External (LGEC, IntObj)
    
    Scope (_SB.PCI0.LPCB.H_EC.LID0)
    {
        Method (_LID, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                If (LGEC)
                {
                    If (\_SB.PCI9.FNOK == 1)
                    {
                        Return (0)
                    }
                    Else
                    {
                        Return (\_SB.PCI0.LPCB.H_EC.LID0.XLID())
                    }
                }
                
                Return (1)
                
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.H_EC.LID0.XLID())
            }
        }
    }
}
//EOF