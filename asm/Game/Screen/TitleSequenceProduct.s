.include "macros.inc"

.text

.global func_8038ED6C
func_8038ED6C:
/* 8038ED6C 0038A2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038ED70 0038A2B0  7C 08 02 A6 */	mflr r0
/* 8038ED74 0038A2B4  3C 80 80 5C */	lis r4, lbl_805C5FE0@ha
/* 8038ED78 0038A2B8  38 C0 00 02 */	li r6, 2
/* 8038ED7C 0038A2BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038ED80 0038A2C0  38 84 5F E0 */	addi r4, r4, lbl_805C5FE0@l
/* 8038ED84 0038A2C4  38 E0 FF FF */	li r7, -1
/* 8038ED88 0038A2C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038ED8C 0038A2CC  3F E0 80 5C */	lis r31, lbl_805C5FE5@ha
/* 8038ED90 0038A2D0  38 BF 5F E5 */	addi r5, r31, lbl_805C5FE5@l
/* 8038ED94 0038A2D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8038ED98 0038A2D8  7C 7E 1B 78 */	mr r30, r3
/* 8038ED9C 0038A2DC  4B FF 0F 21 */	bl func_8037FCBC
/* 8038EDA0 0038A2E0  3C 80 80 5C */	lis r4, lbl_805C60D8@ha
/* 8038EDA4 0038A2E4  7F C3 F3 78 */	mr r3, r30
/* 8038EDA8 0038A2E8  38 84 60 D8 */	addi r4, r4, lbl_805C60D8@l
/* 8038EDAC 0038A2EC  38 BF 5F E5 */	addi r5, r31, 0x5fe5
/* 8038EDB0 0038A2F0  90 9E 00 00 */	stw r4, 0(r30)
/* 8038EDB4 0038A2F4  38 80 00 01 */	li r4, 1
/* 8038EDB8 0038A2F8  38 C0 00 00 */	li r6, 0
/* 8038EDBC 0038A2FC  4B FD 77 0D */	bl func_803664C8
/* 8038EDC0 0038A300  81 9E 00 00 */	lwz r12, 0(r30)
/* 8038EDC4 0038A304  7F C3 F3 78 */	mr r3, r30
/* 8038EDC8 0038A308  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8038EDCC 0038A30C  7D 89 03 A6 */	mtctr r12
/* 8038EDD0 0038A310  4E 80 04 21 */	bctrl 
/* 8038EDD4 0038A314  7F C3 F3 78 */	mr r3, r30
/* 8038EDD8 0038A318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038EDDC 0038A31C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038EDE0 0038A320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038EDE4 0038A324  7C 08 03 A6 */	mtlr r0
/* 8038EDE8 0038A328  38 21 00 10 */	addi r1, r1, 0x10
/* 8038EDEC 0038A32C  4E 80 00 20 */	blr 

.global func_8038EDF0
func_8038EDF0:
/* 8038EDF0 0038A330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038EDF4 0038A334  7C 08 02 A6 */	mflr r0
/* 8038EDF8 0038A338  38 8D 8E C0 */	addi r4, r13, lbl_8069DB60-_SDA_BASE_
/* 8038EDFC 0038A33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038EE00 0038A340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038EE04 0038A344  7C 7F 1B 78 */	mr r31, r3
/* 8038EE08 0038A348  48 01 3A C5 */	bl func_803A28CC
/* 8038EE0C 0038A34C  3C 60 80 5C */	lis r3, lbl_805C6108@ha
/* 8038EE10 0038A350  38 00 00 00 */	li r0, 0
/* 8038EE14 0038A354  38 63 61 08 */	addi r3, r3, lbl_805C6108@l
/* 8038EE18 0038A358  90 1F 00 08 */	stw r0, 8(r31)
/* 8038EE1C 0038A35C  90 7F 00 00 */	stw r3, 0(r31)
/* 8038EE20 0038A360  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8038EE24 0038A364  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8038EE28 0038A368  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8038EE2C 0038A36C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8038EE30 0038A370  48 06 F1 1D */	bl func_803FDF4C
/* 8038EE34 0038A374  2C 03 00 00 */	cmpwi r3, 0
/* 8038EE38 0038A378  41 82 00 14 */	beq lbl_8038EE4C
/* 8038EE3C 0038A37C  7F E3 FB 78 */	mr r3, r31
/* 8038EE40 0038A380  38 8D D6 F0 */	addi r4, r13, lbl_806A2390-_SDA_BASE_
/* 8038EE44 0038A384  48 01 3B 05 */	bl func_803A2948
/* 8038EE48 0038A388  48 00 00 10 */	b lbl_8038EE58
lbl_8038EE4C:
/* 8038EE4C 0038A38C  7F E3 FB 78 */	mr r3, r31
/* 8038EE50 0038A390  38 8D D6 F4 */	addi r4, r13, lbl_806A2394-_SDA_BASE_
/* 8038EE54 0038A394  48 01 3A F5 */	bl func_803A2948
lbl_8038EE58:
/* 8038EE58 0038A398  38 60 00 20 */	li r3, 0x20
/* 8038EE5C 0038A39C  48 07 AC 9D */	bl func_80409AF8
/* 8038EE60 0038A3A0  2C 03 00 00 */	cmpwi r3, 0
/* 8038EE64 0038A3A4  41 82 00 08 */	beq lbl_8038EE6C
/* 8038EE68 0038A3A8  4B FF FF 05 */	bl func_8038ED6C
lbl_8038EE6C:
/* 8038EE6C 0038A3AC  90 7F 00 08 */	stw r3, 8(r31)
/* 8038EE70 0038A3B0  38 60 00 20 */	li r3, 0x20
/* 8038EE74 0038A3B4  48 07 AC 85 */	bl func_80409AF8
/* 8038EE78 0038A3B8  2C 03 00 00 */	cmpwi r3, 0
/* 8038EE7C 0038A3BC  41 82 00 20 */	beq lbl_8038EE9C
/* 8038EE80 0038A3C0  3C 80 80 5C */	lis r4, lbl_805C5FEF@ha
/* 8038EE84 0038A3C4  3C A0 80 5C */	lis r5, lbl_805C5FFB@ha
/* 8038EE88 0038A3C8  38 84 5F EF */	addi r4, r4, lbl_805C5FEF@l
/* 8038EE8C 0038A3CC  38 C0 00 01 */	li r6, 1
/* 8038EE90 0038A3D0  38 A5 5F FB */	addi r5, r5, lbl_805C5FFB@l
/* 8038EE94 0038A3D4  38 E0 FF FF */	li r7, -1
/* 8038EE98 0038A3D8  4B FF 0E 25 */	bl func_8037FCBC
lbl_8038EE9C:
/* 8038EE9C 0038A3DC  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8038EEA0 0038A3E0  4B ED 23 6D */	bl func_8026120C
/* 8038EEA4 0038A3E4  38 60 00 02 */	li r3, 2
/* 8038EEA8 0038A3E8  48 07 AC 51 */	bl func_80409AF8
/* 8038EEAC 0038A3EC  2C 03 00 00 */	cmpwi r3, 0
/* 8038EEB0 0038A3F0  41 82 00 08 */	beq lbl_8038EEB8
/* 8038EEB4 0038A3F4  48 07 7D 65 */	bl func_80406C18
lbl_8038EEB8:
/* 8038EEB8 0038A3F8  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8038EEBC 0038A3FC  38 60 00 02 */	li r3, 2
/* 8038EEC0 0038A400  48 07 AC 39 */	bl func_80409AF8
/* 8038EEC4 0038A404  2C 03 00 00 */	cmpwi r3, 0
/* 8038EEC8 0038A408  41 82 00 08 */	beq lbl_8038EED0
/* 8038EECC 0038A40C  48 07 7D 4D */	bl func_80406C18
lbl_8038EED0:
/* 8038EED0 0038A410  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8038EED4 0038A414  48 06 F0 79 */	bl func_803FDF4C
/* 8038EED8 0038A418  98 7F 00 1C */	stb r3, 0x1c(r31)
/* 8038EEDC 0038A41C  38 60 00 24 */	li r3, 0x24
/* 8038EEE0 0038A420  48 07 AC 19 */	bl func_80409AF8
/* 8038EEE4 0038A424  2C 03 00 00 */	cmpwi r3, 0
/* 8038EEE8 0038A428  41 82 00 08 */	beq lbl_8038EEF0
/* 8038EEEC 0038A42C  4B FC 5C 19 */	bl func_80354B04
lbl_8038EEF0:
/* 8038EEF0 0038A430  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8038EEF4 0038A434  4B ED 23 19 */	bl func_8026120C
/* 8038EEF8 0038A438  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8038EEFC 0038A43C  81 83 00 00 */	lwz r12, 0(r3)
/* 8038EF00 0038A440  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8038EF04 0038A444  7D 89 03 A6 */	mtctr r12
/* 8038EF08 0038A448  4E 80 04 21 */	bctrl 
/* 8038EF0C 0038A44C  7F E3 FB 78 */	mr r3, r31
/* 8038EF10 0038A450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038EF14 0038A454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038EF18 0038A458  7C 08 03 A6 */	mtlr r0
/* 8038EF1C 0038A45C  38 21 00 10 */	addi r1, r1, 0x10
/* 8038EF20 0038A460  4E 80 00 20 */	blr 
lbl_8038EF24:
/* 8038EF24 0038A464  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038EF28 0038A468  7C 08 02 A6 */	mflr r0
/* 8038EF2C 0038A46C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038EF30 0038A470  39 61 00 30 */	addi r11, r1, 0x30
/* 8038EF34 0038A474  48 18 85 F1 */	bl func_80517524
/* 8038EF38 0038A478  7C 78 1B 78 */	mr r24, r3
/* 8038EF3C 0038A47C  48 05 D6 A5 */	bl func_803EC5E0
/* 8038EF40 0038A480  2C 03 00 00 */	cmpwi r3, 0
/* 8038EF44 0038A484  41 82 00 AC */	beq lbl_8038EFF0
/* 8038EF48 0038A488  48 02 18 31 */	bl func_803B0778
/* 8038EF4C 0038A48C  7C 9B 23 78 */	mr r27, r4
/* 8038EF50 0038A490  7C 7C 1B 78 */	mr r28, r3
/* 8038EF54 0038A494  48 11 D4 15 */	bl func_804AC368
/* 8038EF58 0038A498  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 8038EF5C 0038A49C  7C 99 23 78 */	mr r25, r4
/* 8038EF60 0038A4A0  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 8038EF64 0038A4A4  7C 7A 1B 78 */	mr r26, r3
/* 8038EF68 0038A4A8  38 A0 00 00 */	li r5, 0
/* 8038EF6C 0038A4AC  54 1D F0 BE */	srwi r29, r0, 2
/* 8038EF70 0038A4B0  7F A6 EB 78 */	mr r6, r29
/* 8038EF74 0038A4B4  48 18 87 0D */	bl __div2i
/* 8038EF78 0038A4B8  3F E0 00 01 */	lis r31, 0x00015180@ha
/* 8038EF7C 0038A4BC  38 A0 00 00 */	li r5, 0
/* 8038EF80 0038A4C0  38 DF 51 80 */	addi r6, r31, 0x00015180@l
/* 8038EF84 0038A4C4  48 18 86 FD */	bl __div2i
/* 8038EF88 0038A4C8  7C 9E 23 78 */	mr r30, r4
/* 8038EF8C 0038A4CC  7F 83 E3 78 */	mr r3, r28
/* 8038EF90 0038A4D0  7F 64 DB 78 */	mr r4, r27
/* 8038EF94 0038A4D4  7F A6 EB 78 */	mr r6, r29
/* 8038EF98 0038A4D8  38 A0 00 00 */	li r5, 0
/* 8038EF9C 0038A4DC  48 18 86 E5 */	bl __div2i
/* 8038EFA0 0038A4E0  38 DF 51 80 */	addi r6, r31, 0x5180
/* 8038EFA4 0038A4E4  38 A0 00 00 */	li r5, 0
/* 8038EFA8 0038A4E8  48 18 86 D9 */	bl __div2i
/* 8038EFAC 0038A4EC  7F 60 E3 79 */	or. r0, r27, r28
/* 8038EFB0 0038A4F0  38 A4 00 64 */	addi r5, r4, 0x64
/* 8038EFB4 0038A4F4  41 82 00 28 */	beq lbl_8038EFDC
/* 8038EFB8 0038A4F8  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 8038EFBC 0038A4FC  6F 84 80 00 */	xoris r4, r28, 0x8000
/* 8038EFC0 0038A500  7C 7B C8 10 */	subfc r3, r27, r25
/* 8038EFC4 0038A504  7C 84 01 10 */	subfe r4, r4, r0
/* 8038EFC8 0038A508  7C 80 01 10 */	subfe r4, r0, r0
/* 8038EFCC 0038A50C  7C 84 00 D1 */	neg. r4, r4
/* 8038EFD0 0038A510  40 82 00 0C */	bne lbl_8038EFDC
/* 8038EFD4 0038A514  7C 05 F0 00 */	cmpw r5, r30
/* 8038EFD8 0038A518  40 80 00 18 */	bge lbl_8038EFF0
lbl_8038EFDC:
/* 8038EFDC 0038A51C  80 78 00 10 */	lwz r3, 0x10(r24)
/* 8038EFE0 0038A520  81 83 00 00 */	lwz r12, 0(r3)
/* 8038EFE4 0038A524  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8038EFE8 0038A528  7D 89 03 A6 */	mtctr r12
/* 8038EFEC 0038A52C  4E 80 04 21 */	bctrl 
lbl_8038EFF0:
/* 8038EFF0 0038A530  80 78 00 10 */	lwz r3, 0x10(r24)
/* 8038EFF4 0038A534  48 04 91 49 */	bl func_803D813C
/* 8038EFF8 0038A538  2C 03 00 00 */	cmpwi r3, 0
/* 8038EFFC 0038A53C  41 82 00 14 */	beq lbl_8038F010
/* 8038F000 0038A540  48 02 17 A1 */	bl func_803B07A0
/* 8038F004 0038A544  7F 03 C3 78 */	mr r3, r24
/* 8038F008 0038A548  38 8D D6 F4 */	addi r4, r13, lbl_806A2394-_SDA_BASE_
/* 8038F00C 0038A54C  48 01 39 A5 */	bl func_803A29B0
lbl_8038F010:
/* 8038F010 0038A550  39 61 00 30 */	addi r11, r1, 0x30
/* 8038F014 0038A554  48 18 85 5D */	bl func_80517570
/* 8038F018 0038A558  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038F01C 0038A55C  7C 08 03 A6 */	mtlr r0
/* 8038F020 0038A560  38 21 00 30 */	addi r1, r1, 0x30
/* 8038F024 0038A564  4E 80 00 20 */	blr 
lbl_8038F028:
/* 8038F028 0038A568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038F02C 0038A56C  7C 08 02 A6 */	mflr r0
/* 8038F030 0038A570  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038F034 0038A574  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038F038 0038A578  7C 7F 1B 78 */	mr r31, r3
/* 8038F03C 0038A57C  48 05 D5 A5 */	bl func_803EC5E0
/* 8038F040 0038A580  2C 03 00 00 */	cmpwi r3, 0
/* 8038F044 0038A584  41 82 00 14 */	beq lbl_8038F058
/* 8038F048 0038A588  3C 60 80 5C */	lis r3, lbl_805C6006@ha
/* 8038F04C 0038A58C  38 80 00 01 */	li r4, 1
/* 8038F050 0038A590  38 63 60 06 */	addi r3, r3, lbl_805C6006@l
/* 8038F054 0038A594  48 06 A3 05 */	bl func_803F9358
lbl_8038F058:
/* 8038F058 0038A598  48 06 A7 35 */	bl func_803F978C
/* 8038F05C 0038A59C  2C 03 00 00 */	cmpwi r3, 0
/* 8038F060 0038A5A0  41 82 00 10 */	beq lbl_8038F070
/* 8038F064 0038A5A4  7F E3 FB 78 */	mr r3, r31
/* 8038F068 0038A5A8  38 8D D6 F8 */	addi r4, r13, lbl_806A2398-_SDA_BASE_
/* 8038F06C 0038A5AC  48 01 39 45 */	bl func_803A29B0
lbl_8038F070:
/* 8038F070 0038A5B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F074 0038A5B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038F078 0038A5B8  7C 08 03 A6 */	mtlr r0
/* 8038F07C 0038A5BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8038F080 0038A5C0  4E 80 00 20 */	blr 
lbl_8038F084:
/* 8038F084 0038A5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038F088 0038A5C8  7C 08 02 A6 */	mflr r0
/* 8038F08C 0038A5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038F090 0038A5D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038F094 0038A5D4  7C 7F 1B 78 */	mr r31, r3
/* 8038F098 0038A5D8  48 05 D5 49 */	bl func_803EC5E0
/* 8038F09C 0038A5DC  2C 03 00 00 */	cmpwi r3, 0
/* 8038F0A0 0038A5E0  41 82 00 30 */	beq lbl_8038F0D0
/* 8038F0A4 0038A5E4  80 7F 00 08 */	lwz r3, 8(r31)
/* 8038F0A8 0038A5E8  81 83 00 00 */	lwz r12, 0(r3)
/* 8038F0AC 0038A5EC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8038F0B0 0038A5F0  7D 89 03 A6 */	mtctr r12
/* 8038F0B4 0038A5F4  4E 80 04 21 */	bctrl 
/* 8038F0B8 0038A5F8  3C 80 80 5C */	lis r4, lbl_805C6010@ha
/* 8038F0BC 0038A5FC  80 7F 00 08 */	lwz r3, 8(r31)
/* 8038F0C0 0038A600  38 84 60 10 */	addi r4, r4, lbl_805C6010@l
/* 8038F0C4 0038A604  38 A0 00 00 */	li r5, 0
/* 8038F0C8 0038A608  48 04 7E 21 */	bl func_803D6EE8
/* 8038F0CC 0038A60C  48 06 A3 99 */	bl func_803F9464
lbl_8038F0D0:
/* 8038F0D0 0038A610  80 7F 00 08 */	lwz r3, 8(r31)
/* 8038F0D4 0038A614  38 80 00 00 */	li r4, 0
/* 8038F0D8 0038A618  48 04 85 79 */	bl func_803D7650
/* 8038F0DC 0038A61C  2C 03 00 00 */	cmpwi r3, 0
/* 8038F0E0 0038A620  41 82 00 10 */	beq lbl_8038F0F0
/* 8038F0E4 0038A624  7F E3 FB 78 */	mr r3, r31
/* 8038F0E8 0038A628  38 8D D6 FC */	addi r4, r13, lbl_806A239C-_SDA_BASE_
/* 8038F0EC 0038A62C  48 01 38 C5 */	bl func_803A29B0
lbl_8038F0F0:
/* 8038F0F0 0038A630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F0F4 0038A634  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038F0F8 0038A638  7C 08 03 A6 */	mtlr r0
/* 8038F0FC 0038A63C  38 21 00 10 */	addi r1, r1, 0x10
/* 8038F100 0038A640  4E 80 00 20 */	blr 
lbl_8038F104:
/* 8038F104 0038A644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038F108 0038A648  7C 08 02 A6 */	mflr r0
/* 8038F10C 0038A64C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038F110 0038A650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038F114 0038A654  3F E0 80 5C */	lis r31, lbl_805C5FE0@ha
/* 8038F118 0038A658  3B FF 5F E0 */	addi r31, r31, lbl_805C5FE0@l
/* 8038F11C 0038A65C  93 C1 00 08 */	stw r30, 8(r1)
/* 8038F120 0038A660  7C 7E 1B 78 */	mr r30, r3
/* 8038F124 0038A664  48 05 D4 BD */	bl func_803EC5E0
/* 8038F128 0038A668  2C 03 00 00 */	cmpwi r3, 0
/* 8038F12C 0038A66C  41 82 00 68 */	beq lbl_8038F194
/* 8038F130 0038A670  80 7E 00 08 */	lwz r3, 8(r30)
/* 8038F134 0038A674  38 9F 00 37 */	addi r4, r31, 0x37
/* 8038F138 0038A678  38 A0 00 00 */	li r5, 0
/* 8038F13C 0038A67C  48 04 7D AD */	bl func_803D6EE8
/* 8038F140 0038A680  80 7E 00 08 */	lwz r3, 8(r30)
/* 8038F144 0038A684  38 9F 00 3C */	addi r4, r31, 0x3c
/* 8038F148 0038A688  48 04 87 65 */	bl func_803D78AC
/* 8038F14C 0038A68C  80 7E 00 08 */	lwz r3, 8(r30)
/* 8038F150 0038A690  38 9F 00 4B */	addi r4, r31, 0x4b
/* 8038F154 0038A694  48 04 87 59 */	bl func_803D78AC
/* 8038F158 0038A698  80 7E 00 08 */	lwz r3, 8(r30)
/* 8038F15C 0038A69C  38 9F 00 5B */	addi r4, r31, 0x5b
/* 8038F160 0038A6A0  48 04 87 4D */	bl func_803D78AC
/* 8038F164 0038A6A4  80 7E 00 08 */	lwz r3, 8(r30)
/* 8038F168 0038A6A8  38 9F 00 6B */	addi r4, r31, 0x6b
/* 8038F16C 0038A6AC  48 04 87 41 */	bl func_803D78AC
/* 8038F170 0038A6B0  80 7E 00 08 */	lwz r3, 8(r30)
/* 8038F174 0038A6B4  38 9F 00 7B */	addi r4, r31, 0x7b
/* 8038F178 0038A6B8  48 04 87 35 */	bl func_803D78AC
/* 8038F17C 0038A6BC  80 7E 00 08 */	lwz r3, 8(r30)
/* 8038F180 0038A6C0  38 9F 00 8B */	addi r4, r31, 0x8b
/* 8038F184 0038A6C4  48 04 87 29 */	bl func_803D78AC
/* 8038F188 0038A6C8  80 7E 00 08 */	lwz r3, 8(r30)
/* 8038F18C 0038A6CC  38 9F 00 9B */	addi r4, r31, 0x9b
/* 8038F190 0038A6D0  48 04 87 1D */	bl func_803D78AC
lbl_8038F194:
/* 8038F194 0038A6D4  7F C3 F3 78 */	mr r3, r30
/* 8038F198 0038A6D8  38 80 00 19 */	li r4, 0x19
/* 8038F19C 0038A6DC  48 05 D4 0D */	bl func_803EC5A8
/* 8038F1A0 0038A6E0  2C 03 00 00 */	cmpwi r3, 0
/* 8038F1A4 0038A6E4  41 82 00 10 */	beq lbl_8038F1B4
/* 8038F1A8 0038A6E8  7F C3 F3 78 */	mr r3, r30
/* 8038F1AC 0038A6EC  38 8D D7 00 */	addi r4, r13, lbl_806A23A0-_SDA_BASE_
/* 8038F1B0 0038A6F0  48 01 38 01 */	bl func_803A29B0
lbl_8038F1B4:
/* 8038F1B4 0038A6F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F1B8 0038A6F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038F1BC 0038A6FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038F1C0 0038A700  7C 08 03 A6 */	mtlr r0
/* 8038F1C4 0038A704  38 21 00 10 */	addi r1, r1, 0x10
/* 8038F1C8 0038A708  4E 80 00 20 */	blr 
lbl_8038F1CC:
/* 8038F1CC 0038A70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038F1D0 0038A710  7C 08 02 A6 */	mflr r0
/* 8038F1D4 0038A714  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038F1D8 0038A718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038F1DC 0038A71C  3F E0 80 5C */	lis r31, lbl_805C5FE0@ha
/* 8038F1E0 0038A720  3B FF 5F E0 */	addi r31, r31, lbl_805C5FE0@l
/* 8038F1E4 0038A724  93 C1 00 08 */	stw r30, 8(r1)
/* 8038F1E8 0038A728  7C 7E 1B 78 */	mr r30, r3
/* 8038F1EC 0038A72C  48 05 D3 F5 */	bl func_803EC5E0
/* 8038F1F0 0038A730  2C 03 00 00 */	cmpwi r3, 0
/* 8038F1F4 0038A734  41 82 00 28 */	beq lbl_8038F21C
/* 8038F1F8 0038A738  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8038F1FC 0038A73C  81 83 00 00 */	lwz r12, 0(r3)
/* 8038F200 0038A740  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8038F204 0038A744  7D 89 03 A6 */	mtctr r12
/* 8038F208 0038A748  4E 80 04 21 */	bctrl 
/* 8038F20C 0038A74C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8038F210 0038A750  38 9F 00 30 */	addi r4, r31, 0x30
/* 8038F214 0038A754  38 A0 00 00 */	li r5, 0
/* 8038F218 0038A758  48 04 7C D1 */	bl func_803D6EE8
lbl_8038F21C:
/* 8038F21C 0038A75C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8038F220 0038A760  38 80 00 00 */	li r4, 0
/* 8038F224 0038A764  48 04 84 2D */	bl func_803D7650
/* 8038F228 0038A768  2C 03 00 00 */	cmpwi r3, 0
/* 8038F22C 0038A76C  41 82 00 14 */	beq lbl_8038F240
/* 8038F230 0038A770  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8038F234 0038A774  38 9F 00 37 */	addi r4, r31, 0x37
/* 8038F238 0038A778  38 A0 00 00 */	li r5, 0
/* 8038F23C 0038A77C  48 04 7C AD */	bl func_803D6EE8
lbl_8038F240:
/* 8038F240 0038A780  38 60 00 00 */	li r3, 0
/* 8038F244 0038A784  48 04 30 01 */	bl func_803D2244
/* 8038F248 0038A788  7C 64 1B 78 */	mr r4, r3
/* 8038F24C 0038A78C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8038F250 0038A790  48 07 79 D9 */	bl func_80406C28
/* 8038F254 0038A794  38 60 00 00 */	li r3, 0
/* 8038F258 0038A798  48 04 30 15 */	bl func_803D226C
/* 8038F25C 0038A79C  7C 64 1B 78 */	mr r4, r3
/* 8038F260 0038A7A0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8038F264 0038A7A4  48 07 79 C5 */	bl func_80406C28
/* 8038F268 0038A7A8  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8038F26C 0038A7AC  48 07 79 D9 */	bl func_80406C44
/* 8038F270 0038A7B0  2C 03 00 00 */	cmpwi r3, 0
/* 8038F274 0038A7B4  41 82 00 58 */	beq lbl_8038F2CC
/* 8038F278 0038A7B8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8038F27C 0038A7BC  48 07 79 C9 */	bl func_80406C44
/* 8038F280 0038A7C0  2C 03 00 00 */	cmpwi r3, 0
/* 8038F284 0038A7C4  41 82 00 48 */	beq lbl_8038F2CC
/* 8038F288 0038A7C8  38 60 00 4B */	li r3, 0x4b
/* 8038F28C 0038A7CC  48 06 A1 91 */	bl func_803F941C
/* 8038F290 0038A7D0  38 7F 00 AB */	addi r3, r31, 0xab
/* 8038F294 0038A7D4  38 80 FF FF */	li r4, -1
/* 8038F298 0038A7D8  38 A0 FF FF */	li r5, -1
/* 8038F29C 0038A7DC  48 06 AB 51 */	bl func_803F9DEC
/* 8038F2A0 0038A7E0  38 7F 00 BC */	addi r3, r31, 0xbc
/* 8038F2A4 0038A7E4  38 80 00 00 */	li r4, 0
/* 8038F2A8 0038A7E8  38 A0 00 00 */	li r5, 0
/* 8038F2AC 0038A7EC  48 06 AA 6D */	bl func_803F9D18
/* 8038F2B0 0038A7F0  7F C3 F3 78 */	mr r3, r30
/* 8038F2B4 0038A7F4  38 80 00 00 */	li r4, 0
/* 8038F2B8 0038A7F8  48 06 1F D5 */	bl func_803F128C
/* 8038F2BC 0038A7FC  7F C3 F3 78 */	mr r3, r30
/* 8038F2C0 0038A800  38 8D D7 04 */	addi r4, r13, lbl_806A23A4-_SDA_BASE_
/* 8038F2C4 0038A804  48 01 36 ED */	bl func_803A29B0
/* 8038F2C8 0038A808  48 00 00 2C */	b lbl_8038F2F4
lbl_8038F2CC:
/* 8038F2CC 0038A80C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8038F2D0 0038A810  7F C3 F3 78 */	mr r3, r30
/* 8038F2D4 0038A814  38 BF 00 CB */	addi r5, r31, 0xcb
/* 8038F2D8 0038A818  48 00 01 95 */	bl func_8038F46C
/* 8038F2DC 0038A81C  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8038F2E0 0038A820  7F C3 F3 78 */	mr r3, r30
/* 8038F2E4 0038A824  38 BF 00 D5 */	addi r5, r31, 0xd5
/* 8038F2E8 0038A828  48 00 01 85 */	bl func_8038F46C
/* 8038F2EC 0038A82C  7F C3 F3 78 */	mr r3, r30
/* 8038F2F0 0038A830  48 00 02 09 */	bl func_8038F4F8
lbl_8038F2F4:
/* 8038F2F4 0038A834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F2F8 0038A838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038F2FC 0038A83C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038F300 0038A840  7C 08 03 A6 */	mtlr r0
/* 8038F304 0038A844  38 21 00 10 */	addi r1, r1, 0x10
/* 8038F308 0038A848  4E 80 00 20 */	blr 
lbl_8038F30C:
/* 8038F30C 0038A84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038F310 0038A850  7C 08 02 A6 */	mflr r0
/* 8038F314 0038A854  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038F318 0038A858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038F31C 0038A85C  7C 7F 1B 78 */	mr r31, r3
/* 8038F320 0038A860  48 05 D2 C1 */	bl func_803EC5E0
/* 8038F324 0038A864  2C 03 00 00 */	cmpwi r3, 0
/* 8038F328 0038A868  41 82 00 30 */	beq lbl_8038F358
/* 8038F32C 0038A86C  3C 80 80 5C */	lis r4, lbl_805C60BF@ha
/* 8038F330 0038A870  80 7F 00 08 */	lwz r3, 8(r31)
/* 8038F334 0038A874  38 84 60 BF */	addi r4, r4, lbl_805C60BF@l
/* 8038F338 0038A878  38 A0 00 00 */	li r5, 0
/* 8038F33C 0038A87C  48 04 7B AD */	bl func_803D6EE8
/* 8038F340 0038A880  80 7F 00 08 */	lwz r3, 8(r31)
/* 8038F344 0038A884  48 04 85 81 */	bl func_803D78C4
/* 8038F348 0038A888  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8038F34C 0038A88C  38 8D 8E C1 */	addi r4, r13, lbl_8069DB61-_SDA_BASE_
/* 8038F350 0038A890  38 A0 00 00 */	li r5, 0
/* 8038F354 0038A894  48 04 7B 95 */	bl func_803D6EE8
lbl_8038F358:
/* 8038F358 0038A898  80 7F 00 08 */	lwz r3, 8(r31)
/* 8038F35C 0038A89C  38 80 00 00 */	li r4, 0
/* 8038F360 0038A8A0  48 04 82 F1 */	bl func_803D7650
/* 8038F364 0038A8A4  2C 03 00 00 */	cmpwi r3, 0
/* 8038F368 0038A8A8  41 82 00 24 */	beq lbl_8038F38C
/* 8038F36C 0038A8AC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8038F370 0038A8B0  38 80 00 00 */	li r4, 0
/* 8038F374 0038A8B4  48 04 82 DD */	bl func_803D7650
/* 8038F378 0038A8B8  2C 03 00 00 */	cmpwi r3, 0
/* 8038F37C 0038A8BC  41 82 00 10 */	beq lbl_8038F38C
/* 8038F380 0038A8C0  7F E3 FB 78 */	mr r3, r31
/* 8038F384 0038A8C4  38 8D D7 08 */	addi r4, r13, lbl_806A23A8-_SDA_BASE_
/* 8038F388 0038A8C8  48 01 36 29 */	bl func_803A29B0
lbl_8038F38C:
/* 8038F38C 0038A8CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F390 0038A8D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038F394 0038A8D4  7C 08 03 A6 */	mtlr r0
/* 8038F398 0038A8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8038F39C 0038A8DC  4E 80 00 20 */	blr 
lbl_8038F3A0:
/* 8038F3A0 0038A8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038F3A4 0038A8E4  7C 08 02 A6 */	mflr r0
/* 8038F3A8 0038A8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038F3AC 0038A8EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038F3B0 0038A8F0  7C 7F 1B 78 */	mr r31, r3
/* 8038F3B4 0038A8F4  48 05 D2 2D */	bl func_803EC5E0
/* 8038F3B8 0038A8F8  2C 03 00 00 */	cmpwi r3, 0
/* 8038F3BC 0038A8FC  41 82 00 4C */	beq lbl_8038F408
/* 8038F3C0 0038A900  80 7F 00 08 */	lwz r3, 8(r31)
/* 8038F3C4 0038A904  81 83 00 00 */	lwz r12, 0(r3)
/* 8038F3C8 0038A908  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8038F3CC 0038A90C  7D 89 03 A6 */	mtctr r12
/* 8038F3D0 0038A910  4E 80 04 21 */	bctrl 
/* 8038F3D4 0038A914  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8038F3D8 0038A918  81 83 00 00 */	lwz r12, 0(r3)
/* 8038F3DC 0038A91C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8038F3E0 0038A920  7D 89 03 A6 */	mtctr r12
/* 8038F3E4 0038A924  4E 80 04 21 */	bctrl 
/* 8038F3E8 0038A928  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8038F3EC 0038A92C  2C 00 00 00 */	cmpwi r0, 0
/* 8038F3F0 0038A930  41 82 00 18 */	beq lbl_8038F408
/* 8038F3F4 0038A934  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8038F3F8 0038A938  81 83 00 00 */	lwz r12, 0(r3)
/* 8038F3FC 0038A93C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8038F400 0038A940  7D 89 03 A6 */	mtctr r12
/* 8038F404 0038A944  4E 80 04 21 */	bctrl 
lbl_8038F408:
/* 8038F408 0038A948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F40C 0038A94C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038F410 0038A950  7C 08 03 A6 */	mtlr r0
/* 8038F414 0038A954  38 21 00 10 */	addi r1, r1, 0x10
/* 8038F418 0038A958  4E 80 00 20 */	blr 

.global func_8038F41C
func_8038F41C:
/* 8038F41C 0038A95C  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8038F420 0038A960  2C 00 00 00 */	cmpwi r0, 0
/* 8038F424 0038A964  41 82 00 0C */	beq lbl_8038F430
/* 8038F428 0038A968  38 8D D6 F0 */	addi r4, r13, lbl_806A2390-_SDA_BASE_
/* 8038F42C 0038A96C  48 01 35 84 */	b func_803A29B0
lbl_8038F430:
/* 8038F430 0038A970  38 8D D6 F4 */	addi r4, r13, lbl_806A2394-_SDA_BASE_
/* 8038F434 0038A974  48 01 35 7C */	b func_803A29B0

.global func_8038F438
func_8038F438:
/* 8038F438 0038A978  38 8D D7 08 */	addi r4, r13, lbl_806A23A8-_SDA_BASE_
/* 8038F43C 0038A97C  48 01 35 74 */	b func_803A29B0

.global func_8038F440
func_8038F440:
/* 8038F440 0038A980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038F444 0038A984  7C 08 02 A6 */	mflr r0
/* 8038F448 0038A988  38 8D D7 08 */	addi r4, r13, lbl_806A23A8-_SDA_BASE_
/* 8038F44C 0038A98C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038F450 0038A990  48 01 35 69 */	bl func_803A29B8
/* 8038F454 0038A994  7C 60 00 34 */	cntlzw r0, r3
/* 8038F458 0038A998  54 03 D9 7E */	srwi r3, r0, 5
/* 8038F45C 0038A99C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F460 0038A9A0  7C 08 03 A6 */	mtlr r0
/* 8038F464 0038A9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8038F468 0038A9A8  4E 80 00 20 */	blr 

.global func_8038F46C
func_8038F46C:
/* 8038F46C 0038A9AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038F470 0038A9B0  7C 08 02 A6 */	mflr r0
/* 8038F474 0038A9B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038F478 0038A9B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8038F47C 0038A9BC  48 18 80 BD */	bl func_80517538
/* 8038F480 0038A9C0  7C 9E 23 78 */	mr r30, r4
/* 8038F484 0038A9C4  7C 7D 1B 78 */	mr r29, r3
/* 8038F488 0038A9C8  7C BF 2B 78 */	mr r31, r5
/* 8038F48C 0038A9CC  7F C3 F3 78 */	mr r3, r30
/* 8038F490 0038A9D0  48 07 77 BD */	bl func_80406C4C
/* 8038F494 0038A9D4  2C 03 00 00 */	cmpwi r3, 0
/* 8038F498 0038A9D8  41 82 00 28 */	beq lbl_8038F4C0
/* 8038F49C 0038A9DC  80 7D 00 08 */	lwz r3, 8(r29)
/* 8038F4A0 0038A9E0  7F E4 FB 78 */	mr r4, r31
/* 8038F4A4 0038A9E4  38 A0 00 01 */	li r5, 1
/* 8038F4A8 0038A9E8  48 04 7A 41 */	bl func_803D6EE8
/* 8038F4AC 0038A9EC  80 7D 00 08 */	lwz r3, 8(r29)
/* 8038F4B0 0038A9F0  38 80 00 01 */	li r4, 1
/* 8038F4B4 0038A9F4  C0 22 17 70 */	lfs f1, lbl_806AC9F0-_SDA2_BASE_(r2)
/* 8038F4B8 0038A9F8  48 04 7D 21 */	bl func_803D71D8
/* 8038F4BC 0038A9FC  48 00 00 24 */	b lbl_8038F4E0
lbl_8038F4C0:
/* 8038F4C0 0038AA00  7F C3 F3 78 */	mr r3, r30
/* 8038F4C4 0038AA04  48 07 77 B1 */	bl func_80406C74
/* 8038F4C8 0038AA08  2C 03 00 00 */	cmpwi r3, 0
/* 8038F4CC 0038AA0C  41 82 00 14 */	beq lbl_8038F4E0
/* 8038F4D0 0038AA10  80 7D 00 08 */	lwz r3, 8(r29)
/* 8038F4D4 0038AA14  7F E4 FB 78 */	mr r4, r31
/* 8038F4D8 0038AA18  38 A0 00 01 */	li r5, 1
/* 8038F4DC 0038AA1C  48 04 7A 0D */	bl func_803D6EE8
lbl_8038F4E0:
/* 8038F4E0 0038AA20  39 61 00 20 */	addi r11, r1, 0x20
/* 8038F4E4 0038AA24  48 18 80 A1 */	bl func_80517584
/* 8038F4E8 0038AA28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038F4EC 0038AA2C  7C 08 03 A6 */	mtlr r0
/* 8038F4F0 0038AA30  38 21 00 20 */	addi r1, r1, 0x20
/* 8038F4F4 0038AA34  4E 80 00 20 */	blr 

.global func_8038F4F8
func_8038F4F8:
/* 8038F4F8 0038AA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038F4FC 0038AA3C  7C 08 02 A6 */	mflr r0
/* 8038F500 0038AA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038F504 0038AA44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038F508 0038AA48  7C 7F 1B 78 */	mr r31, r3
/* 8038F50C 0038AA4C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8038F510 0038AA50  48 07 77 3D */	bl func_80406C4C
/* 8038F514 0038AA54  2C 03 00 00 */	cmpwi r3, 0
/* 8038F518 0038AA58  41 82 00 1C */	beq lbl_8038F534
/* 8038F51C 0038AA5C  3C 80 80 5C */	lis r4, lbl_805C60C6@ha
/* 8038F520 0038AA60  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8038F524 0038AA64  38 84 60 C6 */	addi r4, r4, lbl_805C60C6@l
/* 8038F528 0038AA68  38 A0 00 00 */	li r5, 0
/* 8038F52C 0038AA6C  48 04 79 BD */	bl func_803D6EE8
/* 8038F530 0038AA70  48 00 00 28 */	b lbl_8038F558
lbl_8038F534:
/* 8038F534 0038AA74  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8038F538 0038AA78  48 07 77 15 */	bl func_80406C4C
/* 8038F53C 0038AA7C  2C 03 00 00 */	cmpwi r3, 0
/* 8038F540 0038AA80  41 82 00 18 */	beq lbl_8038F558
/* 8038F544 0038AA84  3C 80 80 5C */	lis r4, lbl_805C60C6@ha
/* 8038F548 0038AA88  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8038F54C 0038AA8C  38 84 60 C6 */	addi r4, r4, lbl_805C60C6@l
/* 8038F550 0038AA90  38 A0 00 00 */	li r5, 0
/* 8038F554 0038AA94  48 04 79 95 */	bl func_803D6EE8
lbl_8038F558:
/* 8038F558 0038AA98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F55C 0038AA9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038F560 0038AAA0  7C 08 03 A6 */	mtlr r0
/* 8038F564 0038AAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8038F568 0038AAA8  4E 80 00 20 */	blr 
/* 8038F56C 0038AAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038F570 0038AAB0  7C 08 02 A6 */	mflr r0
/* 8038F574 0038AAB4  2C 03 00 00 */	cmpwi r3, 0
/* 8038F578 0038AAB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038F57C 0038AABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038F580 0038AAC0  7C 9F 23 78 */	mr r31, r4
/* 8038F584 0038AAC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8038F588 0038AAC8  7C 7E 1B 78 */	mr r30, r3
/* 8038F58C 0038AACC  41 82 00 1C */	beq lbl_8038F5A8
/* 8038F590 0038AAD0  38 80 00 00 */	li r4, 0
/* 8038F594 0038AAD4  48 01 33 51 */	bl func_803A28E4
/* 8038F598 0038AAD8  2C 1F 00 00 */	cmpwi r31, 0
/* 8038F59C 0038AADC  40 81 00 0C */	ble lbl_8038F5A8
/* 8038F5A0 0038AAE0  7F C3 F3 78 */	mr r3, r30
/* 8038F5A4 0038AAE4  48 07 A5 9D */	bl __dl__FPv
lbl_8038F5A8:
/* 8038F5A8 0038AAE8  7F C3 F3 78 */	mr r3, r30
/* 8038F5AC 0038AAEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038F5B0 0038AAF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038F5B4 0038AAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F5B8 0038AAF8  7C 08 03 A6 */	mtlr r0
/* 8038F5BC 0038AAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8038F5C0 0038AB00  4E 80 00 20 */	blr 
/* 8038F5C4 0038AB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038F5C8 0038AB08  7C 08 02 A6 */	mflr r0
/* 8038F5CC 0038AB0C  2C 03 00 00 */	cmpwi r3, 0
/* 8038F5D0 0038AB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038F5D4 0038AB14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038F5D8 0038AB18  7C 9F 23 78 */	mr r31, r4
/* 8038F5DC 0038AB1C  93 C1 00 08 */	stw r30, 8(r1)
/* 8038F5E0 0038AB20  7C 7E 1B 78 */	mr r30, r3
/* 8038F5E4 0038AB24  41 82 00 1C */	beq lbl_8038F600
/* 8038F5E8 0038AB28  38 80 00 00 */	li r4, 0
/* 8038F5EC 0038AB2C  4B EF 33 7D */	bl func_80282968
/* 8038F5F0 0038AB30  2C 1F 00 00 */	cmpwi r31, 0
/* 8038F5F4 0038AB34  40 81 00 0C */	ble lbl_8038F600
/* 8038F5F8 0038AB38  7F C3 F3 78 */	mr r3, r30
/* 8038F5FC 0038AB3C  48 07 A5 45 */	bl __dl__FPv
lbl_8038F600:
/* 8038F600 0038AB40  7F C3 F3 78 */	mr r3, r30
/* 8038F604 0038AB44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038F608 0038AB48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038F60C 0038AB4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F610 0038AB50  7C 08 03 A6 */	mtlr r0
/* 8038F614 0038AB54  38 21 00 10 */	addi r1, r1, 0x10
/* 8038F618 0038AB58  4E 80 00 20 */	blr 
/* 8038F61C 0038AB5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038F620 0038AB60  7C 08 02 A6 */	mflr r0
/* 8038F624 0038AB64  38 6D D6 F0 */	addi r3, r13, lbl_806A2390-_SDA_BASE_
/* 8038F628 0038AB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038F62C 0038AB6C  48 00 00 45 */	bl func_8038F670
/* 8038F630 0038AB70  38 6D D6 F4 */	addi r3, r13, lbl_806A2394-_SDA_BASE_
/* 8038F634 0038AB74  48 00 00 4D */	bl func_8038F680
/* 8038F638 0038AB78  38 6D D6 F8 */	addi r3, r13, lbl_806A2398-_SDA_BASE_
/* 8038F63C 0038AB7C  48 00 00 55 */	bl func_8038F690
/* 8038F640 0038AB80  38 6D D6 FC */	addi r3, r13, lbl_806A239C-_SDA_BASE_
/* 8038F644 0038AB84  48 00 00 5D */	bl func_8038F6A0
/* 8038F648 0038AB88  38 6D D7 00 */	addi r3, r13, lbl_806A23A0-_SDA_BASE_
/* 8038F64C 0038AB8C  48 00 00 65 */	bl func_8038F6B0
/* 8038F650 0038AB90  38 6D D7 04 */	addi r3, r13, lbl_806A23A4-_SDA_BASE_
/* 8038F654 0038AB94  48 00 00 6D */	bl func_8038F6C0
/* 8038F658 0038AB98  38 6D D7 08 */	addi r3, r13, lbl_806A23A8-_SDA_BASE_
/* 8038F65C 0038AB9C  48 00 00 75 */	bl func_8038F6D0
/* 8038F660 0038ABA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F664 0038ABA4  7C 08 03 A6 */	mtlr r0
/* 8038F668 0038ABA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8038F66C 0038ABAC  4E 80 00 20 */	blr 

.global func_8038F670
func_8038F670:
/* 8038F670 0038ABB0  3C 80 80 5C */	lis r4, lbl_805C6174@ha
/* 8038F674 0038ABB4  38 84 61 74 */	addi r4, r4, lbl_805C6174@l
/* 8038F678 0038ABB8  90 83 00 00 */	stw r4, 0(r3)
/* 8038F67C 0038ABBC  4E 80 00 20 */	blr 

.global func_8038F680
func_8038F680:
/* 8038F680 0038ABC0  3C 80 80 5C */	lis r4, lbl_805C6164@ha
/* 8038F684 0038ABC4  38 84 61 64 */	addi r4, r4, lbl_805C6164@l
/* 8038F688 0038ABC8  90 83 00 00 */	stw r4, 0(r3)
/* 8038F68C 0038ABCC  4E 80 00 20 */	blr 

.global func_8038F690
func_8038F690:
/* 8038F690 0038ABD0  3C 80 80 5C */	lis r4, lbl_805C6154@ha
/* 8038F694 0038ABD4  38 84 61 54 */	addi r4, r4, lbl_805C6154@l
/* 8038F698 0038ABD8  90 83 00 00 */	stw r4, 0(r3)
/* 8038F69C 0038ABDC  4E 80 00 20 */	blr 

.global func_8038F6A0
func_8038F6A0:
/* 8038F6A0 0038ABE0  3C 80 80 5C */	lis r4, lbl_805C6144@ha
/* 8038F6A4 0038ABE4  38 84 61 44 */	addi r4, r4, lbl_805C6144@l
/* 8038F6A8 0038ABE8  90 83 00 00 */	stw r4, 0(r3)
/* 8038F6AC 0038ABEC  4E 80 00 20 */	blr 

.global func_8038F6B0
func_8038F6B0:
/* 8038F6B0 0038ABF0  3C 80 80 5C */	lis r4, lbl_805C6134@ha
/* 8038F6B4 0038ABF4  38 84 61 34 */	addi r4, r4, lbl_805C6134@l
/* 8038F6B8 0038ABF8  90 83 00 00 */	stw r4, 0(r3)
/* 8038F6BC 0038ABFC  4E 80 00 20 */	blr 

.global func_8038F6C0
func_8038F6C0:
/* 8038F6C0 0038AC00  3C 80 80 5C */	lis r4, lbl_805C6124@ha
/* 8038F6C4 0038AC04  38 84 61 24 */	addi r4, r4, lbl_805C6124@l
/* 8038F6C8 0038AC08  90 83 00 00 */	stw r4, 0(r3)
/* 8038F6CC 0038AC0C  4E 80 00 20 */	blr 

.global func_8038F6D0
func_8038F6D0:
/* 8038F6D0 0038AC10  3C 80 80 5C */	lis r4, lbl_805C6114@ha
/* 8038F6D4 0038AC14  38 84 61 14 */	addi r4, r4, lbl_805C6114@l
/* 8038F6D8 0038AC18  90 83 00 00 */	stw r4, 0(r3)
/* 8038F6DC 0038AC1C  4E 80 00 20 */	blr 
/* 8038F6E0 0038AC20  80 64 00 00 */	lwz r3, 0(r4)
/* 8038F6E4 0038AC24  4B FF FC BC */	b lbl_8038F3A0
/* 8038F6E8 0038AC28  80 64 00 00 */	lwz r3, 0(r4)
/* 8038F6EC 0038AC2C  4B FF FC 20 */	b lbl_8038F30C
/* 8038F6F0 0038AC30  80 64 00 00 */	lwz r3, 0(r4)
/* 8038F6F4 0038AC34  4B FF FA D8 */	b lbl_8038F1CC
/* 8038F6F8 0038AC38  80 64 00 00 */	lwz r3, 0(r4)
/* 8038F6FC 0038AC3C  4B FF FA 08 */	b lbl_8038F104
/* 8038F700 0038AC40  80 64 00 00 */	lwz r3, 0(r4)
/* 8038F704 0038AC44  4B FF F9 80 */	b lbl_8038F084
/* 8038F708 0038AC48  80 64 00 00 */	lwz r3, 0(r4)
/* 8038F70C 0038AC4C  4B FF F9 1C */	b lbl_8038F028
/* 8038F710 0038AC50  80 64 00 00 */	lwz r3, 0(r4)
/* 8038F714 0038AC54  4B FF F8 10 */	b lbl_8038EF24
