.include "macros.inc"

.text

.global func_8027751C
func_8027751C:
/* 8027751C 00272A5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80277520 00272A60  7C 08 02 A6 */	mflr r0
/* 80277524 00272A64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80277528 00272A68  39 61 00 20 */	addi r11, r1, 0x20
/* 8027752C 00272A6C  48 2A 00 09 */	bl func_80517534
/* 80277530 00272A70  7C 9D 23 78 */	mr r29, r4
/* 80277534 00272A74  7C 7C 1B 78 */	mr r28, r3
/* 80277538 00272A78  7C BE 2B 78 */	mr r30, r5
/* 8027753C 00272A7C  7C DF 33 78 */	mr r31, r6
/* 80277540 00272A80  7C E4 3B 78 */	mr r4, r7
/* 80277544 00272A84  4B FE 9C 19 */	bl func_8026115C
/* 80277548 00272A88  3C 80 80 5A */	lis r4, lbl_8059C378@ha
/* 8027754C 00272A8C  38 00 00 00 */	li r0, 0
/* 80277550 00272A90  38 84 C3 78 */	addi r4, r4, lbl_8059C378@l
/* 80277554 00272A94  B0 1C 00 0C */	sth r0, 0xc(r28)
/* 80277558 00272A98  38 60 00 14 */	li r3, 0x14
/* 8027755C 00272A9C  90 9C 00 00 */	stw r4, 0(r28)
/* 80277560 00272AA0  98 1C 00 0E */	stb r0, 0xe(r28)
/* 80277564 00272AA4  B3 BC 00 10 */	sth r29, 0x10(r28)
/* 80277568 00272AA8  B3 DC 00 12 */	sth r30, 0x12(r28)
/* 8027756C 00272AAC  48 19 25 8D */	bl func_80409AF8
/* 80277570 00272AB0  2C 03 00 00 */	cmpwi r3, 0
/* 80277574 00272AB4  41 82 00 2C */	beq lbl_802775A0
/* 80277578 00272AB8  80 1F 00 00 */	lwz r0, 0(r31)
/* 8027757C 00272ABC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80277580 00272AC0  90 03 00 00 */	stw r0, 0(r3)
/* 80277584 00272AC4  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80277588 00272AC8  90 83 00 04 */	stw r4, 4(r3)
/* 8027758C 00272ACC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80277590 00272AD0  B0 03 00 08 */	sth r0, 8(r3)
/* 80277594 00272AD4  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80277598 00272AD8  90 83 00 0C */	stw r4, 0xc(r3)
/* 8027759C 00272ADC  90 03 00 10 */	stw r0, 0x10(r3)
lbl_802775A0:
/* 802775A0 00272AE0  38 80 00 00 */	li r4, 0
/* 802775A4 00272AE4  38 00 00 FF */	li r0, 0xff
/* 802775A8 00272AE8  90 7C 00 14 */	stw r3, 0x14(r28)
/* 802775AC 00272AEC  7F 83 E3 78 */	mr r3, r28
/* 802775B0 00272AF0  90 9C 00 18 */	stw r4, 0x18(r28)
/* 802775B4 00272AF4  98 9C 00 1C */	stb r4, 0x1c(r28)
/* 802775B8 00272AF8  90 1C 00 20 */	stw r0, 0x20(r28)
/* 802775BC 00272AFC  98 9C 00 24 */	stb r4, 0x24(r28)
/* 802775C0 00272B00  48 00 01 0D */	bl func_802776CC
/* 802775C4 00272B04  7F 83 E3 78 */	mr r3, r28
/* 802775C8 00272B08  48 00 03 31 */	bl func_802778F8
/* 802775CC 00272B0C  39 61 00 20 */	addi r11, r1, 0x20
/* 802775D0 00272B10  7F 83 E3 78 */	mr r3, r28
/* 802775D4 00272B14  48 29 FF AD */	bl func_80517580
/* 802775D8 00272B18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802775DC 00272B1C  7C 08 03 A6 */	mtlr r0
/* 802775E0 00272B20  38 21 00 20 */	addi r1, r1, 0x20
/* 802775E4 00272B24  4E 80 00 20 */	blr 
/* 802775E8 00272B28  4E 80 00 20 */	blr 
/* 802775EC 00272B2C  4E 80 00 20 */	blr 

.global lbl_802775F0
lbl_802775F0:
/* 802775F0 00272B30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802775F4 00272B34  7C 08 02 A6 */	mflr r0
/* 802775F8 00272B38  90 01 00 24 */	stw r0, 0x24(r1)
/* 802775FC 00272B3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80277600 00272B40  7C 7F 1B 78 */	mr r31, r3
/* 80277604 00272B44  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80277608 00272B48  2C 00 00 00 */	cmpwi r0, 0
/* 8027760C 00272B4C  40 82 00 80 */	bne lbl_8027768C
/* 80277610 00272B50  88 03 00 0E */	lbz r0, 0xe(r3)
/* 80277614 00272B54  2C 00 00 00 */	cmpwi r0, 0
/* 80277618 00272B58  41 82 00 20 */	beq lbl_80277638
/* 8027761C 00272B5C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80277620 00272B60  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80277624 00272B64  A0 BF 00 10 */	lhz r5, 0x10(r31)
/* 80277628 00272B68  A0 DF 00 12 */	lhz r6, 0x12(r31)
/* 8027762C 00272B6C  48 00 16 61 */	bl func_80278C8C
/* 80277630 00272B70  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80277634 00272B74  48 00 00 48 */	b lbl_8027767C
lbl_80277638:
/* 80277638 00272B78  38 A0 00 00 */	li r5, 0
/* 8027763C 00272B7C  38 00 00 FF */	li r0, 0xff
/* 80277640 00272B80  98 A1 00 0C */	stb r5, 0xc(r1)
/* 80277644 00272B84  38 E1 00 0C */	addi r7, r1, 0xc
/* 80277648 00272B88  98 A1 00 0D */	stb r5, 0xd(r1)
/* 8027764C 00272B8C  98 A1 00 0E */	stb r5, 0xe(r1)
/* 80277650 00272B90  98 01 00 0F */	stb r0, 0xf(r1)
/* 80277654 00272B94  98 A1 00 08 */	stb r5, 8(r1)
/* 80277658 00272B98  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8027765C 00272B9C  98 A1 00 09 */	stb r5, 9(r1)
/* 80277660 00272BA0  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80277664 00272BA4  98 A1 00 0A */	stb r5, 0xa(r1)
/* 80277668 00272BA8  A0 BF 00 10 */	lhz r5, 0x10(r31)
/* 8027766C 00272BAC  98 01 00 0B */	stb r0, 0xb(r1)
/* 80277670 00272BB0  A0 DF 00 12 */	lhz r6, 0x12(r31)
/* 80277674 00272BB4  48 00 15 95 */	bl func_80278C08
/* 80277678 00272BB8  90 7F 00 20 */	stw r3, 0x20(r31)
lbl_8027767C:
/* 8027767C 00272BBC  38 60 00 01 */	li r3, 1
/* 80277680 00272BC0  38 00 00 00 */	li r0, 0
/* 80277684 00272BC4  98 7F 00 1C */	stb r3, 0x1c(r31)
/* 80277688 00272BC8  98 1F 00 24 */	stb r0, 0x24(r31)
lbl_8027768C:
/* 8027768C 00272BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80277690 00272BD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80277694 00272BD4  7C 08 03 A6 */	mtlr r0
/* 80277698 00272BD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8027769C 00272BDC  4E 80 00 20 */	blr 

.global func_802776A0
func_802776A0:
/* 802776A0 00272BE0  38 00 00 01 */	li r0, 1
/* 802776A4 00272BE4  98 03 00 24 */	stb r0, 0x24(r3)
/* 802776A8 00272BE8  4E 80 00 20 */	blr 

.global func_802776AC
func_802776AC:
/* 802776AC 00272BEC  B0 83 00 0C */	sth r4, 0xc(r3)
/* 802776B0 00272BF0  38 A0 00 00 */	li r5, 0
/* 802776B4 00272BF4  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 802776B8 00272BF8  38 00 00 FF */	li r0, 0xff
/* 802776BC 00272BFC  B0 86 00 08 */	sth r4, 8(r6)
/* 802776C0 00272C00  98 A3 00 1C */	stb r5, 0x1c(r3)
/* 802776C4 00272C04  90 03 00 20 */	stw r0, 0x20(r3)
/* 802776C8 00272C08  4E 80 00 20 */	blr 

.global func_802776CC
func_802776CC:
/* 802776CC 00272C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802776D0 00272C10  7C 08 02 A6 */	mflr r0
/* 802776D4 00272C14  38 80 00 20 */	li r4, 0x20
/* 802776D8 00272C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802776DC 00272C1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802776E0 00272C20  93 C1 00 08 */	stw r30, 8(r1)
/* 802776E4 00272C24  7C 7E 1B 78 */	mr r30, r3
/* 802776E8 00272C28  A0 A3 00 10 */	lhz r5, 0x10(r3)
/* 802776EC 00272C2C  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 802776F0 00272C30  7C 05 01 D6 */	mullw r0, r5, r0
/* 802776F4 00272C34  54 03 08 3C */	slwi r3, r0, 1
/* 802776F8 00272C38  3B E3 00 20 */	addi r31, r3, 0x20
/* 802776FC 00272C3C  7F E3 FB 78 */	mr r3, r31
/* 80277700 00272C40  48 19 24 29 */	bl func_80409B28
/* 80277704 00272C44  90 7E 00 18 */	stw r3, 0x18(r30)
/* 80277708 00272C48  7F E4 FB 78 */	mr r4, r31
/* 8027770C 00272C4C  48 16 FE F1 */	bl func_803E75FC
/* 80277710 00272C50  A1 1E 00 12 */	lhz r8, 0x12(r30)
/* 80277714 00272C54  38 A0 00 05 */	li r5, 5
/* 80277718 00272C58  A0 FE 00 10 */	lhz r7, 0x10(r30)
/* 8027771C 00272C5C  38 80 00 00 */	li r4, 0
/* 80277720 00272C60  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 80277724 00272C64  38 60 00 01 */	li r3, 1
/* 80277728 00272C68  38 00 00 20 */	li r0, 0x20
/* 8027772C 00272C6C  98 A6 00 00 */	stb r5, 0(r6)
/* 80277730 00272C70  B0 E6 00 02 */	sth r7, 2(r6)
/* 80277734 00272C74  B1 06 00 04 */	sth r8, 4(r6)
/* 80277738 00272C78  98 86 00 06 */	stb r4, 6(r6)
/* 8027773C 00272C7C  98 86 00 07 */	stb r4, 7(r6)
/* 80277740 00272C80  98 86 00 08 */	stb r4, 8(r6)
/* 80277744 00272C84  98 86 00 09 */	stb r4, 9(r6)
/* 80277748 00272C88  B0 86 00 0A */	sth r4, 0xa(r6)
/* 8027774C 00272C8C  90 86 00 0C */	stw r4, 0xc(r6)
/* 80277750 00272C90  98 86 00 10 */	stb r4, 0x10(r6)
/* 80277754 00272C94  98 86 00 11 */	stb r4, 0x11(r6)
/* 80277758 00272C98  98 86 00 12 */	stb r4, 0x12(r6)
/* 8027775C 00272C9C  98 86 00 13 */	stb r4, 0x13(r6)
/* 80277760 00272CA0  98 66 00 14 */	stb r3, 0x14(r6)
/* 80277764 00272CA4  98 66 00 15 */	stb r3, 0x15(r6)
/* 80277768 00272CA8  98 86 00 16 */	stb r4, 0x16(r6)
/* 8027776C 00272CAC  98 86 00 17 */	stb r4, 0x17(r6)
/* 80277770 00272CB0  98 66 00 18 */	stb r3, 0x18(r6)
/* 80277774 00272CB4  B0 86 00 1A */	sth r4, 0x1a(r6)
/* 80277778 00272CB8  90 06 00 1C */	stw r0, 0x1c(r6)
/* 8027777C 00272CBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80277780 00272CC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80277784 00272CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80277788 00272CC8  7C 08 03 A6 */	mtlr r0
/* 8027778C 00272CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80277790 00272CD0  4E 80 00 20 */	blr 
/* 80277794 00272CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80277798 00272CD8  7C 08 02 A6 */	mflr r0
/* 8027779C 00272CDC  2C 03 00 00 */	cmpwi r3, 0
/* 802777A0 00272CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802777A4 00272CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802777A8 00272CE8  7C 9F 23 78 */	mr r31, r4
/* 802777AC 00272CEC  93 C1 00 08 */	stw r30, 8(r1)
/* 802777B0 00272CF0  7C 7E 1B 78 */	mr r30, r3
/* 802777B4 00272CF4  41 82 00 1C */	beq lbl_802777D0
/* 802777B8 00272CF8  38 80 00 00 */	li r4, 0
/* 802777BC 00272CFC  4B FE 99 F9 */	bl func_802611B4
/* 802777C0 00272D00  2C 1F 00 00 */	cmpwi r31, 0
/* 802777C4 00272D04  40 81 00 0C */	ble lbl_802777D0
/* 802777C8 00272D08  7F C3 F3 78 */	mr r3, r30
/* 802777CC 00272D0C  48 19 23 75 */	bl __dl__FPv
lbl_802777D0:
/* 802777D0 00272D10  7F C3 F3 78 */	mr r3, r30
/* 802777D4 00272D14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802777D8 00272D18  83 C1 00 08 */	lwz r30, 8(r1)
/* 802777DC 00272D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802777E0 00272D20  7C 08 03 A6 */	mtlr r0
/* 802777E4 00272D24  38 21 00 10 */	addi r1, r1, 0x10
/* 802777E8 00272D28  4E 80 00 20 */	blr 