/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-5-MeSsdt.aml, Fri Apr 24 10:58:03 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000046 (70)
 *     Revision         0x02
 *     Checksum         0xF8
 *     OEM ID           "LGE   "
 *     OEM Table ID     "MeSsdt "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LGE   ", "MeSsdt ", 0x00003000)
{
    OperationRegion (MENV, SystemMemory, 0xAFED9E98, 0x000C)
    Field (MENV, AnyAcc, Lock, Preserve)
    {
        MERV,   32, 
        PTTB,   64
    }
}

