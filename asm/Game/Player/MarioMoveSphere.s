.include "macros.inc"

.text

.global func_802ED884
func_802ED884:
/* 802ED884 002E8DC4  3C A0 80 5B */	lis r5, lbl_805B48A8@ha
/* 802ED888 002E8DC8  90 83 00 04 */	stw r4, 4(r3)
/* 802ED88C 002E8DCC  38 A5 48 A8 */	addi r5, r5, lbl_805B48A8@l
/* 802ED890 002E8DD0  90 A3 00 00 */	stw r5, 0(r3)
/* 802ED894 002E8DD4  4E 80 00 20 */	blr 

.global func_802ED898
func_802ED898:
/* 802ED898 002E8DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ED89C 002E8DDC  7C 08 02 A6 */	mflr r0
/* 802ED8A0 002E8DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ED8A4 002E8DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ED8A8 002E8DE8  7C 7F 1B 78 */	mr r31, r3
/* 802ED8AC 002E8DEC  4B FF AF 7D */	bl func_802E8828
/* 802ED8B0 002E8DF0  7C 64 1B 78 */	mr r4, r3
/* 802ED8B4 002E8DF4  38 7F 00 08 */	addi r3, r31, 8
/* 802ED8B8 002E8DF8  38 84 01 F0 */	addi r4, r4, 0x1f0
/* 802ED8BC 002E8DFC  4B D2 B2 59 */	bl func_80018B14
/* 802ED8C0 002E8E00  7F E3 FB 78 */	mr r3, r31
/* 802ED8C4 002E8E04  4B FF AF 65 */	bl func_802E8828
/* 802ED8C8 002E8E08  7C 64 1B 78 */	mr r4, r3
/* 802ED8CC 002E8E0C  38 7F 00 14 */	addi r3, r31, 0x14
/* 802ED8D0 002E8E10  38 84 02 08 */	addi r4, r4, 0x208
/* 802ED8D4 002E8E14  4B D2 B2 41 */	bl func_80018B14
/* 802ED8D8 002E8E18  7F E3 FB 78 */	mr r3, r31
/* 802ED8DC 002E8E1C  4B FF AF 4D */	bl func_802E8828
/* 802ED8E0 002E8E20  7C 64 1B 78 */	mr r4, r3
/* 802ED8E4 002E8E24  38 7F 00 20 */	addi r3, r31, 0x20
/* 802ED8E8 002E8E28  38 84 03 10 */	addi r4, r4, 0x310
/* 802ED8EC 002E8E2C  4B D2 B2 29 */	bl func_80018B14
/* 802ED8F0 002E8E30  38 7F 00 2C */	addi r3, r31, 0x2c
/* 802ED8F4 002E8E34  38 9F 00 08 */	addi r4, r31, 8
/* 802ED8F8 002E8E38  4B D2 B2 1D */	bl func_80018B14
/* 802ED8FC 002E8E3C  38 7F 00 38 */	addi r3, r31, 0x38
/* 802ED900 002E8E40  38 9F 00 14 */	addi r4, r31, 0x14
/* 802ED904 002E8E44  4B D2 B2 11 */	bl func_80018B14
/* 802ED908 002E8E48  38 7F 00 44 */	addi r3, r31, 0x44
/* 802ED90C 002E8E4C  38 9F 00 20 */	addi r4, r31, 0x20
/* 802ED910 002E8E50  4B D2 B2 05 */	bl func_80018B14
/* 802ED914 002E8E54  C0 02 02 38 */	lfs f0, lbl_806AB4B8-_SDA2_BASE_(r2)
/* 802ED918 002E8E58  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 802ED91C 002E8E5C  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 802ED920 002E8E60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ED924 002E8E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ED928 002E8E68  7C 08 03 A6 */	mtlr r0
/* 802ED92C 002E8E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802ED930 002E8E70  4E 80 00 20 */	blr 