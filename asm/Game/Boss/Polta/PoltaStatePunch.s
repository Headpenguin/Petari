.include "macros.inc"

.text

.global func_8007569C
func_8007569C:
/* 8007569C 00070BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800756A0 00070BE0  7C 08 02 A6 */	mflr r0
/* 800756A4 00070BE4  3C A0 80 56 */	lis r5, lbl_8055C1E8@ha
/* 800756A8 00070BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800756AC 00070BEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800756B0 00070BF0  7C 9F 23 78 */	mr r31, r4
/* 800756B4 00070BF4  38 85 C1 E8 */	addi r4, r5, lbl_8055C1E8@l
/* 800756B8 00070BF8  93 C1 00 08 */	stw r30, 8(r1)
/* 800756BC 00070BFC  7C 7E 1B 78 */	mr r30, r3
/* 800756C0 00070C00  48 32 D2 0D */	bl func_803A28CC
/* 800756C4 00070C04  3C A0 80 56 */	lis r5, lbl_8055C294@ha
/* 800756C8 00070C08  38 00 00 01 */	li r0, 1
/* 800756CC 00070C0C  38 A5 C2 94 */	addi r5, r5, lbl_8055C294@l
/* 800756D0 00070C10  93 FE 00 0C */	stw r31, 0xc(r30)
/* 800756D4 00070C14  7F C3 F3 78 */	mr r3, r30
/* 800756D8 00070C18  38 8D A0 F0 */	addi r4, r13, lbl_8069ED90-_SDA_BASE_
/* 800756DC 00070C1C  90 BE 00 00 */	stw r5, 0(r30)
/* 800756E0 00070C20  98 1E 00 1C */	stb r0, 0x1c(r30)
/* 800756E4 00070C24  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 800756E8 00070C28  48 32 D2 61 */	bl func_803A2948
/* 800756EC 00070C2C  7F C3 F3 78 */	mr r3, r30
/* 800756F0 00070C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800756F4 00070C34  83 C1 00 08 */	lwz r30, 8(r1)
/* 800756F8 00070C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800756FC 00070C3C  7C 08 03 A6 */	mtlr r0
/* 80075700 00070C40  38 21 00 10 */	addi r1, r1, 0x10
/* 80075704 00070C44  4E 80 00 20 */	blr 
/* 80075708 00070C48  38 80 00 01 */	li r4, 1
/* 8007570C 00070C4C  38 00 00 00 */	li r0, 0
/* 80075710 00070C50  98 83 00 1D */	stb r4, 0x1d(r3)
/* 80075714 00070C54  38 8D A0 F0 */	addi r4, r13, lbl_8069ED90-_SDA_BASE_
/* 80075718 00070C58  98 03 00 08 */	stb r0, 8(r3)
/* 8007571C 00070C5C  48 32 D2 94 */	b func_803A29B0

.global func_80075720
func_80075720:
/* 80075720 00070C60  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80075724 00070C64  2C 00 00 00 */	cmpwi r0, 0
/* 80075728 00070C68  41 82 00 0C */	beq lbl_80075734
/* 8007572C 00070C6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80075730 00070C70  4B FF CF EC */	b func_8007271C
lbl_80075734:
/* 80075734 00070C74  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80075738 00070C78  4B FF CF EC */	b func_80072724
lbl_8007573C:
/* 8007573C 00070C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80075740 00070C80  7C 08 02 A6 */	mflr r0
/* 80075744 00070C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80075748 00070C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007574C 00070C8C  3F E0 80 56 */	lis r31, lbl_8055C1E8@ha
/* 80075750 00070C90  3B FF C1 E8 */	addi r31, r31, lbl_8055C1E8@l
/* 80075754 00070C94  93 C1 00 08 */	stw r30, 8(r1)
/* 80075758 00070C98  7C 7E 1B 78 */	mr r30, r3
/* 8007575C 00070C9C  48 37 6E 85 */	bl func_803EC5E0
/* 80075760 00070CA0  2C 03 00 00 */	cmpwi r3, 0
/* 80075764 00070CA4  41 82 00 40 */	beq lbl_800757A4
/* 80075768 00070CA8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8007576C 00070CAC  4B FF D1 2D */	bl func_80072898
/* 80075770 00070CB0  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 80075774 00070CB4  38 9F 00 2A */	addi r4, r31, 0x2a
/* 80075778 00070CB8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8007577C 00070CBC  2C 00 00 00 */	cmpwi r0, 0
/* 80075780 00070CC0  41 82 00 08 */	beq lbl_80075788
/* 80075784 00070CC4  38 9F 00 1B */	addi r4, r31, 0x1b
lbl_80075788:
/* 80075788 00070CC8  88 BE 00 1D */	lbz r5, 0x1d(r30)
/* 8007578C 00070CCC  4B FF D0 A1 */	bl func_8007282C
/* 80075790 00070CD0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80075794 00070CD4  38 9F 00 3A */	addi r4, r31, 0x3a
/* 80075798 00070CD8  38 A0 FF FF */	li r5, -1
/* 8007579C 00070CDC  38 C0 FF FF */	li r6, -1
/* 800757A0 00070CE0  48 38 32 9D */	bl func_803F8A3C
lbl_800757A4:
/* 800757A4 00070CE4  7F C3 F3 78 */	mr r3, r30
/* 800757A8 00070CE8  38 80 00 3C */	li r4, 0x3c
/* 800757AC 00070CEC  48 37 6E 3D */	bl func_803EC5E8
/* 800757B0 00070CF0  2C 03 00 00 */	cmpwi r3, 0
/* 800757B4 00070CF4  41 82 00 0C */	beq lbl_800757C0
/* 800757B8 00070CF8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800757BC 00070CFC  4B FF 93 F5 */	bl func_8006EBB0
lbl_800757C0:
/* 800757C0 00070D00  7F C3 F3 78 */	mr r3, r30
/* 800757C4 00070D04  48 00 02 6D */	bl func_80075A30
/* 800757C8 00070D08  2C 03 00 00 */	cmpwi r3, 0
/* 800757CC 00070D0C  40 82 00 1C */	bne lbl_800757E8
/* 800757D0 00070D10  81 9E 00 00 */	lwz r12, 0(r30)
/* 800757D4 00070D14  7F C3 F3 78 */	mr r3, r30
/* 800757D8 00070D18  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800757DC 00070D1C  7D 89 03 A6 */	mtctr r12
/* 800757E0 00070D20  4E 80 04 21 */	bctrl 
/* 800757E4 00070D24  48 00 00 24 */	b lbl_80075808
lbl_800757E8:
/* 800757E8 00070D28  7F C3 F3 78 */	mr r3, r30
/* 800757EC 00070D2C  4B FF FF 35 */	bl func_80075720
/* 800757F0 00070D30  48 36 50 D5 */	bl func_803DA8C4
/* 800757F4 00070D34  2C 03 00 00 */	cmpwi r3, 0
/* 800757F8 00070D38  41 82 00 10 */	beq lbl_80075808
/* 800757FC 00070D3C  7F C3 F3 78 */	mr r3, r30
/* 80075800 00070D40  38 8D A0 F4 */	addi r4, r13, lbl_8069ED94-_SDA_BASE_
/* 80075804 00070D44  48 32 D1 AD */	bl func_803A29B0
lbl_80075808:
/* 80075808 00070D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007580C 00070D4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80075810 00070D50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80075814 00070D54  7C 08 03 A6 */	mtlr r0
/* 80075818 00070D58  38 21 00 10 */	addi r1, r1, 0x10
/* 8007581C 00070D5C  4E 80 00 20 */	blr 
lbl_80075820:
/* 80075820 00070D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80075824 00070D64  7C 08 02 A6 */	mflr r0
/* 80075828 00070D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007582C 00070D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80075830 00070D70  3F E0 80 56 */	lis r31, lbl_8055C1E8@ha
/* 80075834 00070D74  3B FF C1 E8 */	addi r31, r31, lbl_8055C1E8@l
/* 80075838 00070D78  93 C1 00 08 */	stw r30, 8(r1)
/* 8007583C 00070D7C  7C 7E 1B 78 */	mr r30, r3
/* 80075840 00070D80  48 37 6D A1 */	bl func_803EC5E0
/* 80075844 00070D84  2C 03 00 00 */	cmpwi r3, 0
/* 80075848 00070D88  41 82 00 4C */	beq lbl_80075894
/* 8007584C 00070D8C  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 80075850 00070D90  38 9F 00 5B */	addi r4, r31, 0x5b
/* 80075854 00070D94  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80075858 00070D98  2C 00 00 00 */	cmpwi r0, 0
/* 8007585C 00070D9C  41 82 00 08 */	beq lbl_80075864
/* 80075860 00070DA0  38 9F 00 51 */	addi r4, r31, 0x51
lbl_80075864:
/* 80075864 00070DA4  88 BE 00 1D */	lbz r5, 0x1d(r30)
/* 80075868 00070DA8  4B FF CF C5 */	bl func_8007282C
/* 8007586C 00070DAC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80075870 00070DB0  38 9F 00 66 */	addi r4, r31, 0x66
/* 80075874 00070DB4  38 A0 FF FF */	li r5, -1
/* 80075878 00070DB8  38 C0 FF FF */	li r6, -1
/* 8007587C 00070DBC  48 38 31 C1 */	bl func_803F8A3C
/* 80075880 00070DC0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80075884 00070DC4  38 9F 00 78 */	addi r4, r31, 0x78
/* 80075888 00070DC8  38 A0 FF FF */	li r5, -1
/* 8007588C 00070DCC  38 C0 FF FF */	li r6, -1
/* 80075890 00070DD0  48 38 31 AD */	bl func_803F8A3C
lbl_80075894:
/* 80075894 00070DD4  7F C3 F3 78 */	mr r3, r30
/* 80075898 00070DD8  48 00 01 99 */	bl func_80075A30
/* 8007589C 00070DDC  2C 03 00 00 */	cmpwi r3, 0
/* 800758A0 00070DE0  40 82 00 1C */	bne lbl_800758BC
/* 800758A4 00070DE4  81 9E 00 00 */	lwz r12, 0(r30)
/* 800758A8 00070DE8  7F C3 F3 78 */	mr r3, r30
/* 800758AC 00070DEC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800758B0 00070DF0  7D 89 03 A6 */	mtctr r12
/* 800758B4 00070DF4  4E 80 04 21 */	bctrl 
/* 800758B8 00070DF8  48 00 00 24 */	b lbl_800758DC
lbl_800758BC:
/* 800758BC 00070DFC  7F C3 F3 78 */	mr r3, r30
/* 800758C0 00070E00  4B FF FE 61 */	bl func_80075720
/* 800758C4 00070E04  48 36 50 01 */	bl func_803DA8C4
/* 800758C8 00070E08  2C 03 00 00 */	cmpwi r3, 0
/* 800758CC 00070E0C  41 82 00 10 */	beq lbl_800758DC
/* 800758D0 00070E10  7F C3 F3 78 */	mr r3, r30
/* 800758D4 00070E14  38 8D A0 F8 */	addi r4, r13, lbl_8069ED98-_SDA_BASE_
/* 800758D8 00070E18  48 32 D0 D9 */	bl func_803A29B0
lbl_800758DC:
/* 800758DC 00070E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800758E0 00070E20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800758E4 00070E24  83 C1 00 08 */	lwz r30, 8(r1)
/* 800758E8 00070E28  7C 08 03 A6 */	mtlr r0
/* 800758EC 00070E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 800758F0 00070E30  4E 80 00 20 */	blr 
lbl_800758F4:
/* 800758F4 00070E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800758F8 00070E38  7C 08 02 A6 */	mflr r0
/* 800758FC 00070E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80075900 00070E40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80075904 00070E44  7C 7F 1B 78 */	mr r31, r3
/* 80075908 00070E48  48 37 6C D9 */	bl func_803EC5E0
/* 8007590C 00070E4C  2C 03 00 00 */	cmpwi r3, 0
/* 80075910 00070E50  41 82 00 2C */	beq lbl_8007593C
/* 80075914 00070E54  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 80075918 00070E58  3C 80 80 56 */	lis r4, lbl_8055C282@ha
/* 8007591C 00070E5C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80075920 00070E60  38 84 C2 82 */	addi r4, r4, lbl_8055C282@l
/* 80075924 00070E64  2C 00 00 00 */	cmpwi r0, 0
/* 80075928 00070E68  41 82 00 0C */	beq lbl_80075934
/* 8007592C 00070E6C  3C 80 80 56 */	lis r4, lbl_8055C272@ha
/* 80075930 00070E70  38 84 C2 72 */	addi r4, r4, lbl_8055C272@l
lbl_80075934:
/* 80075934 00070E74  88 BF 00 1D */	lbz r5, 0x1d(r31)
/* 80075938 00070E78  4B FF CE F5 */	bl func_8007282C
lbl_8007593C:
/* 8007593C 00070E7C  7F E3 FB 78 */	mr r3, r31
/* 80075940 00070E80  48 00 00 F1 */	bl func_80075A30
/* 80075944 00070E84  2C 03 00 00 */	cmpwi r3, 0
/* 80075948 00070E88  40 82 00 1C */	bne lbl_80075964
/* 8007594C 00070E8C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80075950 00070E90  7F E3 FB 78 */	mr r3, r31
/* 80075954 00070E94  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80075958 00070E98  7D 89 03 A6 */	mtctr r12
/* 8007595C 00070E9C  4E 80 04 21 */	bctrl 
/* 80075960 00070EA0  48 00 00 48 */	b lbl_800759A8
lbl_80075964:
/* 80075964 00070EA4  7F E3 FB 78 */	mr r3, r31
/* 80075968 00070EA8  38 80 00 46 */	li r4, 0x46
/* 8007596C 00070EAC  48 37 6C F9 */	bl func_803EC664
/* 80075970 00070EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80075974 00070EB4  41 82 00 0C */	beq lbl_80075980
/* 80075978 00070EB8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8007597C 00070EBC  4B FF 92 35 */	bl func_8006EBB0
lbl_80075980:
/* 80075980 00070EC0  7F E3 FB 78 */	mr r3, r31
/* 80075984 00070EC4  4B FF FD 9D */	bl func_80075720
/* 80075988 00070EC8  48 36 4F 3D */	bl func_803DA8C4
/* 8007598C 00070ECC  2C 03 00 00 */	cmpwi r3, 0
/* 80075990 00070ED0  41 82 00 18 */	beq lbl_800759A8
/* 80075994 00070ED4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80075998 00070ED8  7F E3 FB 78 */	mr r3, r31
/* 8007599C 00070EDC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800759A0 00070EE0  7D 89 03 A6 */	mtctr r12
/* 800759A4 00070EE4  4E 80 04 21 */	bctrl 
lbl_800759A8:
/* 800759A8 00070EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800759AC 00070EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800759B0 00070EF0  7C 08 03 A6 */	mtlr r0
/* 800759B4 00070EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 800759B8 00070EF8  4E 80 00 20 */	blr 

.global func_800759BC
func_800759BC:
/* 800759BC 00070EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800759C0 00070F00  7C 08 02 A6 */	mflr r0
/* 800759C4 00070F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 800759C8 00070F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800759CC 00070F0C  7C 9F 23 78 */	mr r31, r4
/* 800759D0 00070F10  38 8D A0 F4 */	addi r4, r13, lbl_8069ED94-_SDA_BASE_
/* 800759D4 00070F14  93 C1 00 08 */	stw r30, 8(r1)
/* 800759D8 00070F18  7C 7E 1B 78 */	mr r30, r3
/* 800759DC 00070F1C  48 32 CF DD */	bl func_803A29B8
/* 800759E0 00070F20  2C 03 00 00 */	cmpwi r3, 0
/* 800759E4 00070F24  40 82 00 0C */	bne lbl_800759F0
/* 800759E8 00070F28  38 60 00 00 */	li r3, 0
/* 800759EC 00070F2C  48 00 00 2C */	b lbl_80075A18
lbl_800759F0:
/* 800759F0 00070F30  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 800759F4 00070F34  2C 00 00 00 */	cmpwi r0, 0
/* 800759F8 00070F38  41 82 00 14 */	beq lbl_80075A0C
/* 800759FC 00070F3C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80075A00 00070F40  7F E4 FB 78 */	mr r4, r31
/* 80075A04 00070F44  4B FF CD 9D */	bl func_800727A0
/* 80075A08 00070F48  48 00 00 10 */	b lbl_80075A18
lbl_80075A0C:
/* 80075A0C 00070F4C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80075A10 00070F50  7F E4 FB 78 */	mr r4, r31
/* 80075A14 00070F54  4B FF CD 95 */	bl func_800727A8
lbl_80075A18:
/* 80075A18 00070F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80075A1C 00070F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80075A20 00070F60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80075A24 00070F64  7C 08 03 A6 */	mtlr r0
/* 80075A28 00070F68  38 21 00 10 */	addi r1, r1, 0x10
/* 80075A2C 00070F6C  4E 80 00 20 */	blr 

.global func_80075A30
func_80075A30:
/* 80075A30 00070F70  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80075A34 00070F74  2C 00 00 00 */	cmpwi r0, 0
/* 80075A38 00070F78  41 82 00 0C */	beq lbl_80075A44
/* 80075A3C 00070F7C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80075A40 00070F80  4B FF CF 18 */	b func_80072958
lbl_80075A44:
/* 80075A44 00070F84  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80075A48 00070F88  4B FF CF 08 */	b func_80072950
/* 80075A4C 00070F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80075A50 00070F90  7C 08 02 A6 */	mflr r0
/* 80075A54 00070F94  2C 03 00 00 */	cmpwi r3, 0
/* 80075A58 00070F98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80075A5C 00070F9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80075A60 00070FA0  7C 9F 23 78 */	mr r31, r4
/* 80075A64 00070FA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80075A68 00070FA8  7C 7E 1B 78 */	mr r30, r3
/* 80075A6C 00070FAC  41 82 00 1C */	beq lbl_80075A88
/* 80075A70 00070FB0  38 80 00 00 */	li r4, 0
/* 80075A74 00070FB4  4B FF 96 65 */	bl func_8006F0D8
/* 80075A78 00070FB8  2C 1F 00 00 */	cmpwi r31, 0
/* 80075A7C 00070FBC  40 81 00 0C */	ble lbl_80075A88
/* 80075A80 00070FC0  7F C3 F3 78 */	mr r3, r30
/* 80075A84 00070FC4  48 39 40 BD */	bl __dl__FPv
lbl_80075A88:
/* 80075A88 00070FC8  7F C3 F3 78 */	mr r3, r30
/* 80075A8C 00070FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80075A90 00070FD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80075A94 00070FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80075A98 00070FD8  7C 08 03 A6 */	mtlr r0
/* 80075A9C 00070FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80075AA0 00070FE0  4E 80 00 20 */	blr 
/* 80075AA4 00070FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80075AA8 00070FE8  7C 08 02 A6 */	mflr r0
/* 80075AAC 00070FEC  38 6D A0 F0 */	addi r3, r13, lbl_8069ED90-_SDA_BASE_
/* 80075AB0 00070FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80075AB4 00070FF4  48 00 00 25 */	bl func_80075AD8
/* 80075AB8 00070FF8  38 6D A0 F4 */	addi r3, r13, lbl_8069ED94-_SDA_BASE_
/* 80075ABC 00070FFC  48 00 00 2D */	bl func_80075AE8
/* 80075AC0 00071000  38 6D A0 F8 */	addi r3, r13, lbl_8069ED98-_SDA_BASE_
/* 80075AC4 00071004  48 00 00 35 */	bl func_80075AF8
/* 80075AC8 00071008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80075ACC 0007100C  7C 08 03 A6 */	mtlr r0
/* 80075AD0 00071010  38 21 00 10 */	addi r1, r1, 0x10
/* 80075AD4 00071014  4E 80 00 20 */	blr 

.global func_80075AD8
func_80075AD8:
/* 80075AD8 00071018  3C 80 80 56 */	lis r4, lbl_8055C2F4@ha
/* 80075ADC 0007101C  38 84 C2 F4 */	addi r4, r4, lbl_8055C2F4@l
/* 80075AE0 00071020  90 83 00 00 */	stw r4, 0(r3)
/* 80075AE4 00071024  4E 80 00 20 */	blr 

.global func_80075AE8
func_80075AE8:
/* 80075AE8 00071028  3C 80 80 56 */	lis r4, lbl_8055C2E4@ha
/* 80075AEC 0007102C  38 84 C2 E4 */	addi r4, r4, lbl_8055C2E4@l
/* 80075AF0 00071030  90 83 00 00 */	stw r4, 0(r3)
/* 80075AF4 00071034  4E 80 00 20 */	blr 

.global func_80075AF8
func_80075AF8:
/* 80075AF8 00071038  3C 80 80 56 */	lis r4, lbl_8055C2D4@ha
/* 80075AFC 0007103C  38 84 C2 D4 */	addi r4, r4, lbl_8055C2D4@l
/* 80075B00 00071040  90 83 00 00 */	stw r4, 0(r3)
/* 80075B04 00071044  4E 80 00 20 */	blr 
/* 80075B08 00071048  80 64 00 00 */	lwz r3, 0(r4)
/* 80075B0C 0007104C  4B FF FD E8 */	b lbl_800758F4
/* 80075B10 00071050  80 64 00 00 */	lwz r3, 0(r4)
/* 80075B14 00071054  4B FF FD 0C */	b lbl_80075820
/* 80075B18 00071058  80 64 00 00 */	lwz r3, 0(r4)
/* 80075B1C 0007105C  4B FF FC 20 */	b lbl_8007573C