.include "macros.inc"

.text

.global func_803A5C94
func_803A5C94:
/* 803A5C94 003A11D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A5C98 003A11D8  7C 08 02 A6 */	mflr r0
/* 803A5C9C 003A11DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A5CA0 003A11E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A5CA4 003A11E4  48 17 18 95 */	bl func_80517538
/* 803A5CA8 003A11E8  3F E0 80 54 */	lis r31, lbl_8053A2E8@ha
/* 803A5CAC 003A11EC  3B A0 00 00 */	li r29, 0
/* 803A5CB0 003A11F0  3B FF A2 E8 */	addi r31, r31, lbl_8053A2E8@l
/* 803A5CB4 003A11F4  48 12 AA 55 */	bl func_804D0708
/* 803A5CB8 003A11F8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803A5CBC 003A11FC  38 03 FF FF */	addi r0, r3, -1
/* 803A5CC0 003A1200  7C 00 00 34 */	cntlzw r0, r0
/* 803A5CC4 003A1204  54 1E D9 7E */	srwi r30, r0, 5
/* 803A5CC8 003A1208  48 10 DD 21 */	bl func_804B39E8
/* 803A5CCC 003A120C  28 03 00 01 */	cmplwi r3, 1
/* 803A5CD0 003A1210  40 82 00 68 */	bne lbl_803A5D38
/* 803A5CD4 003A1214  48 12 AB C9 */	bl func_804D089C
/* 803A5CD8 003A1218  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803A5CDC 003A121C  38 03 FF FF */	addi r0, r3, -1
/* 803A5CE0 003A1220  7C 00 00 34 */	cntlzw r0, r0
/* 803A5CE4 003A1224  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 803A5CE8 003A1228  41 82 00 50 */	beq lbl_803A5D38
/* 803A5CEC 003A122C  48 10 DC 9D */	bl func_804B3988
/* 803A5CF0 003A1230  2C 03 00 02 */	cmpwi r3, 2
/* 803A5CF4 003A1234  41 82 00 24 */	beq lbl_803A5D18
/* 803A5CF8 003A1238  40 80 00 14 */	bge lbl_803A5D0C
/* 803A5CFC 003A123C  2C 03 00 00 */	cmpwi r3, 0
/* 803A5D00 003A1240  41 82 00 18 */	beq lbl_803A5D18
/* 803A5D04 003A1244  40 80 00 24 */	bge lbl_803A5D28
/* 803A5D08 003A1248  48 00 00 A4 */	b lbl_803A5DAC
lbl_803A5D0C:
/* 803A5D0C 003A124C  2C 03 00 05 */	cmpwi r3, 5
/* 803A5D10 003A1250  41 82 00 18 */	beq lbl_803A5D28
/* 803A5D14 003A1254  48 00 00 98 */	b lbl_803A5DAC
lbl_803A5D18:
/* 803A5D18 003A1258  1C 7E 00 3C */	mulli r3, r30, 0x3c
/* 803A5D1C 003A125C  38 1F 00 78 */	addi r0, r31, 0x78
/* 803A5D20 003A1260  7F A0 1A 14 */	add r29, r0, r3
/* 803A5D24 003A1264  48 00 00 88 */	b lbl_803A5DAC
lbl_803A5D28:
/* 803A5D28 003A1268  1C 7E 00 3C */	mulli r3, r30, 0x3c
/* 803A5D2C 003A126C  38 1F 01 E0 */	addi r0, r31, 0x1e0
/* 803A5D30 003A1270  7F A0 1A 14 */	add r29, r0, r3
/* 803A5D34 003A1274  48 00 00 78 */	b lbl_803A5DAC
lbl_803A5D38:
/* 803A5D38 003A1278  48 10 DC 51 */	bl func_804B3988
/* 803A5D3C 003A127C  2C 03 00 02 */	cmpwi r3, 2
/* 803A5D40 003A1280  41 82 00 24 */	beq lbl_803A5D64
/* 803A5D44 003A1284  40 80 00 14 */	bge lbl_803A5D58
/* 803A5D48 003A1288  2C 03 00 00 */	cmpwi r3, 0
/* 803A5D4C 003A128C  41 82 00 18 */	beq lbl_803A5D64
/* 803A5D50 003A1290  40 80 00 24 */	bge lbl_803A5D74
/* 803A5D54 003A1294  48 00 00 58 */	b lbl_803A5DAC
lbl_803A5D58:
/* 803A5D58 003A1298  2C 03 00 05 */	cmpwi r3, 5
/* 803A5D5C 003A129C  41 82 00 40 */	beq lbl_803A5D9C
/* 803A5D60 003A12A0  48 00 00 4C */	b lbl_803A5DAC
lbl_803A5D64:
/* 803A5D64 003A12A4  1C 7E 00 3C */	mulli r3, r30, 0x3c
/* 803A5D68 003A12A8  38 1F 00 00 */	addi r0, r31, 0
/* 803A5D6C 003A12AC  7C 60 1A 14 */	add r3, r0, r3
/* 803A5D70 003A12B0  48 00 00 40 */	b lbl_803A5DB0
lbl_803A5D74:
/* 803A5D74 003A12B4  48 12 AA 5D */	bl func_804D07D0
/* 803A5D78 003A12B8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803A5D7C 003A12BC  38 03 FF FF */	addi r0, r3, -1
/* 803A5D80 003A12C0  7C 00 00 34 */	cntlzw r0, r0
/* 803A5D84 003A12C4  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 803A5D88 003A12C8  40 82 00 14 */	bne lbl_803A5D9C
/* 803A5D8C 003A12CC  1C 7E 00 3C */	mulli r3, r30, 0x3c
/* 803A5D90 003A12D0  38 1F 00 F0 */	addi r0, r31, 0xf0
/* 803A5D94 003A12D4  7C 60 1A 14 */	add r3, r0, r3
/* 803A5D98 003A12D8  48 00 00 18 */	b lbl_803A5DB0
lbl_803A5D9C:
/* 803A5D9C 003A12DC  1C 7E 00 3C */	mulli r3, r30, 0x3c
/* 803A5DA0 003A12E0  38 1F 01 68 */	addi r0, r31, 0x168
/* 803A5DA4 003A12E4  7C 60 1A 14 */	add r3, r0, r3
/* 803A5DA8 003A12E8  48 00 00 08 */	b lbl_803A5DB0
lbl_803A5DAC:
/* 803A5DAC 003A12EC  7F A3 EB 78 */	mr r3, r29
lbl_803A5DB0:
/* 803A5DB0 003A12F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A5DB4 003A12F4  48 17 17 D1 */	bl func_80517584
/* 803A5DB8 003A12F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A5DBC 003A12FC  7C 08 03 A6 */	mtlr r0
/* 803A5DC0 003A1300  38 21 00 20 */	addi r1, r1, 0x20
/* 803A5DC4 003A1304  4E 80 00 20 */	blr 
.global lbl_803A5DC8
lbl_803A5DC8:
lbl_803A5DC8:
/* 803A5DC8 003A1308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A5DCC 003A130C  7C 08 02 A6 */	mflr r0
/* 803A5DD0 003A1310  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A5DD4 003A1314  48 12 A9 35 */	bl func_804D0708
/* 803A5DD8 003A1318  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803A5DDC 003A131C  38 03 FF FF */	addi r0, r3, -1
/* 803A5DE0 003A1320  7C 00 00 34 */	cntlzw r0, r0
/* 803A5DE4 003A1324  54 03 D9 7E */	srwi r3, r0, 5
/* 803A5DE8 003A1328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A5DEC 003A132C  7C 08 03 A6 */	mtlr r0
/* 803A5DF0 003A1330  38 21 00 10 */	addi r1, r1, 0x10
/* 803A5DF4 003A1334  4E 80 00 20 */	blr 

.global func_803A5DF8
func_803A5DF8:
/* 803A5DF8 003A1338  3C 60 00 0B */	lis r3, 0x000A9600@ha
/* 803A5DFC 003A133C  38 63 96 00 */	addi r3, r3, 0x000A9600@l
/* 803A5E00 003A1340  4E 80 00 20 */	blr 

.global func_803A5E04
func_803A5E04:
/* 803A5E04 003A1344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A5E08 003A1348  7C 08 02 A6 */	mflr r0
/* 803A5E0C 003A134C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A5E10 003A1350  48 10 DB 79 */	bl func_804B3988
/* 803A5E14 003A1354  2C 03 00 02 */	cmpwi r3, 2
/* 803A5E18 003A1358  41 82 00 2C */	beq lbl_803A5E44
/* 803A5E1C 003A135C  40 80 00 14 */	bge lbl_803A5E30
/* 803A5E20 003A1360  2C 03 00 00 */	cmpwi r3, 0
/* 803A5E24 003A1364  41 82 00 30 */	beq lbl_803A5E54
/* 803A5E28 003A1368  40 80 00 14 */	bge lbl_803A5E3C
/* 803A5E2C 003A136C  48 00 00 28 */	b lbl_803A5E54
lbl_803A5E30:
/* 803A5E30 003A1370  2C 03 00 05 */	cmpwi r3, 5
/* 803A5E34 003A1374  41 82 00 18 */	beq lbl_803A5E4C
/* 803A5E38 003A1378  48 00 00 1C */	b lbl_803A5E54
lbl_803A5E3C:
/* 803A5E3C 003A137C  38 60 02 D0 */	li r3, 0x2d0
/* 803A5E40 003A1380  48 00 00 18 */	b lbl_803A5E58
lbl_803A5E44:
/* 803A5E44 003A1384  38 60 02 D0 */	li r3, 0x2d0
/* 803A5E48 003A1388  48 00 00 10 */	b lbl_803A5E58
lbl_803A5E4C:
/* 803A5E4C 003A138C  38 60 02 D0 */	li r3, 0x2d0
/* 803A5E50 003A1390  48 00 00 08 */	b lbl_803A5E58
lbl_803A5E54:
/* 803A5E54 003A1394  38 60 02 D0 */	li r3, 0x2d0
lbl_803A5E58:
/* 803A5E58 003A1398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A5E5C 003A139C  7C 08 03 A6 */	mtlr r0
/* 803A5E60 003A13A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A5E64 003A13A4  4E 80 00 20 */	blr 