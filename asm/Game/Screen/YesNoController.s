.include "macros.inc"

.text

.global func_80391E0C
func_80391E0C:
/* 80391E0C 0038D34C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80391E10 0038D350  7C 08 02 A6 */	mflr r0
/* 80391E14 0038D354  90 01 00 24 */	stw r0, 0x24(r1)
/* 80391E18 0038D358  39 61 00 20 */	addi r11, r1, 0x20
/* 80391E1C 0038D35C  48 18 57 1D */	bl func_80517538
/* 80391E20 0038D360  3F E0 80 5C */	lis r31, lbl_805C6518@ha
/* 80391E24 0038D364  7C 7D 1B 78 */	mr r29, r3
/* 80391E28 0038D368  3B FF 65 18 */	addi r31, r31, lbl_805C6518@l
/* 80391E2C 0038D36C  7C 9E 23 78 */	mr r30, r4
/* 80391E30 0038D370  38 9F 00 41 */	addi r4, r31, 0x41
/* 80391E34 0038D374  48 01 0A 99 */	bl func_803A28CC
/* 80391E38 0038D378  3C 80 80 5C */	lis r4, lbl_805C65AC@ha
/* 80391E3C 0038D37C  38 00 00 00 */	li r0, 0
/* 80391E40 0038D380  38 84 65 AC */	addi r4, r4, lbl_805C65AC@l
/* 80391E44 0038D384  93 DD 00 08 */	stw r30, 8(r29)
/* 80391E48 0038D388  38 60 00 40 */	li r3, 0x40
/* 80391E4C 0038D38C  90 9D 00 00 */	stw r4, 0(r29)
/* 80391E50 0038D390  98 1D 00 0C */	stb r0, 0xc(r29)
/* 80391E54 0038D394  90 1D 00 10 */	stw r0, 0x10(r29)
/* 80391E58 0038D398  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80391E5C 0038D39C  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80391E60 0038D3A0  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 80391E64 0038D3A4  90 1D 00 20 */	stw r0, 0x20(r29)
/* 80391E68 0038D3A8  48 07 7C 91 */	bl func_80409AF8
/* 80391E6C 0038D3AC  2C 03 00 00 */	cmpwi r3, 0
/* 80391E70 0038D3B0  7C 64 1B 78 */	mr r4, r3
/* 80391E74 0038D3B4  41 82 00 20 */	beq lbl_80391E94
/* 80391E78 0038D3B8  80 9D 00 08 */	lwz r4, 8(r29)
/* 80391E7C 0038D3BC  38 BF 00 56 */	addi r5, r31, 0x56
/* 80391E80 0038D3C0  38 DF 00 5C */	addi r6, r31, 0x5c
/* 80391E84 0038D3C4  38 E0 00 00 */	li r7, 0
/* 80391E88 0038D3C8  39 00 00 01 */	li r8, 1
/* 80391E8C 0038D3CC  4B FB 9E F5 */	bl func_8034BD80
/* 80391E90 0038D3D0  7C 64 1B 78 */	mr r4, r3
lbl_80391E94:
/* 80391E94 0038D3D4  90 9D 00 10 */	stw r4, 0x10(r29)
/* 80391E98 0038D3D8  38 00 00 00 */	li r0, 0
/* 80391E9C 0038D3DC  38 60 00 40 */	li r3, 0x40
/* 80391EA0 0038D3E0  98 04 00 22 */	stb r0, 0x22(r4)
/* 80391EA4 0038D3E4  48 07 7C 55 */	bl func_80409AF8
/* 80391EA8 0038D3E8  2C 03 00 00 */	cmpwi r3, 0
/* 80391EAC 0038D3EC  7C 65 1B 78 */	mr r5, r3
/* 80391EB0 0038D3F0  41 82 00 20 */	beq lbl_80391ED0
/* 80391EB4 0038D3F4  80 9D 00 08 */	lwz r4, 8(r29)
/* 80391EB8 0038D3F8  38 BF 00 65 */	addi r5, r31, 0x65
/* 80391EBC 0038D3FC  38 DF 00 6A */	addi r6, r31, 0x6a
/* 80391EC0 0038D400  38 E0 00 00 */	li r7, 0
/* 80391EC4 0038D404  39 00 00 01 */	li r8, 1
/* 80391EC8 0038D408  4B FB 9E B9 */	bl func_8034BD80
/* 80391ECC 0038D40C  7C 65 1B 78 */	mr r5, r3
lbl_80391ED0:
/* 80391ED0 0038D410  90 BD 00 14 */	stw r5, 0x14(r29)
/* 80391ED4 0038D414  38 00 00 00 */	li r0, 0
/* 80391ED8 0038D418  7F A3 EB 78 */	mr r3, r29
/* 80391EDC 0038D41C  38 8D D7 50 */	addi r4, r13, lbl_806A23F0-_SDA_BASE_
/* 80391EE0 0038D420  98 05 00 22 */	stb r0, 0x22(r5)
/* 80391EE4 0038D424  48 01 0A 65 */	bl func_803A2948
/* 80391EE8 0038D428  39 61 00 20 */	addi r11, r1, 0x20
/* 80391EEC 0038D42C  7F A3 EB 78 */	mr r3, r29
/* 80391EF0 0038D430  48 18 56 95 */	bl func_80517584
/* 80391EF4 0038D434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80391EF8 0038D438  7C 08 03 A6 */	mtlr r0
/* 80391EFC 0038D43C  38 21 00 20 */	addi r1, r1, 0x20
/* 80391F00 0038D440  4E 80 00 20 */	blr 

.global func_80391F04
func_80391F04:
/* 80391F04 0038D444  38 00 00 01 */	li r0, 1
/* 80391F08 0038D448  38 8D D7 50 */	addi r4, r13, lbl_806A23F0-_SDA_BASE_
/* 80391F0C 0038D44C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80391F10 0038D450  48 01 0A A0 */	b func_803A29B0

.global func_80391F14
func_80391F14:
/* 80391F14 0038D454  38 00 00 00 */	li r0, 0
/* 80391F18 0038D458  38 8D D7 60 */	addi r4, r13, lbl_806A2400-_SDA_BASE_
/* 80391F1C 0038D45C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80391F20 0038D460  48 01 0A 90 */	b func_803A29B0
.global lbl_80391F24
lbl_80391F24:
/* 80391F24 0038D464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80391F28 0038D468  7C 08 02 A6 */	mflr r0
/* 80391F2C 0038D46C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80391F30 0038D470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80391F34 0038D474  7C 7F 1B 78 */	mr r31, r3
/* 80391F38 0038D478  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80391F3C 0038D47C  2C 00 00 00 */	cmpwi r0, 0
/* 80391F40 0038D480  41 82 00 18 */	beq lbl_80391F58
/* 80391F44 0038D484  48 01 0A 59 */	bl func_803A299C
/* 80391F48 0038D488  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80391F4C 0038D48C  4B FB 9F 39 */	bl func_8034BE84
/* 80391F50 0038D490  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80391F54 0038D494  4B FB 9F 31 */	bl func_8034BE84
lbl_80391F58:
/* 80391F58 0038D498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80391F5C 0038D49C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80391F60 0038D4A0  7C 08 03 A6 */	mtlr r0
/* 80391F64 0038D4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80391F68 0038D4A8  4E 80 00 20 */	blr 

.global func_80391F6C
func_80391F6C:
/* 80391F6C 0038D4AC  38 8D D7 5C */	addi r4, r13, lbl_806A23FC-_SDA_BASE_
/* 80391F70 0038D4B0  48 01 0A 48 */	b func_803A29B8

.global func_80391F74
func_80391F74:
/* 80391F74 0038D4B4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80391F78 0038D4B8  88 63 00 20 */	lbz r3, 0x20(r3)
/* 80391F7C 0038D4BC  4E 80 00 20 */	blr 

.global func_80391F80
func_80391F80:
/* 80391F80 0038D4C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80391F84 0038D4C4  7C 08 02 A6 */	mflr r0
/* 80391F88 0038D4C8  38 8D D7 58 */	addi r4, r13, lbl_806A23F8-_SDA_BASE_
/* 80391F8C 0038D4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80391F90 0038D4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80391F94 0038D4D4  3B E0 00 00 */	li r31, 0
/* 80391F98 0038D4D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80391F9C 0038D4DC  7C 7E 1B 78 */	mr r30, r3
/* 80391FA0 0038D4E0  48 01 0A 19 */	bl func_803A29B8
/* 80391FA4 0038D4E4  2C 03 00 00 */	cmpwi r3, 0
/* 80391FA8 0038D4E8  41 82 00 18 */	beq lbl_80391FC0
/* 80391FAC 0038D4EC  7F C3 F3 78 */	mr r3, r30
/* 80391FB0 0038D4F0  48 05 A6 31 */	bl func_803EC5E0
/* 80391FB4 0038D4F4  2C 03 00 00 */	cmpwi r3, 0
/* 80391FB8 0038D4F8  41 82 00 08 */	beq lbl_80391FC0
/* 80391FBC 0038D4FC  3B E0 00 01 */	li r31, 1
lbl_80391FC0:
/* 80391FC0 0038D500  7F E3 FB 78 */	mr r3, r31
/* 80391FC4 0038D504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80391FC8 0038D508  83 C1 00 08 */	lwz r30, 8(r1)
/* 80391FCC 0038D50C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80391FD0 0038D510  7C 08 03 A6 */	mtlr r0
/* 80391FD4 0038D514  38 21 00 10 */	addi r1, r1, 0x10
/* 80391FD8 0038D518  4E 80 00 20 */	blr 

.global func_80391FDC
func_80391FDC:
/* 80391FDC 0038D51C  90 83 00 18 */	stw r4, 0x18(r3)
/* 80391FE0 0038D520  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80391FE4 0038D524  90 C3 00 20 */	stw r6, 0x20(r3)
/* 80391FE8 0038D528  4E 80 00 20 */	blr 

.global func_80391FEC
func_80391FEC:
/* 80391FEC 0038D52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80391FF0 0038D530  7C 08 02 A6 */	mflr r0
/* 80391FF4 0038D534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80391FF8 0038D538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80391FFC 0038D53C  7C 7F 1B 78 */	mr r31, r3
/* 80392000 0038D540  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80392004 0038D544  4B FB 9F 45 */	bl func_8034BF48
/* 80392008 0038D548  2C 03 00 00 */	cmpwi r3, 0
/* 8039200C 0038D54C  41 82 00 0C */	beq lbl_80392018
/* 80392010 0038D550  38 60 00 01 */	li r3, 1
/* 80392014 0038D554  48 00 00 0C */	b lbl_80392020
lbl_80392018:
/* 80392018 0038D558  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8039201C 0038D55C  4B FB 9F 2D */	bl func_8034BF48
lbl_80392020:
/* 80392020 0038D560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80392024 0038D564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80392028 0038D568  7C 08 03 A6 */	mtlr r0
/* 8039202C 0038D56C  38 21 00 10 */	addi r1, r1, 0x10
/* 80392030 0038D570  4E 80 00 20 */	blr 

.global func_80392034
func_80392034:
/* 80392034 0038D574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80392038 0038D578  7C 08 02 A6 */	mflr r0
/* 8039203C 0038D57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392040 0038D580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80392044 0038D584  7C 9F 23 78 */	mr r31, r4
/* 80392048 0038D588  93 C1 00 08 */	stw r30, 8(r1)
/* 8039204C 0038D58C  7C 7E 1B 78 */	mr r30, r3
/* 80392050 0038D590  80 63 00 08 */	lwz r3, 8(r3)
/* 80392054 0038D594  48 03 9A B5 */	bl func_803CBB08
/* 80392058 0038D598  2C 03 00 00 */	cmpwi r3, 0
/* 8039205C 0038D59C  41 82 00 10 */	beq lbl_8039206C
/* 80392060 0038D5A0  80 7E 00 08 */	lwz r3, 8(r30)
/* 80392064 0038D5A4  7F E4 FB 78 */	mr r4, r31
/* 80392068 0038D5A8  48 04 58 45 */	bl func_803D78AC
lbl_8039206C:
/* 8039206C 0038D5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80392070 0038D5B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80392074 0038D5B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80392078 0038D5B8  7C 08 03 A6 */	mtlr r0
/* 8039207C 0038D5BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80392080 0038D5C0  4E 80 00 20 */	blr 

.global func_80392084
func_80392084:
/* 80392084 0038D5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80392088 0038D5C8  7C 08 02 A6 */	mflr r0
/* 8039208C 0038D5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392090 0038D5D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80392094 0038D5D4  7C 9F 23 78 */	mr r31, r4
/* 80392098 0038D5D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8039209C 0038D5DC  7C 7E 1B 78 */	mr r30, r3
/* 803920A0 0038D5E0  80 63 00 08 */	lwz r3, 8(r3)
/* 803920A4 0038D5E4  48 03 9A 65 */	bl func_803CBB08
/* 803920A8 0038D5E8  2C 03 00 00 */	cmpwi r3, 0
/* 803920AC 0038D5EC  41 82 00 10 */	beq lbl_803920BC
/* 803920B0 0038D5F0  80 7E 00 08 */	lwz r3, 8(r30)
/* 803920B4 0038D5F4  7F E4 FB 78 */	mr r4, r31
/* 803920B8 0038D5F8  48 04 57 FD */	bl func_803D78B4
lbl_803920BC:
/* 803920BC 0038D5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803920C0 0038D600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803920C4 0038D604  83 C1 00 08 */	lwz r30, 8(r1)
/* 803920C8 0038D608  7C 08 03 A6 */	mtlr r0
/* 803920CC 0038D60C  38 21 00 10 */	addi r1, r1, 0x10
/* 803920D0 0038D610  4E 80 00 20 */	blr 

.global func_803920D4
func_803920D4:
/* 803920D4 0038D614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803920D8 0038D618  7C 08 02 A6 */	mflr r0
/* 803920DC 0038D61C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803920E0 0038D620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803920E4 0038D624  7C 7F 1B 78 */	mr r31, r3
/* 803920E8 0038D628  80 63 00 08 */	lwz r3, 8(r3)
/* 803920EC 0038D62C  48 03 9A 1D */	bl func_803CBB08
/* 803920F0 0038D630  2C 03 00 00 */	cmpwi r3, 0
/* 803920F4 0038D634  41 82 00 24 */	beq lbl_80392118
/* 803920F8 0038D638  3C 80 80 5C */	lis r4, lbl_805C658A@ha
/* 803920FC 0038D63C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80392100 0038D640  38 84 65 8A */	addi r4, r4, lbl_805C658A@l
/* 80392104 0038D644  48 04 57 B9 */	bl func_803D78BC
/* 80392108 0038D648  3C 80 80 5C */	lis r4, lbl_805C6593@ha
/* 8039210C 0038D64C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80392110 0038D650  38 84 65 93 */	addi r4, r4, lbl_805C6593@l
/* 80392114 0038D654  48 04 57 A9 */	bl func_803D78BC
lbl_80392118:
/* 80392118 0038D658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039211C 0038D65C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80392120 0038D660  7C 08 03 A6 */	mtlr r0
/* 80392124 0038D664  38 21 00 10 */	addi r1, r1, 0x10
/* 80392128 0038D668  4E 80 00 20 */	blr 
lbl_8039212C:
/* 8039212C 0038D66C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80392130 0038D670  7C 08 02 A6 */	mflr r0
/* 80392134 0038D674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392138 0038D678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039213C 0038D67C  7C 7F 1B 78 */	mr r31, r3
/* 80392140 0038D680  48 05 A4 A1 */	bl func_803EC5E0
/* 80392144 0038D684  2C 03 00 00 */	cmpwi r3, 0
/* 80392148 0038D688  41 82 00 14 */	beq lbl_8039215C
/* 8039214C 0038D68C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80392150 0038D690  4B FB 9D 75 */	bl func_8034BEC4
/* 80392154 0038D694  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80392158 0038D698  4B FB 9D 6D */	bl func_8034BEC4
lbl_8039215C:
/* 8039215C 0038D69C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80392160 0038D6A0  4B FB 9E 89 */	bl func_8034BFE8
/* 80392164 0038D6A4  2C 03 00 00 */	cmpwi r3, 0
/* 80392168 0038D6A8  41 82 00 48 */	beq lbl_803921B0
/* 8039216C 0038D6AC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80392170 0038D6B0  2C 03 00 00 */	cmpwi r3, 0
/* 80392174 0038D6B4  41 82 00 14 */	beq lbl_80392188
/* 80392178 0038D6B8  38 80 FF FF */	li r4, -1
/* 8039217C 0038D6BC  38 A0 FF FF */	li r5, -1
/* 80392180 0038D6C0  48 06 7C 6D */	bl func_803F9DEC
/* 80392184 0038D6C4  48 00 00 14 */	b lbl_80392198
lbl_80392188:
/* 80392188 0038D6C8  80 6D 8E E8 */	lwz r3, lbl_8069DB88-_SDA_BASE_(r13)
/* 8039218C 0038D6CC  38 80 FF FF */	li r4, -1
/* 80392190 0038D6D0  38 A0 FF FF */	li r5, -1
/* 80392194 0038D6D4  48 06 7C 59 */	bl func_803F9DEC
lbl_80392198:
/* 80392198 0038D6D8  7F E3 FB 78 */	mr r3, r31
/* 8039219C 0038D6DC  4B FF FF 39 */	bl func_803920D4
/* 803921A0 0038D6E0  3C 80 80 5C */	lis r4, lbl_805C6593@ha
/* 803921A4 0038D6E4  7F E3 FB 78 */	mr r3, r31
/* 803921A8 0038D6E8  38 84 65 93 */	addi r4, r4, lbl_805C6593@l
/* 803921AC 0038D6EC  4B FF FE 89 */	bl func_80392034
lbl_803921B0:
/* 803921B0 0038D6F0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803921B4 0038D6F4  4B FB 9E 35 */	bl func_8034BFE8
/* 803921B8 0038D6F8  2C 03 00 00 */	cmpwi r3, 0
/* 803921BC 0038D6FC  41 82 00 48 */	beq lbl_80392204
/* 803921C0 0038D700  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 803921C4 0038D704  2C 03 00 00 */	cmpwi r3, 0
/* 803921C8 0038D708  41 82 00 14 */	beq lbl_803921DC
/* 803921CC 0038D70C  38 80 FF FF */	li r4, -1
/* 803921D0 0038D710  38 A0 FF FF */	li r5, -1
/* 803921D4 0038D714  48 06 7C 19 */	bl func_803F9DEC
/* 803921D8 0038D718  48 00 00 14 */	b lbl_803921EC
lbl_803921DC:
/* 803921DC 0038D71C  80 6D 8E E8 */	lwz r3, lbl_8069DB88-_SDA_BASE_(r13)
/* 803921E0 0038D720  38 80 FF FF */	li r4, -1
/* 803921E4 0038D724  38 A0 FF FF */	li r5, -1
/* 803921E8 0038D728  48 06 7C 05 */	bl func_803F9DEC
lbl_803921EC:
/* 803921EC 0038D72C  7F E3 FB 78 */	mr r3, r31
/* 803921F0 0038D730  4B FF FE E5 */	bl func_803920D4
/* 803921F4 0038D734  3C 80 80 5C */	lis r4, lbl_805C658A@ha
/* 803921F8 0038D738  7F E3 FB 78 */	mr r3, r31
/* 803921FC 0038D73C  38 84 65 8A */	addi r4, r4, lbl_805C658A@l
/* 80392200 0038D740  4B FF FE 35 */	bl func_80392034
lbl_80392204:
/* 80392204 0038D744  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80392208 0038D748  4B FB 9D D9 */	bl func_8034BFE0
/* 8039220C 0038D74C  2C 03 00 00 */	cmpwi r3, 0
/* 80392210 0038D750  40 82 00 14 */	bne lbl_80392224
/* 80392214 0038D754  3C 80 80 5C */	lis r4, lbl_805C6593@ha
/* 80392218 0038D758  7F E3 FB 78 */	mr r3, r31
/* 8039221C 0038D75C  38 84 65 93 */	addi r4, r4, lbl_805C6593@l
/* 80392220 0038D760  4B FF FE 65 */	bl func_80392084
lbl_80392224:
/* 80392224 0038D764  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80392228 0038D768  4B FB 9D B9 */	bl func_8034BFE0
/* 8039222C 0038D76C  2C 03 00 00 */	cmpwi r3, 0
/* 80392230 0038D770  40 82 00 14 */	bne lbl_80392244
/* 80392234 0038D774  3C 80 80 5C */	lis r4, lbl_805C658A@ha
/* 80392238 0038D778  7F E3 FB 78 */	mr r3, r31
/* 8039223C 0038D77C  38 84 65 8A */	addi r4, r4, lbl_805C658A@l
/* 80392240 0038D780  4B FF FE 45 */	bl func_80392084
lbl_80392244:
/* 80392244 0038D784  7F E3 FB 78 */	mr r3, r31
/* 80392248 0038D788  4B FF FD A5 */	bl func_80391FEC
/* 8039224C 0038D78C  2C 03 00 00 */	cmpwi r3, 0
/* 80392250 0038D790  41 82 00 10 */	beq lbl_80392260
/* 80392254 0038D794  7F E3 FB 78 */	mr r3, r31
/* 80392258 0038D798  38 8D D7 54 */	addi r4, r13, lbl_806A23F4-_SDA_BASE_
/* 8039225C 0038D79C  48 01 07 55 */	bl func_803A29B0
lbl_80392260:
/* 80392260 0038D7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80392264 0038D7A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80392268 0038D7A8  7C 08 03 A6 */	mtlr r0
/* 8039226C 0038D7AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80392270 0038D7B0  4E 80 00 20 */	blr 
lbl_80392274:
/* 80392274 0038D7B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80392278 0038D7B8  7C 08 02 A6 */	mflr r0
/* 8039227C 0038D7BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80392280 0038D7C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80392284 0038D7C4  48 18 52 B5 */	bl func_80517538
/* 80392288 0038D7C8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8039228C 0038D7CC  3F C0 80 5C */	lis r30, lbl_805C6518@ha
/* 80392290 0038D7D0  7C 7D 1B 78 */	mr r29, r3
/* 80392294 0038D7D4  8B E4 00 20 */	lbz r31, 0x20(r4)
/* 80392298 0038D7D8  3B DE 65 18 */	addi r30, r30, lbl_805C6518@l
/* 8039229C 0038D7DC  48 05 A3 45 */	bl func_803EC5E0
/* 803922A0 0038D7E0  2C 03 00 00 */	cmpwi r3, 0
/* 803922A4 0038D7E4  41 82 00 90 */	beq lbl_80392334
/* 803922A8 0038D7E8  7F A3 EB 78 */	mr r3, r29
/* 803922AC 0038D7EC  38 9E 00 72 */	addi r4, r30, 0x72
/* 803922B0 0038D7F0  4B FF FD D5 */	bl func_80392084
/* 803922B4 0038D7F4  7F A3 EB 78 */	mr r3, r29
/* 803922B8 0038D7F8  38 9E 00 7B */	addi r4, r30, 0x7b
/* 803922BC 0038D7FC  4B FF FD C9 */	bl func_80392084
/* 803922C0 0038D800  38 7E 00 85 */	addi r3, r30, 0x85
/* 803922C4 0038D804  38 80 00 00 */	li r4, 0
/* 803922C8 0038D808  38 A0 00 00 */	li r5, 0
/* 803922CC 0038D80C  48 06 7A 4D */	bl func_803F9D18
/* 803922D0 0038D810  2C 1F 00 00 */	cmpwi r31, 0
/* 803922D4 0038D814  41 82 00 34 */	beq lbl_80392308
/* 803922D8 0038D818  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 803922DC 0038D81C  2C 03 00 00 */	cmpwi r3, 0
/* 803922E0 0038D820  41 82 00 14 */	beq lbl_803922F4
/* 803922E4 0038D824  38 80 FF FF */	li r4, -1
/* 803922E8 0038D828  38 A0 FF FF */	li r5, -1
/* 803922EC 0038D82C  48 06 7B 01 */	bl func_803F9DEC
/* 803922F0 0038D830  48 00 00 44 */	b lbl_80392334
lbl_803922F4:
/* 803922F4 0038D834  80 6D 8E EC */	lwz r3, lbl_8069DB8C-_SDA_BASE_(r13)
/* 803922F8 0038D838  38 80 FF FF */	li r4, -1
/* 803922FC 0038D83C  38 A0 FF FF */	li r5, -1
/* 80392300 0038D840  48 06 7A ED */	bl func_803F9DEC
/* 80392304 0038D844  48 00 00 30 */	b lbl_80392334
lbl_80392308:
/* 80392308 0038D848  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 8039230C 0038D84C  2C 03 00 00 */	cmpwi r3, 0
/* 80392310 0038D850  41 82 00 14 */	beq lbl_80392324
/* 80392314 0038D854  38 80 FF FF */	li r4, -1
/* 80392318 0038D858  38 A0 FF FF */	li r5, -1
/* 8039231C 0038D85C  48 06 7A D1 */	bl func_803F9DEC
/* 80392320 0038D860  48 00 00 14 */	b lbl_80392334
lbl_80392324:
/* 80392324 0038D864  80 6D 8E F0 */	lwz r3, lbl_8069DB90-_SDA_BASE_(r13)
/* 80392328 0038D868  38 80 FF FF */	li r4, -1
/* 8039232C 0038D86C  38 A0 FF FF */	li r5, -1
/* 80392330 0038D870  48 06 7A BD */	bl func_803F9DEC
lbl_80392334:
/* 80392334 0038D874  2C 1F 00 00 */	cmpwi r31, 0
/* 80392338 0038D878  41 82 00 14 */	beq lbl_8039234C
/* 8039233C 0038D87C  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80392340 0038D880  4B FB 9E 1D */	bl func_8034C15C
/* 80392344 0038D884  2C 03 00 00 */	cmpwi r3, 0
/* 80392348 0038D888  40 82 00 1C */	bne lbl_80392364
lbl_8039234C:
/* 8039234C 0038D88C  2C 1F 00 00 */	cmpwi r31, 0
/* 80392350 0038D890  40 82 00 20 */	bne lbl_80392370
/* 80392354 0038D894  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80392358 0038D898  4B FB 9E 05 */	bl func_8034C15C
/* 8039235C 0038D89C  2C 03 00 00 */	cmpwi r3, 0
/* 80392360 0038D8A0  41 82 00 10 */	beq lbl_80392370
lbl_80392364:
/* 80392364 0038D8A4  7F A3 EB 78 */	mr r3, r29
/* 80392368 0038D8A8  38 8D D7 58 */	addi r4, r13, lbl_806A23F8-_SDA_BASE_
/* 8039236C 0038D8AC  48 01 06 45 */	bl func_803A29B0
lbl_80392370:
/* 80392370 0038D8B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80392374 0038D8B4  48 18 52 11 */	bl func_80517584
/* 80392378 0038D8B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039237C 0038D8BC  7C 08 03 A6 */	mtlr r0
/* 80392380 0038D8C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80392384 0038D8C4  4E 80 00 20 */	blr 
lbl_80392388:
/* 80392388 0038D8C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039238C 0038D8CC  7C 08 02 A6 */	mflr r0
/* 80392390 0038D8D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392394 0038D8D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80392398 0038D8D8  7C 7F 1B 78 */	mr r31, r3
/* 8039239C 0038D8DC  48 05 A2 45 */	bl func_803EC5E0
/* 803923A0 0038D8E0  2C 03 00 00 */	cmpwi r3, 0
/* 803923A4 0038D8E4  41 82 00 14 */	beq lbl_803923B8
/* 803923A8 0038D8E8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803923AC 0038D8EC  4B FB 9B 8D */	bl func_8034BF38
/* 803923B0 0038D8F0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803923B4 0038D8F4  4B FB 9B 85 */	bl func_8034BF38
lbl_803923B8:
/* 803923B8 0038D8F8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803923BC 0038D8FC  4B FB 9C 1D */	bl func_8034BFD8
/* 803923C0 0038D900  2C 03 00 00 */	cmpwi r3, 0
/* 803923C4 0038D904  41 82 00 50 */	beq lbl_80392414
/* 803923C8 0038D908  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803923CC 0038D90C  4B FB 9C 0D */	bl func_8034BFD8
/* 803923D0 0038D910  2C 03 00 00 */	cmpwi r3, 0
/* 803923D4 0038D914  41 82 00 40 */	beq lbl_80392414
/* 803923D8 0038D918  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803923DC 0038D91C  88 03 00 20 */	lbz r0, 0x20(r3)
/* 803923E0 0038D920  2C 00 00 00 */	cmpwi r0, 0
/* 803923E4 0038D924  40 82 00 14 */	bne lbl_803923F8
/* 803923E8 0038D928  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803923EC 0038D92C  88 03 00 20 */	lbz r0, 0x20(r3)
/* 803923F0 0038D930  2C 00 00 00 */	cmpwi r0, 0
/* 803923F4 0038D934  41 82 00 14 */	beq lbl_80392408
lbl_803923F8:
/* 803923F8 0038D938  7F E3 FB 78 */	mr r3, r31
/* 803923FC 0038D93C  38 8D D7 5C */	addi r4, r13, lbl_806A23FC-_SDA_BASE_
/* 80392400 0038D940  48 01 05 B1 */	bl func_803A29B0
/* 80392404 0038D944  48 00 00 10 */	b lbl_80392414
lbl_80392408:
/* 80392408 0038D948  7F E3 FB 78 */	mr r3, r31
/* 8039240C 0038D94C  38 8D D7 60 */	addi r4, r13, lbl_806A2400-_SDA_BASE_
/* 80392410 0038D950  48 01 05 A1 */	bl func_803A29B0
lbl_80392414:
/* 80392414 0038D954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80392418 0038D958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039241C 0038D95C  7C 08 03 A6 */	mtlr r0
/* 80392420 0038D960  38 21 00 10 */	addi r1, r1, 0x10
/* 80392424 0038D964  4E 80 00 20 */	blr 
/* 80392428 0038D968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039242C 0038D96C  7C 08 02 A6 */	mflr r0
/* 80392430 0038D970  2C 03 00 00 */	cmpwi r3, 0
/* 80392434 0038D974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392438 0038D978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039243C 0038D97C  7C 9F 23 78 */	mr r31, r4
/* 80392440 0038D980  93 C1 00 08 */	stw r30, 8(r1)
/* 80392444 0038D984  7C 7E 1B 78 */	mr r30, r3
/* 80392448 0038D988  41 82 00 1C */	beq lbl_80392464
/* 8039244C 0038D98C  38 80 00 00 */	li r4, 0
/* 80392450 0038D990  48 01 04 95 */	bl func_803A28E4
/* 80392454 0038D994  2C 1F 00 00 */	cmpwi r31, 0
/* 80392458 0038D998  40 81 00 0C */	ble lbl_80392464
/* 8039245C 0038D99C  7F C3 F3 78 */	mr r3, r30
/* 80392460 0038D9A0  48 07 76 E1 */	bl __dl__FPv
lbl_80392464:
/* 80392464 0038D9A4  7F C3 F3 78 */	mr r3, r30
/* 80392468 0038D9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039246C 0038D9AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80392470 0038D9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80392474 0038D9B4  7C 08 03 A6 */	mtlr r0
/* 80392478 0038D9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8039247C 0038D9BC  4E 80 00 20 */	blr 
/* 80392480 0038D9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80392484 0038D9C4  7C 08 02 A6 */	mflr r0
/* 80392488 0038D9C8  38 6D D7 50 */	addi r3, r13, lbl_806A23F0-_SDA_BASE_
/* 8039248C 0038D9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392490 0038D9D0  48 00 00 35 */	bl func_803924C4
/* 80392494 0038D9D4  38 6D D7 54 */	addi r3, r13, lbl_806A23F4-_SDA_BASE_
/* 80392498 0038D9D8  48 00 00 3D */	bl func_803924D4
/* 8039249C 0038D9DC  38 6D D7 58 */	addi r3, r13, lbl_806A23F8-_SDA_BASE_
/* 803924A0 0038D9E0  48 00 00 45 */	bl func_803924E4
/* 803924A4 0038D9E4  38 6D D7 5C */	addi r3, r13, lbl_806A23FC-_SDA_BASE_
/* 803924A8 0038D9E8  48 00 00 4D */	bl func_803924F4
/* 803924AC 0038D9EC  38 6D D7 60 */	addi r3, r13, lbl_806A2400-_SDA_BASE_
/* 803924B0 0038D9F0  48 00 00 55 */	bl func_80392504
/* 803924B4 0038D9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803924B8 0038D9F8  7C 08 03 A6 */	mtlr r0
/* 803924BC 0038D9FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803924C0 0038DA00  4E 80 00 20 */	blr 

.global func_803924C4
func_803924C4:
/* 803924C4 0038DA04  3C 80 80 5C */	lis r4, lbl_805C65F8@ha
/* 803924C8 0038DA08  38 84 65 F8 */	addi r4, r4, lbl_805C65F8@l
/* 803924CC 0038DA0C  90 83 00 00 */	stw r4, 0(r3)
/* 803924D0 0038DA10  4E 80 00 20 */	blr 

.global func_803924D4
func_803924D4:
/* 803924D4 0038DA14  3C 80 80 5C */	lis r4, lbl_805C65E8@ha
/* 803924D8 0038DA18  38 84 65 E8 */	addi r4, r4, lbl_805C65E8@l
/* 803924DC 0038DA1C  90 83 00 00 */	stw r4, 0(r3)
/* 803924E0 0038DA20  4E 80 00 20 */	blr 

.global func_803924E4
func_803924E4:
/* 803924E4 0038DA24  3C 80 80 5C */	lis r4, lbl_805C65D8@ha
/* 803924E8 0038DA28  38 84 65 D8 */	addi r4, r4, lbl_805C65D8@l
/* 803924EC 0038DA2C  90 83 00 00 */	stw r4, 0(r3)
/* 803924F0 0038DA30  4E 80 00 20 */	blr 

.global func_803924F4
func_803924F4:
/* 803924F4 0038DA34  3C 80 80 5C */	lis r4, lbl_805C65C8@ha
/* 803924F8 0038DA38  38 84 65 C8 */	addi r4, r4, lbl_805C65C8@l
/* 803924FC 0038DA3C  90 83 00 00 */	stw r4, 0(r3)
/* 80392500 0038DA40  4E 80 00 20 */	blr 

.global func_80392504
func_80392504:
/* 80392504 0038DA44  3C 80 80 5C */	lis r4, lbl_805C65B8@ha
/* 80392508 0038DA48  38 84 65 B8 */	addi r4, r4, lbl_805C65B8@l
/* 8039250C 0038DA4C  90 83 00 00 */	stw r4, 0(r3)
/* 80392510 0038DA50  4E 80 00 20 */	blr 
/* 80392514 0038DA54  80 64 00 00 */	lwz r3, 0(r4)
/* 80392518 0038DA58  38 00 00 00 */	li r0, 0
/* 8039251C 0038DA5C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80392520 0038DA60  4E 80 00 20 */	blr 
/* 80392524 0038DA64  80 64 00 00 */	lwz r3, 0(r4)
/* 80392528 0038DA68  38 00 00 00 */	li r0, 0
/* 8039252C 0038DA6C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80392530 0038DA70  4E 80 00 20 */	blr 
/* 80392534 0038DA74  80 64 00 00 */	lwz r3, 0(r4)
/* 80392538 0038DA78  4B FF FE 50 */	b lbl_80392388
/* 8039253C 0038DA7C  80 64 00 00 */	lwz r3, 0(r4)
/* 80392540 0038DA80  4B FF FD 34 */	b lbl_80392274
/* 80392544 0038DA84  80 64 00 00 */	lwz r3, 0(r4)
/* 80392548 0038DA88  4B FF FB E4 */	b lbl_8039212C
