.include "macros.inc"

.text

.global func_80356890
func_80356890:
/* 80356890 00351DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356894 00351DD4  7C 08 02 A6 */	mflr r0
/* 80356898 00351DD8  38 A0 00 01 */	li r5, 1
/* 8035689C 00351DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803568A0 00351DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803568A4 00351DE4  7C 7F 1B 78 */	mr r31, r3
/* 803568A8 00351DE8  48 00 F7 E5 */	bl func_8036608C
/* 803568AC 00351DEC  3C 60 80 5C */	lis r3, lbl_805BFC0C@ha
/* 803568B0 00351DF0  38 80 FF FF */	li r4, -1
/* 803568B4 00351DF4  38 63 FC 0C */	addi r3, r3, lbl_805BFC0C@l
/* 803568B8 00351DF8  38 00 00 00 */	li r0, 0
/* 803568BC 00351DFC  90 7F 00 00 */	stw r3, 0(r31)
/* 803568C0 00351E00  7F E3 FB 78 */	mr r3, r31
/* 803568C4 00351E04  90 9F 00 20 */	stw r4, 0x20(r31)
/* 803568C8 00351E08  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 803568CC 00351E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803568D0 00351E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803568D4 00351E14  7C 08 03 A6 */	mtlr r0
/* 803568D8 00351E18  38 21 00 10 */	addi r1, r1, 0x10
/* 803568DC 00351E1C  4E 80 00 20 */	blr 
/* 803568E0 00351E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803568E4 00351E24  7C 08 02 A6 */	mflr r0
/* 803568E8 00351E28  3C 80 80 5C */	lis r4, lbl_805BFBC8@ha
/* 803568EC 00351E2C  38 A0 00 02 */	li r5, 2
/* 803568F0 00351E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 803568F4 00351E34  38 84 FB C8 */	addi r4, r4, lbl_805BFBC8@l
/* 803568F8 00351E38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803568FC 00351E3C  7C 7F 1B 78 */	mr r31, r3
/* 80356900 00351E40  48 00 FA 51 */	bl func_80366350
/* 80356904 00351E44  7F E3 FB 78 */	mr r3, r31
/* 80356908 00351E48  48 09 8B 91 */	bl func_803EF498
/* 8035690C 00351E4C  7F E3 FB 78 */	mr r3, r31
/* 80356910 00351E50  38 8D D1 3C */	addi r4, r13, lbl_806A1DDC-_SDA_BASE_
/* 80356914 00351E54  48 00 FB 61 */	bl func_80366474
/* 80356918 00351E58  38 60 00 10 */	li r3, 0x10
/* 8035691C 00351E5C  48 0B 31 DD */	bl func_80409AF8
/* 80356920 00351E60  2C 03 00 00 */	cmpwi r3, 0
/* 80356924 00351E64  41 82 00 0C */	beq lbl_80356930
/* 80356928 00351E68  7F E4 FB 78 */	mr r4, r31
/* 8035692C 00351E6C  48 00 02 2D */	bl func_80356B58
lbl_80356930:
/* 80356930 00351E70  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 80356934 00351E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80356938 00351E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035693C 00351E7C  7C 08 03 A6 */	mtlr r0
/* 80356940 00351E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80356944 00351E84  4E 80 00 20 */	blr 
/* 80356948 00351E88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8035694C 00351E8C  7C 08 02 A6 */	mflr r0
/* 80356950 00351E90  90 01 00 34 */	stw r0, 0x34(r1)
/* 80356954 00351E94  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80356958 00351E98  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0
/* 8035695C 00351E9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80356960 00351EA0  7C 7F 1B 78 */	mr r31, r3
/* 80356964 00351EA4  48 08 17 D9 */	bl func_803D813C
/* 80356968 00351EA8  2C 03 00 00 */	cmpwi r3, 0
/* 8035696C 00351EAC  41 82 00 38 */	beq lbl_803569A4
/* 80356970 00351EB0  7F E3 FB 78 */	mr r3, r31
/* 80356974 00351EB4  48 00 F8 6D */	bl func_803661E0
/* 80356978 00351EB8  3C 80 80 5C */	lis r4, lbl_805BFBD3@ha
/* 8035697C 00351EBC  7F E3 FB 78 */	mr r3, r31
/* 80356980 00351EC0  38 84 FB D3 */	addi r4, r4, lbl_805BFBD3@l
/* 80356984 00351EC4  38 A0 00 00 */	li r5, 0
/* 80356988 00351EC8  48 08 05 61 */	bl func_803D6EE8
/* 8035698C 00351ECC  7F E3 FB 78 */	mr r3, r31
/* 80356990 00351ED0  38 8D D1 38 */	addi r4, r13, lbl_806A1DD8-_SDA_BASE_
/* 80356994 00351ED4  48 00 F8 A9 */	bl func_8036623C
/* 80356998 00351ED8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8035699C 00351EDC  48 00 02 1D */	bl func_80356BB8
/* 803569A0 00351EE0  48 00 00 88 */	b lbl_80356A28
lbl_803569A4:
/* 803569A4 00351EE4  7F E3 FB 78 */	mr r3, r31
/* 803569A8 00351EE8  38 8D D1 40 */	addi r4, r13, lbl_806A1DE0-_SDA_BASE_
/* 803569AC 00351EEC  48 00 F8 99 */	bl func_80366244
/* 803569B0 00351EF0  2C 03 00 00 */	cmpwi r3, 0
/* 803569B4 00351EF4  41 82 00 74 */	beq lbl_80356A28
/* 803569B8 00351EF8  7F E3 FB 78 */	mr r3, r31
/* 803569BC 00351EFC  38 80 00 00 */	li r4, 0
/* 803569C0 00351F00  48 08 0D 15 */	bl func_803D76D4
/* 803569C4 00351F04  FF E0 08 90 */	fmr f31, f1
/* 803569C8 00351F08  3C 80 80 5C */	lis r4, lbl_805BFBD3@ha
/* 803569CC 00351F0C  7F E3 FB 78 */	mr r3, r31
/* 803569D0 00351F10  38 A0 00 00 */	li r5, 0
/* 803569D4 00351F14  38 84 FB D3 */	addi r4, r4, lbl_805BFBD3@l
/* 803569D8 00351F18  48 08 05 11 */	bl func_803D6EE8
/* 803569DC 00351F1C  7F E3 FB 78 */	mr r3, r31
/* 803569E0 00351F20  38 80 00 00 */	li r4, 0
/* 803569E4 00351F24  48 08 0E 45 */	bl func_803D7828
/* 803569E8 00351F28  A8 A3 00 08 */	lha r5, 8(r3)
/* 803569EC 00351F2C  3C 00 43 30 */	lis r0, 0x4330
/* 803569F0 00351F30  90 01 00 08 */	stw r0, 8(r1)
/* 803569F4 00351F34  3C 80 80 54 */	lis r4, lbl_805390E0@ha
/* 803569F8 00351F38  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 803569FC 00351F3C  C8 24 90 E0 */	lfd f1, lbl_805390E0@l(r4)
/* 80356A00 00351F40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80356A04 00351F44  7F E3 FB 78 */	mr r3, r31
/* 80356A08 00351F48  38 80 00 00 */	li r4, 0
/* 80356A0C 00351F4C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80356A10 00351F50  EC 00 08 28 */	fsubs f0, f0, f1
/* 80356A14 00351F54  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80356A18 00351F58  48 08 0A 6D */	bl func_803D7484
/* 80356A1C 00351F5C  7F E3 FB 78 */	mr r3, r31
/* 80356A20 00351F60  38 8D D1 38 */	addi r4, r13, lbl_806A1DD8-_SDA_BASE_
/* 80356A24 00351F64  48 00 F8 19 */	bl func_8036623C
lbl_80356A28:
/* 80356A28 00351F68  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0
/* 80356A2C 00351F6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80356A30 00351F70  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80356A34 00351F74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80356A38 00351F78  7C 08 03 A6 */	mtlr r0
/* 80356A3C 00351F7C  38 21 00 30 */	addi r1, r1, 0x30
/* 80356A40 00351F80  4E 80 00 20 */	blr 

.global lbl_80356A44
lbl_80356A44:
/* 80356A44 00351F84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80356A48 00351F88  7C 08 02 A6 */	mflr r0
/* 80356A4C 00351F8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80356A50 00351F90  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80356A54 00351F94  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0
/* 80356A58 00351F98  38 8D D1 38 */	addi r4, r13, lbl_806A1DD8-_SDA_BASE_
/* 80356A5C 00351F9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80356A60 00351FA0  7C 7F 1B 78 */	mr r31, r3
/* 80356A64 00351FA4  48 00 F7 E1 */	bl func_80366244
/* 80356A68 00351FA8  2C 03 00 00 */	cmpwi r3, 0
/* 80356A6C 00351FAC  41 82 00 74 */	beq lbl_80356AE0
/* 80356A70 00351FB0  7F E3 FB 78 */	mr r3, r31
/* 80356A74 00351FB4  38 80 00 00 */	li r4, 0
/* 80356A78 00351FB8  48 08 0C 5D */	bl func_803D76D4
/* 80356A7C 00351FBC  FF E0 08 90 */	fmr f31, f1
/* 80356A80 00351FC0  7F E3 FB 78 */	mr r3, r31
/* 80356A84 00351FC4  38 8D 8D 78 */	addi r4, r13, lbl_8069DA18-_SDA_BASE_
/* 80356A88 00351FC8  38 A0 00 00 */	li r5, 0
/* 80356A8C 00351FCC  48 08 04 5D */	bl func_803D6EE8
/* 80356A90 00351FD0  7F E3 FB 78 */	mr r3, r31
/* 80356A94 00351FD4  38 80 00 00 */	li r4, 0
/* 80356A98 00351FD8  48 08 0D 91 */	bl func_803D7828
/* 80356A9C 00351FDC  A8 A3 00 08 */	lha r5, 8(r3)
/* 80356AA0 00351FE0  3C 00 43 30 */	lis r0, 0x4330
/* 80356AA4 00351FE4  90 01 00 08 */	stw r0, 8(r1)
/* 80356AA8 00351FE8  3C 80 80 54 */	lis r4, lbl_805390E0@ha
/* 80356AAC 00351FEC  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80356AB0 00351FF0  C8 24 90 E0 */	lfd f1, lbl_805390E0@l(r4)
/* 80356AB4 00351FF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80356AB8 00351FF8  7F E3 FB 78 */	mr r3, r31
/* 80356ABC 00351FFC  38 80 00 00 */	li r4, 0
/* 80356AC0 00352000  C8 01 00 08 */	lfd f0, 8(r1)
/* 80356AC4 00352004  EC 00 08 28 */	fsubs f0, f0, f1
/* 80356AC8 00352008  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80356ACC 0035200C  48 08 09 B9 */	bl func_803D7484
/* 80356AD0 00352010  7F E3 FB 78 */	mr r3, r31
/* 80356AD4 00352014  38 8D D1 40 */	addi r4, r13, lbl_806A1DE0-_SDA_BASE_
/* 80356AD8 00352018  48 00 F7 65 */	bl func_8036623C
/* 80356ADC 0035201C  48 00 00 34 */	b lbl_80356B10
lbl_80356AE0:
/* 80356AE0 00352020  7F E3 FB 78 */	mr r3, r31
/* 80356AE4 00352024  38 8D D1 3C */	addi r4, r13, lbl_806A1DDC-_SDA_BASE_
/* 80356AE8 00352028  48 00 F7 5D */	bl func_80366244
/* 80356AEC 0035202C  2C 03 00 00 */	cmpwi r3, 0
/* 80356AF0 00352030  41 82 00 20 */	beq lbl_80356B10
/* 80356AF4 00352034  7F E3 FB 78 */	mr r3, r31
/* 80356AF8 00352038  38 8D 8D 78 */	addi r4, r13, lbl_8069DA18-_SDA_BASE_
/* 80356AFC 0035203C  38 A0 00 00 */	li r5, 0
/* 80356B00 00352040  48 08 03 E9 */	bl func_803D6EE8
/* 80356B04 00352044  7F E3 FB 78 */	mr r3, r31
/* 80356B08 00352048  38 8D D1 40 */	addi r4, r13, lbl_806A1DE0-_SDA_BASE_
/* 80356B0C 0035204C  48 00 F7 31 */	bl func_8036623C
lbl_80356B10:
/* 80356B10 00352050  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0
/* 80356B14 00352054  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80356B18 00352058  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80356B1C 0035205C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80356B20 00352060  7C 08 03 A6 */	mtlr r0
/* 80356B24 00352064  38 21 00 30 */	addi r1, r1, 0x30
/* 80356B28 00352068  4E 80 00 20 */	blr 

.global func_80356B2C
func_80356B2C:
/* 80356B2C 0035206C  7C 85 23 78 */	mr r5, r4
/* 80356B30 00352070  90 83 00 20 */	stw r4, 0x20(r3)
/* 80356B34 00352074  3C 80 80 5C */	lis r4, lbl_805BFBC8@ha
/* 80356B38 00352078  38 84 FB C8 */	addi r4, r4, lbl_805BFBC8@l
/* 80356B3C 0035207C  48 08 1C 30 */	b func_803D876C

.global func_80356B40
func_80356B40:
/* 80356B40 00352080  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80356B44 00352084  48 00 00 FC */	b lbl_80356C40

.global func_80356B48
func_80356B48:
/* 80356B48 00352088  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80356B4C 0035208C  48 00 01 60 */	b lbl_80356CAC
/* 80356B50 00352090  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80356B54 00352094  48 04 BE 48 */	b func_803A299C

.global func_80356B58
func_80356B58:
/* 80356B58 00352098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356B5C 0035209C  7C 08 02 A6 */	mflr r0
/* 80356B60 003520A0  3C A0 80 5C */	lis r5, lbl_805BFBDA@ha
/* 80356B64 003520A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80356B68 003520A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80356B6C 003520AC  7C 9F 23 78 */	mr r31, r4
/* 80356B70 003520B0  38 85 FB DA */	addi r4, r5, lbl_805BFBDA@l
/* 80356B74 003520B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80356B78 003520B8  7C 7E 1B 78 */	mr r30, r3
/* 80356B7C 003520BC  48 04 BD 51 */	bl func_803A28CC
/* 80356B80 003520C0  3C 80 80 5C */	lis r4, lbl_805BFC00@ha
/* 80356B84 003520C4  93 FE 00 08 */	stw r31, 8(r30)
/* 80356B88 003520C8  38 84 FC 00 */	addi r4, r4, lbl_805BFC00@l
/* 80356B8C 003520CC  7F C3 F3 78 */	mr r3, r30
/* 80356B90 003520D0  90 9E 00 00 */	stw r4, 0(r30)
/* 80356B94 003520D4  38 8D D1 50 */	addi r4, r13, lbl_806A1DF0-_SDA_BASE_
/* 80356B98 003520D8  48 04 BD B1 */	bl func_803A2948
/* 80356B9C 003520DC  7F C3 F3 78 */	mr r3, r30
/* 80356BA0 003520E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80356BA4 003520E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80356BA8 003520E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80356BAC 003520EC  7C 08 03 A6 */	mtlr r0
/* 80356BB0 003520F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80356BB4 003520F4  4E 80 00 20 */	blr 

.global func_80356BB8
func_80356BB8:
/* 80356BB8 003520F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80356BBC 003520FC  7C 08 02 A6 */	mflr r0
/* 80356BC0 00352100  38 8D D1 50 */	addi r4, r13, lbl_806A1DF0-_SDA_BASE_
/* 80356BC4 00352104  90 01 00 24 */	stw r0, 0x24(r1)
/* 80356BC8 00352108  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80356BCC 0035210C  7C 7F 1B 78 */	mr r31, r3
/* 80356BD0 00352110  48 04 BD E1 */	bl func_803A29B0
/* 80356BD4 00352114  3C 80 80 5C */	lis r4, lbl_805BFBED@ha
/* 80356BD8 00352118  80 7F 00 08 */	lwz r3, 8(r31)
/* 80356BDC 0035211C  38 84 FB ED */	addi r4, r4, lbl_805BFBED@l
/* 80356BE0 00352120  38 A0 00 01 */	li r5, 1
/* 80356BE4 00352124  48 08 03 05 */	bl func_803D6EE8
/* 80356BE8 00352128  80 7F 00 08 */	lwz r3, 8(r31)
/* 80356BEC 0035212C  38 80 00 01 */	li r4, 1
/* 80356BF0 00352130  48 08 0C 39 */	bl func_803D7828
/* 80356BF4 00352134  A8 A3 00 08 */	lha r5, 8(r3)
/* 80356BF8 00352138  3C 00 43 30 */	lis r0, 0x4330
/* 80356BFC 0035213C  90 01 00 08 */	stw r0, 8(r1)
/* 80356C00 00352140  3C 60 80 54 */	lis r3, lbl_805390E0@ha
/* 80356C04 00352144  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80356C08 00352148  C8 43 90 E0 */	lfd f2, lbl_805390E0@l(r3)
/* 80356C0C 0035214C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80356C10 00352150  38 80 00 01 */	li r4, 1
/* 80356C14 00352154  C0 02 12 E8 */	lfs f0, lbl_806AC568-_SDA2_BASE_(r2)
/* 80356C18 00352158  C8 21 00 08 */	lfd f1, 8(r1)
/* 80356C1C 0035215C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80356C20 00352160  EC 21 10 28 */	fsubs f1, f1, f2
/* 80356C24 00352164  EC 21 00 28 */	fsubs f1, f1, f0
/* 80356C28 00352168  48 08 08 5D */	bl func_803D7484
/* 80356C2C 0035216C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80356C30 00352170  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80356C34 00352174  7C 08 03 A6 */	mtlr r0
/* 80356C38 00352178  38 21 00 20 */	addi r1, r1, 0x20
/* 80356C3C 0035217C  4E 80 00 20 */	blr 
lbl_80356C40:
/* 80356C40 00352180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356C44 00352184  7C 08 02 A6 */	mflr r0
/* 80356C48 00352188  38 8D D1 50 */	addi r4, r13, lbl_806A1DF0-_SDA_BASE_
/* 80356C4C 0035218C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80356C50 00352190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80356C54 00352194  7C 7F 1B 78 */	mr r31, r3
/* 80356C58 00352198  48 04 BD 61 */	bl func_803A29B8
/* 80356C5C 0035219C  2C 03 00 00 */	cmpwi r3, 0
/* 80356C60 003521A0  41 82 00 1C */	beq lbl_80356C7C
/* 80356C64 003521A4  7F E3 FB 78 */	mr r3, r31
/* 80356C68 003521A8  38 8D D1 44 */	addi r4, r13, lbl_806A1DE4-_SDA_BASE_
/* 80356C6C 003521AC  48 04 BD 45 */	bl func_803A29B0
/* 80356C70 003521B0  38 00 00 00 */	li r0, 0
/* 80356C74 003521B4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80356C78 003521B8  48 00 00 20 */	b lbl_80356C98
lbl_80356C7C:
/* 80356C7C 003521BC  7F E3 FB 78 */	mr r3, r31
/* 80356C80 003521C0  38 8D D1 4C */	addi r4, r13, lbl_806A1DEC-_SDA_BASE_
/* 80356C84 003521C4  48 04 BD 35 */	bl func_803A29B8
/* 80356C88 003521C8  2C 03 00 00 */	cmpwi r3, 0
/* 80356C8C 003521CC  41 82 00 0C */	beq lbl_80356C98
/* 80356C90 003521D0  38 0D D1 48 */	addi r0, r13, lbl_806A1DE8-_SDA_BASE_
/* 80356C94 003521D4  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80356C98:
/* 80356C98 003521D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80356C9C 003521DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80356CA0 003521E0  7C 08 03 A6 */	mtlr r0
/* 80356CA4 003521E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80356CA8 003521E8  4E 80 00 20 */	blr 
lbl_80356CAC:
/* 80356CAC 003521EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356CB0 003521F0  7C 08 02 A6 */	mflr r0
/* 80356CB4 003521F4  38 8D D1 48 */	addi r4, r13, lbl_806A1DE8-_SDA_BASE_
/* 80356CB8 003521F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80356CBC 003521FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80356CC0 00352200  7C 7F 1B 78 */	mr r31, r3
/* 80356CC4 00352204  48 04 BC F5 */	bl func_803A29B8
/* 80356CC8 00352208  2C 03 00 00 */	cmpwi r3, 0
/* 80356CCC 0035220C  41 82 00 1C */	beq lbl_80356CE8
/* 80356CD0 00352210  7F E3 FB 78 */	mr r3, r31
/* 80356CD4 00352214  38 8D D1 4C */	addi r4, r13, lbl_806A1DEC-_SDA_BASE_
/* 80356CD8 00352218  48 04 BC D9 */	bl func_803A29B0
/* 80356CDC 0035221C  38 00 00 00 */	li r0, 0
/* 80356CE0 00352220  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80356CE4 00352224  48 00 00 20 */	b lbl_80356D04
lbl_80356CE8:
/* 80356CE8 00352228  7F E3 FB 78 */	mr r3, r31
/* 80356CEC 0035222C  38 8D D1 44 */	addi r4, r13, lbl_806A1DE4-_SDA_BASE_
/* 80356CF0 00352230  48 04 BC C9 */	bl func_803A29B8
/* 80356CF4 00352234  2C 03 00 00 */	cmpwi r3, 0
/* 80356CF8 00352238  41 82 00 0C */	beq lbl_80356D04
/* 80356CFC 0035223C  38 0D D1 50 */	addi r0, r13, lbl_806A1DF0-_SDA_BASE_
/* 80356D00 00352240  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80356D04:
/* 80356D04 00352244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80356D08 00352248  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80356D0C 0035224C  7C 08 03 A6 */	mtlr r0
/* 80356D10 00352250  38 21 00 10 */	addi r1, r1, 0x10
/* 80356D14 00352254  4E 80 00 20 */	blr 
lbl_80356D18:
/* 80356D18 00352258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356D1C 0035225C  7C 08 02 A6 */	mflr r0
/* 80356D20 00352260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80356D24 00352264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80356D28 00352268  7C 7F 1B 78 */	mr r31, r3
/* 80356D2C 0035226C  48 09 58 B5 */	bl func_803EC5E0
/* 80356D30 00352270  2C 03 00 00 */	cmpwi r3, 0
/* 80356D34 00352274  41 82 00 18 */	beq lbl_80356D4C
/* 80356D38 00352278  3C 80 80 5C */	lis r4, lbl_805BFBF7@ha
/* 80356D3C 0035227C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80356D40 00352280  38 84 FB F7 */	addi r4, r4, lbl_805BFBF7@l
/* 80356D44 00352284  38 A0 00 01 */	li r5, 1
/* 80356D48 00352288  48 08 01 A1 */	bl func_803D6EE8
lbl_80356D4C:
/* 80356D4C 0035228C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80356D50 00352290  38 80 00 00 */	li r4, 0
/* 80356D54 00352294  48 08 08 FD */	bl func_803D7650
/* 80356D58 00352298  2C 03 00 00 */	cmpwi r3, 0
/* 80356D5C 0035229C  41 82 00 38 */	beq lbl_80356D94
/* 80356D60 003522A0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80356D64 003522A4  38 0D D1 50 */	addi r0, r13, lbl_806A1DF0-_SDA_BASE_
/* 80356D68 003522A8  7C 03 00 40 */	cmplw r3, r0
/* 80356D6C 003522AC  40 82 00 14 */	bne lbl_80356D80
/* 80356D70 003522B0  7F E3 FB 78 */	mr r3, r31
/* 80356D74 003522B4  38 8D D1 4C */	addi r4, r13, lbl_806A1DEC-_SDA_BASE_
/* 80356D78 003522B8  48 04 BC 39 */	bl func_803A29B0
/* 80356D7C 003522BC  48 00 00 10 */	b lbl_80356D8C
lbl_80356D80:
/* 80356D80 003522C0  7F E3 FB 78 */	mr r3, r31
/* 80356D84 003522C4  38 8D D1 48 */	addi r4, r13, lbl_806A1DE8-_SDA_BASE_
/* 80356D88 003522C8  48 04 BC 29 */	bl func_803A29B0
lbl_80356D8C:
/* 80356D8C 003522CC  38 00 00 00 */	li r0, 0
/* 80356D90 003522D0  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80356D94:
/* 80356D94 003522D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80356D98 003522D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80356D9C 003522DC  7C 08 03 A6 */	mtlr r0
/* 80356DA0 003522E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80356DA4 003522E4  4E 80 00 20 */	blr 
lbl_80356DA8:
/* 80356DA8 003522E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356DAC 003522EC  7C 08 02 A6 */	mflr r0
/* 80356DB0 003522F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80356DB4 003522F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80356DB8 003522F8  7C 7F 1B 78 */	mr r31, r3
/* 80356DBC 003522FC  48 09 58 25 */	bl func_803EC5E0
/* 80356DC0 00352300  2C 03 00 00 */	cmpwi r3, 0
/* 80356DC4 00352304  41 82 00 18 */	beq lbl_80356DDC
/* 80356DC8 00352308  3C 80 80 5C */	lis r4, lbl_805BFBED@ha
/* 80356DCC 0035230C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80356DD0 00352310  38 84 FB ED */	addi r4, r4, lbl_805BFBED@l
/* 80356DD4 00352314  38 A0 00 01 */	li r5, 1
/* 80356DD8 00352318  48 08 01 11 */	bl func_803D6EE8
lbl_80356DDC:
/* 80356DDC 0035231C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80356DE0 00352320  38 80 00 00 */	li r4, 0
/* 80356DE4 00352324  48 08 08 6D */	bl func_803D7650
/* 80356DE8 00352328  2C 03 00 00 */	cmpwi r3, 0
/* 80356DEC 0035232C  41 82 00 38 */	beq lbl_80356E24
/* 80356DF0 00352330  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80356DF4 00352334  38 0D D1 48 */	addi r0, r13, lbl_806A1DE8-_SDA_BASE_
/* 80356DF8 00352338  7C 03 00 40 */	cmplw r3, r0
/* 80356DFC 0035233C  40 82 00 14 */	bne lbl_80356E10
/* 80356E00 00352340  7F E3 FB 78 */	mr r3, r31
/* 80356E04 00352344  38 8D D1 44 */	addi r4, r13, lbl_806A1DE4-_SDA_BASE_
/* 80356E08 00352348  48 04 BB A9 */	bl func_803A29B0
/* 80356E0C 0035234C  48 00 00 10 */	b lbl_80356E1C
lbl_80356E10:
/* 80356E10 00352350  7F E3 FB 78 */	mr r3, r31
/* 80356E14 00352354  38 8D D1 50 */	addi r4, r13, lbl_806A1DF0-_SDA_BASE_
/* 80356E18 00352358  48 04 BB 99 */	bl func_803A29B0
lbl_80356E1C:
/* 80356E1C 0035235C  38 00 00 00 */	li r0, 0
/* 80356E20 00352360  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80356E24:
/* 80356E24 00352364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80356E28 00352368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80356E2C 0035236C  7C 08 03 A6 */	mtlr r0
/* 80356E30 00352370  38 21 00 10 */	addi r1, r1, 0x10
/* 80356E34 00352374  4E 80 00 20 */	blr 
/* 80356E38 00352378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356E3C 0035237C  7C 08 02 A6 */	mflr r0
/* 80356E40 00352380  2C 03 00 00 */	cmpwi r3, 0
/* 80356E44 00352384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80356E48 00352388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80356E4C 0035238C  7C 9F 23 78 */	mr r31, r4
/* 80356E50 00352390  93 C1 00 08 */	stw r30, 8(r1)
/* 80356E54 00352394  7C 7E 1B 78 */	mr r30, r3
/* 80356E58 00352398  41 82 00 20 */	beq lbl_80356E78
/* 80356E5C 0035239C  41 82 00 0C */	beq lbl_80356E68
/* 80356E60 003523A0  38 80 00 00 */	li r4, 0
/* 80356E64 003523A4  4B F0 A3 51 */	bl func_802611B4
lbl_80356E68:
/* 80356E68 003523A8  2C 1F 00 00 */	cmpwi r31, 0
/* 80356E6C 003523AC  40 81 00 0C */	ble lbl_80356E78
/* 80356E70 003523B0  7F C3 F3 78 */	mr r3, r30
/* 80356E74 003523B4  48 0B 2C CD */	bl __dl__FPv
lbl_80356E78:
/* 80356E78 003523B8  7F C3 F3 78 */	mr r3, r30
/* 80356E7C 003523BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80356E80 003523C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80356E84 003523C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80356E88 003523C8  7C 08 03 A6 */	mtlr r0
/* 80356E8C 003523CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80356E90 003523D0  4E 80 00 20 */	blr 
/* 80356E94 003523D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356E98 003523D8  7C 08 02 A6 */	mflr r0
/* 80356E9C 003523DC  2C 03 00 00 */	cmpwi r3, 0
/* 80356EA0 003523E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80356EA4 003523E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80356EA8 003523E8  7C 9F 23 78 */	mr r31, r4
/* 80356EAC 003523EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80356EB0 003523F0  7C 7E 1B 78 */	mr r30, r3
/* 80356EB4 003523F4  41 82 00 1C */	beq lbl_80356ED0
/* 80356EB8 003523F8  38 80 00 00 */	li r4, 0
/* 80356EBC 003523FC  48 04 BA 29 */	bl func_803A28E4
/* 80356EC0 00352400  2C 1F 00 00 */	cmpwi r31, 0
/* 80356EC4 00352404  40 81 00 0C */	ble lbl_80356ED0
/* 80356EC8 00352408  7F C3 F3 78 */	mr r3, r30
/* 80356ECC 0035240C  48 0B 2C 75 */	bl __dl__FPv
lbl_80356ED0:
/* 80356ED0 00352410  7F C3 F3 78 */	mr r3, r30
/* 80356ED4 00352414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80356ED8 00352418  83 C1 00 08 */	lwz r30, 8(r1)
/* 80356EDC 0035241C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80356EE0 00352420  7C 08 03 A6 */	mtlr r0
/* 80356EE4 00352424  38 21 00 10 */	addi r1, r1, 0x10
/* 80356EE8 00352428  4E 80 00 20 */	blr 
/* 80356EEC 0035242C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356EF0 00352430  7C 08 02 A6 */	mflr r0
/* 80356EF4 00352434  38 6D D1 38 */	addi r3, r13, lbl_806A1DD8-_SDA_BASE_
/* 80356EF8 00352438  90 01 00 14 */	stw r0, 0x14(r1)
/* 80356EFC 0035243C  48 00 00 45 */	bl func_80356F40
/* 80356F00 00352440  38 6D D1 3C */	addi r3, r13, lbl_806A1DDC-_SDA_BASE_
/* 80356F04 00352444  48 00 00 4D */	bl func_80356F50
/* 80356F08 00352448  38 6D D1 40 */	addi r3, r13, lbl_806A1DE0-_SDA_BASE_
/* 80356F0C 0035244C  48 00 00 55 */	bl func_80356F60
/* 80356F10 00352450  38 6D D1 44 */	addi r3, r13, lbl_806A1DE4-_SDA_BASE_
/* 80356F14 00352454  48 00 00 5D */	bl func_80356F70
/* 80356F18 00352458  38 6D D1 48 */	addi r3, r13, lbl_806A1DE8-_SDA_BASE_
/* 80356F1C 0035245C  48 00 00 65 */	bl func_80356F80
/* 80356F20 00352460  38 6D D1 4C */	addi r3, r13, lbl_806A1DEC-_SDA_BASE_
/* 80356F24 00352464  48 00 00 6D */	bl func_80356F90
/* 80356F28 00352468  38 6D D1 50 */	addi r3, r13, lbl_806A1DF0-_SDA_BASE_
/* 80356F2C 0035246C  48 00 00 75 */	bl func_80356FA0
/* 80356F30 00352470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80356F34 00352474  7C 08 03 A6 */	mtlr r0
/* 80356F38 00352478  38 21 00 10 */	addi r1, r1, 0x10
/* 80356F3C 0035247C  4E 80 00 20 */	blr 

.global func_80356F40
func_80356F40:
/* 80356F40 00352480  3C 80 80 5C */	lis r4, lbl_805BFC9C@ha
/* 80356F44 00352484  38 84 FC 9C */	addi r4, r4, lbl_805BFC9C@l
/* 80356F48 00352488  90 83 00 00 */	stw r4, 0(r3)
/* 80356F4C 0035248C  4E 80 00 20 */	blr 

.global func_80356F50
func_80356F50:
/* 80356F50 00352490  3C 80 80 5C */	lis r4, lbl_805BFC8C@ha
/* 80356F54 00352494  38 84 FC 8C */	addi r4, r4, lbl_805BFC8C@l
/* 80356F58 00352498  90 83 00 00 */	stw r4, 0(r3)
/* 80356F5C 0035249C  4E 80 00 20 */	blr 

.global func_80356F60
func_80356F60:
/* 80356F60 003524A0  3C 80 80 5C */	lis r4, lbl_805BFC7C@ha
/* 80356F64 003524A4  38 84 FC 7C */	addi r4, r4, lbl_805BFC7C@l
/* 80356F68 003524A8  90 83 00 00 */	stw r4, 0(r3)
/* 80356F6C 003524AC  4E 80 00 20 */	blr 

.global func_80356F70
func_80356F70:
/* 80356F70 003524B0  3C 80 80 5C */	lis r4, lbl_805BFC6C@ha
/* 80356F74 003524B4  38 84 FC 6C */	addi r4, r4, lbl_805BFC6C@l
/* 80356F78 003524B8  90 83 00 00 */	stw r4, 0(r3)
/* 80356F7C 003524BC  4E 80 00 20 */	blr 

.global func_80356F80
func_80356F80:
/* 80356F80 003524C0  3C 80 80 5C */	lis r4, lbl_805BFC5C@ha
/* 80356F84 003524C4  38 84 FC 5C */	addi r4, r4, lbl_805BFC5C@l
/* 80356F88 003524C8  90 83 00 00 */	stw r4, 0(r3)
/* 80356F8C 003524CC  4E 80 00 20 */	blr 

.global func_80356F90
func_80356F90:
/* 80356F90 003524D0  3C 80 80 5C */	lis r4, lbl_805BFC4C@ha
/* 80356F94 003524D4  38 84 FC 4C */	addi r4, r4, lbl_805BFC4C@l
/* 80356F98 003524D8  90 83 00 00 */	stw r4, 0(r3)
/* 80356F9C 003524DC  4E 80 00 20 */	blr 

.global func_80356FA0
func_80356FA0:
/* 80356FA0 003524E0  3C 80 80 5C */	lis r4, lbl_805BFC3C@ha
/* 80356FA4 003524E4  38 84 FC 3C */	addi r4, r4, lbl_805BFC3C@l
/* 80356FA8 003524E8  90 83 00 00 */	stw r4, 0(r3)
/* 80356FAC 003524EC  4E 80 00 20 */	blr 
/* 80356FB0 003524F0  4E 80 00 20 */	blr 
/* 80356FB4 003524F4  80 64 00 00 */	lwz r3, 0(r4)
/* 80356FB8 003524F8  4B FF FD F0 */	b lbl_80356DA8
/* 80356FBC 003524FC  4E 80 00 20 */	blr 
/* 80356FC0 00352500  80 64 00 00 */	lwz r3, 0(r4)
/* 80356FC4 00352504  4B FF FD 54 */	b lbl_80356D18
/* 80356FC8 00352508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356FCC 0035250C  7C 08 02 A6 */	mflr r0
/* 80356FD0 00352510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80356FD4 00352514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80356FD8 00352518  83 E4 00 00 */	lwz r31, 0(r4)
/* 80356FDC 0035251C  7F E3 FB 78 */	mr r3, r31
/* 80356FE0 00352520  48 08 0C 39 */	bl func_803D7C18
/* 80356FE4 00352524  7F E3 FB 78 */	mr r3, r31
/* 80356FE8 00352528  38 80 00 00 */	li r4, 0
/* 80356FEC 0035252C  48 08 06 65 */	bl func_803D7650
/* 80356FF0 00352530  2C 03 00 00 */	cmpwi r3, 0
/* 80356FF4 00352534  41 82 00 18 */	beq lbl_8035700C
/* 80356FF8 00352538  81 9F 00 00 */	lwz r12, 0(r31)
/* 80356FFC 0035253C  7F E3 FB 78 */	mr r3, r31
/* 80357000 00352540  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80357004 00352544  7D 89 03 A6 */	mtctr r12
/* 80357008 00352548  4E 80 04 21 */	bctrl 
lbl_8035700C:
/* 8035700C 0035254C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80357010 00352550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80357014 00352554  7C 08 03 A6 */	mtlr r0
/* 80357018 00352558  38 21 00 10 */	addi r1, r1, 0x10
/* 8035701C 0035255C  4E 80 00 20 */	blr 
/* 80357020 00352560  4E 80 00 20 */	blr 
/* 80357024 00352564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80357028 00352568  7C 08 02 A6 */	mflr r0
/* 8035702C 0035256C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80357030 00352570  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80357034 00352574  83 E4 00 00 */	lwz r31, 0(r4)
/* 80357038 00352578  7F E3 FB 78 */	mr r3, r31
/* 8035703C 0035257C  48 08 0B DD */	bl func_803D7C18
/* 80357040 00352580  7F E3 FB 78 */	mr r3, r31
/* 80357044 00352584  38 80 00 00 */	li r4, 0
/* 80357048 00352588  48 08 06 09 */	bl func_803D7650
/* 8035704C 0035258C  2C 03 00 00 */	cmpwi r3, 0
/* 80357050 00352590  41 82 00 10 */	beq lbl_80357060
/* 80357054 00352594  7F E3 FB 78 */	mr r3, r31
/* 80357058 00352598  38 8D D1 3C */	addi r4, r13, lbl_806A1DDC-_SDA_BASE_
/* 8035705C 0035259C  48 00 F1 E1 */	bl func_8036623C
lbl_80357060:
/* 80357060 003525A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80357064 003525A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80357068 003525A8  7C 08 03 A6 */	mtlr r0
/* 8035706C 003525AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80357070 003525B0  4E 80 00 20 */	blr 
