.include "macros.inc"

.text

.global func_80383F80
func_80383F80:
/* 80383F80 0037F4C0  C0 24 00 00 */	lfs f1, 0(r4)
/* 80383F84 0037F4C4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80383F88 0037F4C8  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80383F8C 0037F4CC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80383F90 0037F4D0  4E 80 00 20 */	blr 
/* 80383F94 0037F4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383F98 0037F4D8  7C 08 02 A6 */	mflr r0
/* 80383F9C 0037F4DC  2C 03 00 00 */	cmpwi r3, 0
/* 80383FA0 0037F4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383FA4 0037F4E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80383FA8 0037F4E8  7C 9F 23 78 */	mr r31, r4
/* 80383FAC 0037F4EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80383FB0 0037F4F0  7C 7E 1B 78 */	mr r30, r3
/* 80383FB4 0037F4F4  41 82 00 1C */	beq lbl_80383FD0
/* 80383FB8 0037F4F8  38 80 00 00 */	li r4, 0
/* 80383FBC 0037F4FC  4B ED D1 F9 */	bl func_802611B4
/* 80383FC0 0037F500  2C 1F 00 00 */	cmpwi r31, 0
/* 80383FC4 0037F504  40 81 00 0C */	ble lbl_80383FD0
/* 80383FC8 0037F508  7F C3 F3 78 */	mr r3, r30
/* 80383FCC 0037F50C  48 08 5B 75 */	bl __dl__FPv
lbl_80383FD0:
/* 80383FD0 0037F510  7F C3 F3 78 */	mr r3, r30
/* 80383FD4 0037F514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80383FD8 0037F518  83 C1 00 08 */	lwz r30, 8(r1)
/* 80383FDC 0037F51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383FE0 0037F520  7C 08 03 A6 */	mtlr r0
/* 80383FE4 0037F524  38 21 00 10 */	addi r1, r1, 0x10
/* 80383FE8 0037F528  4E 80 00 20 */	blr 

.global func_80383FEC
func_80383FEC:
/* 80383FEC 0037F52C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80383FF0 0037F530  7C 08 02 A6 */	mflr r0
/* 80383FF4 0037F534  90 01 00 24 */	stw r0, 0x24(r1)
/* 80383FF8 0037F538  39 61 00 20 */	addi r11, r1, 0x20
/* 80383FFC 0037F53C  48 19 35 3D */	bl func_80517538
/* 80384000 0037F540  3C A0 80 5C */	lis r5, lbl_805C5208@ha
/* 80384004 0037F544  7C 9E 23 78 */	mr r30, r4
/* 80384008 0037F548  7C 7D 1B 78 */	mr r29, r3
/* 8038400C 0037F54C  38 85 52 08 */	addi r4, r5, lbl_805C5208@l
/* 80384010 0037F550  4B ED D1 4D */	bl func_8026115C
/* 80384014 0037F554  C0 02 16 4C */	lfs f0, lbl_806AC8CC-_SDA2_BASE_(r2)
/* 80384018 0037F558  3C 80 80 5C */	lis r4, lbl_805C5220@ha
/* 8038401C 0037F55C  3B E0 00 00 */	li r31, 0
/* 80384020 0037F560  93 DD 00 0C */	stw r30, 0xc(r29)
/* 80384024 0037F564  38 84 52 20 */	addi r4, r4, lbl_805C5220@l
/* 80384028 0037F568  38 60 01 A0 */	li r3, 0x1a0
/* 8038402C 0037F56C  90 9D 00 00 */	stw r4, 0(r29)
/* 80384030 0037F570  93 FD 00 10 */	stw r31, 0x10(r29)
/* 80384034 0037F574  93 FD 00 14 */	stw r31, 0x14(r29)
/* 80384038 0037F578  93 FD 00 18 */	stw r31, 0x18(r29)
/* 8038403C 0037F57C  93 FD 00 1C */	stw r31, 0x1c(r29)
/* 80384040 0037F580  93 FD 00 20 */	stw r31, 0x20(r29)
/* 80384044 0037F584  93 FD 00 24 */	stw r31, 0x24(r29)
/* 80384048 0037F588  93 FD 00 28 */	stw r31, 0x28(r29)
/* 8038404C 0037F58C  9B FD 00 2C */	stb r31, 0x2c(r29)
/* 80384050 0037F590  9B FD 00 2D */	stb r31, 0x2d(r29)
/* 80384054 0037F594  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 80384058 0037F598  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 8038405C 0037F59C  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80384060 0037F5A0  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 80384064 0037F5A4  48 08 5A B9 */	bl func_80409B1C
/* 80384068 0037F5A8  3C 80 80 38 */	lis r4, lbl_80384118@ha
/* 8038406C 0037F5AC  38 A0 00 00 */	li r5, 0
/* 80384070 0037F5B0  38 84 41 18 */	addi r4, r4, lbl_80384118@l
/* 80384074 0037F5B4  38 C0 00 14 */	li r6, 0x14
/* 80384078 0037F5B8  38 E0 00 14 */	li r7, 0x14
/* 8038407C 0037F5BC  48 19 2F 49 */	bl __construct_new_array
/* 80384080 0037F5C0  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 80384084 0037F5C4  38 60 00 50 */	li r3, 0x50
/* 80384088 0037F5C8  48 08 5A 95 */	bl func_80409B1C
/* 8038408C 0037F5CC  90 7D 00 20 */	stw r3, 0x20(r29)
/* 80384090 0037F5D0  38 60 00 50 */	li r3, 0x50
/* 80384094 0037F5D4  48 08 5A 89 */	bl func_80409B1C
/* 80384098 0037F5D8  3C 80 80 54 */	lis r4, lbl_8053A0F0@ha
/* 8038409C 0037F5DC  38 00 00 14 */	li r0, 0x14
/* 803840A0 0037F5E0  C8 64 A0 F0 */	lfd f3, lbl_8053A0F0@l(r4)
/* 803840A4 0037F5E4  38 A0 00 00 */	li r5, 0
/* 803840A8 0037F5E8  90 7D 00 24 */	stw r3, 0x24(r29)
/* 803840AC 0037F5EC  3C 80 43 30 */	lis r4, 0x4330
/* 803840B0 0037F5F0  C0 82 16 50 */	lfs f4, lbl_806AC8D0-_SDA2_BASE_(r2)
/* 803840B4 0037F5F4  C0 42 16 48 */	lfs f2, lbl_806AC8C8-_SDA2_BASE_(r2)
/* 803840B8 0037F5F8  C0 22 16 54 */	lfs f1, lbl_806AC8D4-_SDA2_BASE_(r2)
/* 803840BC 0037F5FC  7C 09 03 A6 */	mtctr r0
lbl_803840C0:
/* 803840C0 0037F600  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 803840C4 0037F604  90 81 00 08 */	stw r4, 8(r1)
/* 803840C8 0037F608  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 803840CC 0037F60C  38 A5 00 01 */	addi r5, r5, 1
/* 803840D0 0037F610  90 01 00 0C */	stw r0, 0xc(r1)
/* 803840D4 0037F614  C8 01 00 08 */	lfd f0, 8(r1)
/* 803840D8 0037F618  EC 00 18 28 */	fsubs f0, f0, f3
/* 803840DC 0037F61C  EC A0 01 32 */	fmuls f5, f0, f4
/* 803840E0 0037F620  EC 02 28 28 */	fsubs f0, f2, f5
/* 803840E4 0037F624  EC 01 00 32 */	fmuls f0, f1, f0
/* 803840E8 0037F628  7C 03 FD 2E */	stfsx f0, r3, r31
/* 803840EC 0037F62C  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 803840F0 0037F630  7C A3 FD 2E */	stfsx f5, r3, r31
/* 803840F4 0037F634  3B FF 00 04 */	addi r31, r31, 4
/* 803840F8 0037F638  42 00 FF C8 */	bdnz lbl_803840C0
/* 803840FC 0037F63C  39 61 00 20 */	addi r11, r1, 0x20
/* 80384100 0037F640  7F A3 EB 78 */	mr r3, r29
/* 80384104 0037F644  48 19 34 81 */	bl func_80517584
/* 80384108 0037F648  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038410C 0037F64C  7C 08 03 A6 */	mtlr r0
/* 80384110 0037F650  38 21 00 20 */	addi r1, r1, 0x20
/* 80384114 0037F654  4E 80 00 20 */	blr 
lbl_80384118:
/* 80384118 0037F658  C0 22 16 4C */	lfs f1, lbl_806AC8CC-_SDA2_BASE_(r2)
/* 8038411C 0037F65C  38 00 00 01 */	li r0, 1
/* 80384120 0037F660  C0 02 16 48 */	lfs f0, lbl_806AC8C8-_SDA2_BASE_(r2)
/* 80384124 0037F664  D0 23 00 00 */	stfs f1, 0(r3)
/* 80384128 0037F668  D0 23 00 04 */	stfs f1, 4(r3)
/* 8038412C 0037F66C  D0 23 00 08 */	stfs f1, 8(r3)
/* 80384130 0037F670  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80384134 0037F674  98 03 00 10 */	stb r0, 0x10(r3)
/* 80384138 0037F678  4E 80 00 20 */	blr 

.global func_8038413C
func_8038413C:
/* 8038413C 0037F67C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80384140 0037F680  7C 08 02 A6 */	mflr r0
/* 80384144 0037F684  90 01 00 24 */	stw r0, 0x24(r1)
/* 80384148 0037F688  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038414C 0037F68C  7C 7F 1B 78 */	mr r31, r3
/* 80384150 0037F690  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80384154 0037F694  48 07 74 A1 */	bl func_803FB5F4
/* 80384158 0037F698  90 81 00 0C */	stw r4, 0xc(r1)
/* 8038415C 0037F69C  38 81 00 08 */	addi r4, r1, 8
/* 80384160 0037F6A0  38 A0 00 00 */	li r5, 0
/* 80384164 0037F6A4  38 C0 00 00 */	li r6, 0
/* 80384168 0037F6A8  90 61 00 08 */	stw r3, 8(r1)
/* 8038416C 0037F6AC  7F E3 FB 78 */	mr r3, r31
/* 80384170 0037F6B0  48 00 01 15 */	bl func_80384284
/* 80384174 0037F6B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80384178 0037F6B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038417C 0037F6BC  7C 08 03 A6 */	mtlr r0
/* 80384180 0037F6C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80384184 0037F6C4  4E 80 00 20 */	blr 

.global func_80384188
func_80384188:
/* 80384188 0037F6C8  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8038418C 0037F6CC  2C 00 00 14 */	cmpwi r0, 0x14
/* 80384190 0037F6D0  4C 80 00 20 */	bgelr 
/* 80384194 0037F6D4  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 80384198 0037F6D8  38 A0 00 01 */	li r5, 1
/* 8038419C 0037F6DC  38 C4 00 08 */	addi r6, r4, 8
/* 803841A0 0037F6E0  48 00 00 E4 */	b func_80384284
/* 803841A4 0037F6E4  4E 80 00 20 */	blr 

.global func_803841A8
func_803841A8:
/* 803841A8 0037F6E8  80 03 00 28 */	lwz r0, 0x28(r3)
/* 803841AC 0037F6EC  2C 00 00 14 */	cmpwi r0, 0x14
/* 803841B0 0037F6F0  4C 80 00 20 */	bgelr 
/* 803841B4 0037F6F4  38 00 00 14 */	li r0, 0x14
/* 803841B8 0037F6F8  38 80 00 00 */	li r4, 0
/* 803841BC 0037F6FC  38 C0 00 01 */	li r6, 1
/* 803841C0 0037F700  7C 09 03 A6 */	mtctr r0
lbl_803841C4:
/* 803841C4 0037F704  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803841C8 0037F708  7C A0 22 14 */	add r5, r0, r4
/* 803841CC 0037F70C  38 84 00 14 */	addi r4, r4, 0x14
/* 803841D0 0037F710  98 C5 00 10 */	stb r6, 0x10(r5)
/* 803841D4 0037F714  42 00 FF F0 */	bdnz lbl_803841C4
/* 803841D8 0037F718  38 00 00 14 */	li r0, 0x14
/* 803841DC 0037F71C  90 03 00 28 */	stw r0, 0x28(r3)
/* 803841E0 0037F720  4E 80 00 20 */	blr 
/* 803841E4 0037F724  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803841E8 0037F728  7C 08 02 A6 */	mflr r0
/* 803841EC 0037F72C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803841F0 0037F730  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803841F4 0037F734  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803841F8 0037F738  7C 7E 1B 78 */	mr r30, r3
/* 803841FC 0037F73C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80384200 0037F740  48 00 1E 19 */	bl func_80386018
/* 80384204 0037F744  7C 7F 1B 78 */	mr r31, r3
/* 80384208 0037F748  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8038420C 0037F74C  48 00 1E 99 */	bl func_803860A4
/* 80384210 0037F750  2C 1F 00 00 */	cmpwi r31, 0
/* 80384214 0037F754  41 81 00 10 */	bgt lbl_80384224
/* 80384218 0037F758  7F C3 F3 78 */	mr r3, r30
/* 8038421C 0037F75C  4B FF FF 6D */	bl func_80384188
/* 80384220 0037F760  48 00 00 4C */	b lbl_8038426C
lbl_80384224:
/* 80384224 0037F764  3B FF FF FF */	addi r31, r31, -1
/* 80384228 0037F768  48 00 00 3C */	b lbl_80384264
lbl_8038422C:
/* 8038422C 0037F76C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80384230 0037F770  7F E4 FB 78 */	mr r4, r31
/* 80384234 0037F774  48 00 1E 21 */	bl func_80386054
/* 80384238 0037F778  7C 64 1B 78 */	mr r4, r3
/* 8038423C 0037F77C  38 61 00 08 */	addi r3, r1, 8
/* 80384240 0037F780  4B E4 CE ED */	bl func_801D112C
/* 80384244 0037F784  38 61 00 08 */	addi r3, r1, 8
/* 80384248 0037F788  48 00 1C C5 */	bl func_80385F0C
/* 8038424C 0037F78C  7F C3 F3 78 */	mr r3, r30
/* 80384250 0037F790  38 81 00 08 */	addi r4, r1, 8
/* 80384254 0037F794  38 A0 00 00 */	li r5, 0
/* 80384258 0037F798  38 C0 00 00 */	li r6, 0
/* 8038425C 0037F79C  48 00 00 29 */	bl func_80384284
/* 80384260 0037F7A0  3B FF FF FF */	addi r31, r31, -1
lbl_80384264:
/* 80384264 0037F7A4  2C 1F 00 00 */	cmpwi r31, 0
/* 80384268 0037F7A8  40 80 FF C4 */	bge lbl_8038422C
lbl_8038426C:
/* 8038426C 0037F7AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80384270 0037F7B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80384274 0037F7B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80384278 0037F7B8  7C 08 03 A6 */	mtlr r0
/* 8038427C 0037F7BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80384280 0037F7C0  4E 80 00 20 */	blr 

.global func_80384284
func_80384284:
/* 80384284 0037F7C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80384288 0037F7C8  7C 08 02 A6 */	mflr r0
/* 8038428C 0037F7CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80384290 0037F7D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80384294 0037F7D4  48 19 32 A1 */	bl func_80517534
/* 80384298 0037F7D8  28 05 00 01 */	cmplwi r5, 1
/* 8038429C 0037F7DC  7C 7C 1B 78 */	mr r28, r3
/* 803842A0 0037F7E0  7C 9D 23 78 */	mr r29, r4
/* 803842A4 0037F7E4  7C BE 2B 78 */	mr r30, r5
/* 803842A8 0037F7E8  7C DF 33 78 */	mr r31, r6
/* 803842AC 0037F7EC  40 82 00 14 */	bne lbl_803842C0
/* 803842B0 0037F7F0  80 83 00 28 */	lwz r4, 0x28(r3)
/* 803842B4 0037F7F4  38 04 00 01 */	addi r0, r4, 1
/* 803842B8 0037F7F8  90 03 00 28 */	stw r0, 0x28(r3)
/* 803842BC 0037F7FC  48 00 00 0C */	b lbl_803842C8
lbl_803842C0:
/* 803842C0 0037F800  38 00 00 00 */	li r0, 0
/* 803842C4 0037F804  90 03 00 28 */	stw r0, 0x28(r3)
lbl_803842C8:
/* 803842C8 0037F808  39 00 00 13 */	li r8, 0x13
/* 803842CC 0037F80C  38 80 01 7C */	li r4, 0x17c
/* 803842D0 0037F810  7D 09 03 A6 */	mtctr r8
lbl_803842D4:
/* 803842D4 0037F814  38 08 FF FF */	addi r0, r8, -1
/* 803842D8 0037F818  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 803842DC 0037F81C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 803842E0 0037F820  39 08 FF FF */	addi r8, r8, -1
/* 803842E4 0037F824  7C C5 22 14 */	add r6, r5, r4
/* 803842E8 0037F828  38 84 FF EC */	addi r4, r4, -20
/* 803842EC 0037F82C  7C E5 02 14 */	add r7, r5, r0
/* 803842F0 0037F830  7C A5 00 2E */	lwzx r5, r5, r0
/* 803842F4 0037F834  80 07 00 04 */	lwz r0, 4(r7)
/* 803842F8 0037F838  90 A6 00 00 */	stw r5, 0(r6)
/* 803842FC 0037F83C  90 06 00 04 */	stw r0, 4(r6)
/* 80384300 0037F840  80 A7 00 08 */	lwz r5, 8(r7)
/* 80384304 0037F844  80 07 00 0C */	lwz r0, 0xc(r7)
/* 80384308 0037F848  90 A6 00 08 */	stw r5, 8(r6)
/* 8038430C 0037F84C  90 06 00 0C */	stw r0, 0xc(r6)
/* 80384310 0037F850  88 07 00 10 */	lbz r0, 0x10(r7)
/* 80384314 0037F854  98 06 00 10 */	stb r0, 0x10(r6)
/* 80384318 0037F858  42 00 FF BC */	bdnz lbl_803842D4
/* 8038431C 0037F85C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80384320 0037F860  7F A4 EB 78 */	mr r4, r29
/* 80384324 0037F864  4B D2 91 ED */	bl func_800AD510
/* 80384328 0037F868  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 8038432C 0037F86C  2C 1F 00 00 */	cmpwi r31, 0
/* 80384330 0037F870  9B C3 00 10 */	stb r30, 0x10(r3)
/* 80384334 0037F874  41 82 00 18 */	beq lbl_8038434C
/* 80384338 0037F878  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 8038433C 0037F87C  7F E4 FB 78 */	mr r4, r31
/* 80384340 0037F880  38 63 00 08 */	addi r3, r3, 8
/* 80384344 0037F884  4B D2 91 CD */	bl func_800AD510
/* 80384348 0037F888  48 00 00 48 */	b lbl_80384390
lbl_8038434C:
/* 8038434C 0037F88C  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 80384350 0037F890  C0 7D 00 00 */	lfs f3, 0(r29)
/* 80384354 0037F894  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80384358 0037F898  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8038435C 0037F89C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80384360 0037F8A0  EC 23 08 28 */	fsubs f1, f3, f1
/* 80384364 0037F8A4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80384368 0037F8A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8038436C 0037F8AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80384370 0037F8B0  80 61 00 08 */	lwz r3, 8(r1)
/* 80384374 0037F8B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80384378 0037F8B8  90 61 00 10 */	stw r3, 0x10(r1)
/* 8038437C 0037F8BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80384380 0037F8C0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80384384 0037F8C4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80384388 0037F8C8  D0 24 00 08 */	stfs f1, 8(r4)
/* 8038438C 0037F8CC  D0 04 00 0C */	stfs f0, 0xc(r4)
lbl_80384390:
/* 80384390 0037F8D0  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 80384394 0037F8D4  38 63 00 08 */	addi r3, r3, 8
/* 80384398 0037F8D8  48 06 0A C1 */	bl func_803E4E58
/* 8038439C 0037F8DC  39 61 00 30 */	addi r11, r1, 0x30
/* 803843A0 0037F8E0  48 19 31 E1 */	bl func_80517580
/* 803843A4 0037F8E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803843A8 0037F8E8  7C 08 03 A6 */	mtlr r0
/* 803843AC 0037F8EC  38 21 00 30 */	addi r1, r1, 0x30
/* 803843B0 0037F8F0  4E 80 00 20 */	blr 

.global func_803843B4
func_803843B4:
/* 803843B4 0037F8F4  A1 04 00 00 */	lhz r8, 0(r4)
/* 803843B8 0037F8F8  20 08 00 14 */	subfic r0, r8, 0x14
/* 803843BC 0037F8FC  7C 09 03 A6 */	mtctr r0
/* 803843C0 0037F900  28 08 00 14 */	cmplwi r8, 0x14
/* 803843C4 0037F904  40 80 00 34 */	bge lbl_803843F8
lbl_803843C8:
/* 803843C8 0037F908  55 07 04 3E */	clrlwi r7, r8, 0x10
/* 803843CC 0037F90C  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 803843D0 0037F910  1C 07 00 14 */	mulli r0, r7, 0x14
/* 803843D4 0037F914  7C C6 02 14 */	add r6, r6, r0
/* 803843D8 0037F918  88 06 00 10 */	lbz r0, 0x10(r6)
/* 803843DC 0037F91C  2C 00 00 00 */	cmpwi r0, 0
/* 803843E0 0037F920  40 82 00 10 */	bne lbl_803843F0
/* 803843E4 0037F924  B1 04 00 00 */	sth r8, 0(r4)
/* 803843E8 0037F928  39 00 00 01 */	li r8, 1
/* 803843EC 0037F92C  48 00 00 20 */	b lbl_8038440C
lbl_803843F0:
/* 803843F0 0037F930  39 08 00 01 */	addi r8, r8, 1
/* 803843F4 0037F934  42 00 FF D4 */	bdnz lbl_803843C8
lbl_803843F8:
/* 803843F8 0037F938  38 00 00 14 */	li r0, 0x14
/* 803843FC 0037F93C  38 60 00 00 */	li r3, 0
/* 80384400 0037F940  B0 05 00 00 */	sth r0, 0(r5)
/* 80384404 0037F944  B0 04 00 00 */	sth r0, 0(r4)
/* 80384408 0037F948  4E 80 00 20 */	blr 
lbl_8038440C:
/* 8038440C 0037F94C  38 07 00 01 */	addi r0, r7, 1
/* 80384410 0037F950  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 80384414 0037F954  20 06 00 14 */	subfic r0, r6, 0x14
/* 80384418 0037F958  7C 09 03 A6 */	mtctr r0
/* 8038441C 0037F95C  28 06 00 14 */	cmplwi r6, 0x14
/* 80384420 0037F960  40 80 00 38 */	bge lbl_80384458
lbl_80384424:
/* 80384424 0037F964  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80384428 0037F968  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 8038442C 0037F96C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80384430 0037F970  7C 84 02 14 */	add r4, r4, r0
/* 80384434 0037F974  88 04 00 10 */	lbz r0, 0x10(r4)
/* 80384438 0037F978  28 00 00 01 */	cmplwi r0, 1
/* 8038443C 0037F97C  40 82 00 10 */	bne lbl_8038444C
/* 80384440 0037F980  B0 C5 00 00 */	sth r6, 0(r5)
/* 80384444 0037F984  7D 03 43 78 */	mr r3, r8
/* 80384448 0037F988  4E 80 00 20 */	blr 
lbl_8038444C:
/* 8038444C 0037F98C  38 C6 00 01 */	addi r6, r6, 1
/* 80384450 0037F990  39 08 00 01 */	addi r8, r8, 1
/* 80384454 0037F994  42 00 FF D0 */	bdnz lbl_80384424
lbl_80384458:
/* 80384458 0037F998  38 00 00 14 */	li r0, 0x14
/* 8038445C 0037F99C  7D 03 43 78 */	mr r3, r8
/* 80384460 0037F9A0  B0 05 00 00 */	sth r0, 0(r5)
/* 80384464 0037F9A4  4E 80 00 20 */	blr 
/* 80384468 0037F9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038446C 0037F9AC  7C 08 02 A6 */	mflr r0
/* 80384470 0037F9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80384474 0037F9B4  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80384478 0037F9B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038447C 0037F9BC  7C 7F 1B 78 */	mr r31, r3
/* 80384480 0037F9C0  2C 00 00 14 */	cmpwi r0, 0x14
/* 80384484 0037F9C4  40 80 00 10 */	bge lbl_80384494
/* 80384488 0037F9C8  48 00 02 91 */	bl func_80384718
/* 8038448C 0037F9CC  7F E3 FB 78 */	mr r3, r31
/* 80384490 0037F9D0  48 00 00 19 */	bl func_803844A8
lbl_80384494:
/* 80384494 0037F9D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384498 0037F9D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038449C 0037F9DC  7C 08 03 A6 */	mtlr r0
/* 803844A0 0037F9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803844A4 0037F9E4  4E 80 00 20 */	blr 

.global func_803844A8
func_803844A8:
/* 803844A8 0037F9E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803844AC 0037F9EC  7C 08 02 A6 */	mflr r0
/* 803844B0 0037F9F0  90 01 00 54 */	stw r0, 0x54(r1)
/* 803844B4 0037F9F4  39 61 00 50 */	addi r11, r1, 0x50
/* 803844B8 0037F9F8  48 19 30 75 */	bl _savegpr_26
/* 803844BC 0037F9FC  C0 22 16 4C */	lfs f1, lbl_806AC8CC-_SDA2_BASE_(r2)
/* 803844C0 0037FA00  38 00 00 00 */	li r0, 0
/* 803844C4 0037FA04  C0 02 16 48 */	lfs f0, lbl_806AC8C8-_SDA2_BASE_(r2)
/* 803844C8 0037FA08  7C 7F 1B 78 */	mr r31, r3
/* 803844CC 0037FA0C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 803844D0 0037FA10  38 60 00 00 */	li r3, 0
/* 803844D4 0037FA14  3F 80 CC 01 */	lis r28, 0xcc01
/* 803844D8 0037FA18  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 803844DC 0037FA1C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 803844E0 0037FA20  B0 01 00 08 */	sth r0, 8(r1)
/* 803844E4 0037FA24  48 00 00 F0 */	b lbl_803845D4
lbl_803844E8:
/* 803844E8 0037FA28  7F E3 FB 78 */	mr r3, r31
/* 803844EC 0037FA2C  38 81 00 0A */	addi r4, r1, 0xa
/* 803844F0 0037FA30  38 A1 00 08 */	addi r5, r1, 8
/* 803844F4 0037FA34  4B FF FE C1 */	bl func_803843B4
/* 803844F8 0037FA38  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803844FC 0037FA3C  28 00 00 02 */	cmplwi r0, 2
/* 80384500 0037FA40  40 80 00 10 */	bge lbl_80384510
/* 80384504 0037FA44  A0 61 00 08 */	lhz r3, 8(r1)
/* 80384508 0037FA48  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8038450C 0037FA4C  48 00 00 C8 */	b lbl_803845D4
lbl_80384510:
/* 80384510 0037FA50  54 65 0C 3C */	rlwinm r5, r3, 1, 0x10, 0x1e
/* 80384514 0037FA54  38 60 00 98 */	li r3, 0x98
/* 80384518 0037FA58  38 80 00 00 */	li r4, 0
/* 8038451C 0037FA5C  48 13 61 95 */	bl func_804BA6B0
/* 80384520 0037FA60  A3 61 00 0A */	lhz r27, 0xa(r1)
/* 80384524 0037FA64  1F BB 00 14 */	mulli r29, r27, 0x14
/* 80384528 0037FA68  57 7E 10 3A */	slwi r30, r27, 2
/* 8038452C 0037FA6C  48 00 00 98 */	b lbl_803845C4
lbl_80384530:
/* 80384530 0037FA70  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80384534 0037FA74  38 61 00 2C */	addi r3, r1, 0x2c
/* 80384538 0037FA78  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8038453C 0037FA7C  7C 24 F4 2E */	lfsx f1, r4, r30
/* 80384540 0037FA80  7F 40 EA 14 */	add r26, r0, r29
/* 80384544 0037FA84  4B D1 43 2D */	bl func_80098870
/* 80384548 0037FA88  90 81 00 18 */	stw r4, 0x18(r1)
/* 8038454C 0037FA8C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80384550 0037FA90  90 61 00 14 */	stw r3, 0x14(r1)
/* 80384554 0037FA94  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80384558 0037FA98  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8038455C 0037FA9C  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80384560 0037FAA0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80384564 0037FAA4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80384568 0037FAA8  EC 40 18 28 */	fsubs f2, f0, f3
/* 8038456C 0037FAAC  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80384570 0037FAB0  48 00 03 B9 */	bl func_80384928
/* 80384574 0037FAB4  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80384578 0037FAB8  C0 02 16 4C */	lfs f0, lbl_806AC8CC-_SDA2_BASE_(r2)
/* 8038457C 0037FABC  7C 43 F4 2E */	lfsx f2, r3, r30
/* 80384580 0037FAC0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80384584 0037FAC4  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 80384588 0037FAC8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8038458C 0037FACC  D0 5C 80 00 */	stfs f2, -0x8000(r28)
/* 80384590 0037FAD0  C0 7A 00 00 */	lfs f3, 0(r26)
/* 80384594 0037FAD4  C0 5A 00 04 */	lfs f2, 4(r26)
/* 80384598 0037FAD8  EC 23 08 2A */	fadds f1, f3, f1
/* 8038459C 0037FADC  EC 42 00 2A */	fadds f2, f2, f0
/* 803845A0 0037FAE0  48 00 03 89 */	bl func_80384928
/* 803845A4 0037FAE4  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 803845A8 0037FAE8  3B 7B 00 01 */	addi r27, r27, 1
/* 803845AC 0037FAEC  C0 02 16 48 */	lfs f0, lbl_806AC8C8-_SDA2_BASE_(r2)
/* 803845B0 0037FAF0  3B BD 00 14 */	addi r29, r29, 0x14
/* 803845B4 0037FAF4  7C 23 F4 2E */	lfsx f1, r3, r30
/* 803845B8 0037FAF8  3B DE 00 04 */	addi r30, r30, 4
/* 803845BC 0037FAFC  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 803845C0 0037FB00  D0 3C 80 00 */	stfs f1, -0x8000(r28)
lbl_803845C4:
/* 803845C4 0037FB04  A0 61 00 08 */	lhz r3, 8(r1)
/* 803845C8 0037FB08  7C 1B 18 00 */	cmpw r27, r3
/* 803845CC 0037FB0C  41 80 FF 64 */	blt lbl_80384530
/* 803845D0 0037FB10  B0 61 00 0A */	sth r3, 0xa(r1)
lbl_803845D4:
/* 803845D4 0037FB14  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803845D8 0037FB18  28 00 00 14 */	cmplwi r0, 0x14
/* 803845DC 0037FB1C  41 80 FF 0C */	blt lbl_803844E8
/* 803845E0 0037FB20  C0 22 16 48 */	lfs f1, lbl_806AC8C8-_SDA2_BASE_(r2)
/* 803845E4 0037FB24  38 00 00 00 */	li r0, 0
/* 803845E8 0037FB28  C0 02 16 4C */	lfs f0, lbl_806AC8CC-_SDA2_BASE_(r2)
/* 803845EC 0037FB2C  38 60 00 00 */	li r3, 0
/* 803845F0 0037FB30  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 803845F4 0037FB34  3F 80 CC 01 */	lis r28, 0xcc01
/* 803845F8 0037FB38  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 803845FC 0037FB3C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80384600 0037FB40  B0 01 00 08 */	sth r0, 8(r1)
/* 80384604 0037FB44  48 00 00 F0 */	b lbl_803846F4
lbl_80384608:
/* 80384608 0037FB48  7F E3 FB 78 */	mr r3, r31
/* 8038460C 0037FB4C  38 81 00 0A */	addi r4, r1, 0xa
/* 80384610 0037FB50  38 A1 00 08 */	addi r5, r1, 8
/* 80384614 0037FB54  4B FF FD A1 */	bl func_803843B4
/* 80384618 0037FB58  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8038461C 0037FB5C  28 00 00 02 */	cmplwi r0, 2
/* 80384620 0037FB60  40 80 00 10 */	bge lbl_80384630
/* 80384624 0037FB64  A0 61 00 08 */	lhz r3, 8(r1)
/* 80384628 0037FB68  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8038462C 0037FB6C  48 00 00 C8 */	b lbl_803846F4
lbl_80384630:
/* 80384630 0037FB70  54 65 0C 3C */	rlwinm r5, r3, 1, 0x10, 0x1e
/* 80384634 0037FB74  38 60 00 98 */	li r3, 0x98
/* 80384638 0037FB78  38 80 00 00 */	li r4, 0
/* 8038463C 0037FB7C  48 13 60 75 */	bl func_804BA6B0
/* 80384640 0037FB80  A3 41 00 0A */	lhz r26, 0xa(r1)
/* 80384644 0037FB84  1F DA 00 14 */	mulli r30, r26, 0x14
/* 80384648 0037FB88  57 5D 10 3A */	slwi r29, r26, 2
/* 8038464C 0037FB8C  48 00 00 98 */	b lbl_803846E4
lbl_80384650:
/* 80384650 0037FB90  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80384654 0037FB94  38 61 00 2C */	addi r3, r1, 0x2c
/* 80384658 0037FB98  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8038465C 0037FB9C  7C 24 EC 2E */	lfsx f1, r4, r29
/* 80384660 0037FBA0  7F 60 F2 14 */	add r27, r0, r30
/* 80384664 0037FBA4  4B D1 42 0D */	bl func_80098870
/* 80384668 0037FBA8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8038466C 0037FBAC  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80384670 0037FBB0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80384674 0037FBB4  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80384678 0037FBB8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8038467C 0037FBBC  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80384680 0037FBC0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80384684 0037FBC4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80384688 0037FBC8  EC 40 18 28 */	fsubs f2, f0, f3
/* 8038468C 0037FBCC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80384690 0037FBD0  48 00 02 99 */	bl func_80384928
/* 80384694 0037FBD4  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80384698 0037FBD8  C0 02 16 4C */	lfs f0, lbl_806AC8CC-_SDA2_BASE_(r2)
/* 8038469C 0037FBDC  7C 43 EC 2E */	lfsx f2, r3, r29
/* 803846A0 0037FBE0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 803846A4 0037FBE4  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 803846A8 0037FBE8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 803846AC 0037FBEC  D0 5C 80 00 */	stfs f2, -0x8000(r28)
/* 803846B0 0037FBF0  C0 7B 00 00 */	lfs f3, 0(r27)
/* 803846B4 0037FBF4  C0 5B 00 04 */	lfs f2, 4(r27)
/* 803846B8 0037FBF8  EC 23 08 2A */	fadds f1, f3, f1
/* 803846BC 0037FBFC  EC 42 00 2A */	fadds f2, f2, f0
/* 803846C0 0037FC00  48 00 02 69 */	bl func_80384928
/* 803846C4 0037FC04  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 803846C8 0037FC08  3B 5A 00 01 */	addi r26, r26, 1
/* 803846CC 0037FC0C  C0 02 16 48 */	lfs f0, lbl_806AC8C8-_SDA2_BASE_(r2)
/* 803846D0 0037FC10  3B DE 00 14 */	addi r30, r30, 0x14
/* 803846D4 0037FC14  7C 23 EC 2E */	lfsx f1, r3, r29
/* 803846D8 0037FC18  3B BD 00 04 */	addi r29, r29, 4
/* 803846DC 0037FC1C  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 803846E0 0037FC20  D0 3C 80 00 */	stfs f1, -0x8000(r28)
lbl_803846E4:
/* 803846E4 0037FC24  A0 61 00 08 */	lhz r3, 8(r1)
/* 803846E8 0037FC28  7C 1A 18 00 */	cmpw r26, r3
/* 803846EC 0037FC2C  41 80 FF 64 */	blt lbl_80384650
/* 803846F0 0037FC30  B0 61 00 0A */	sth r3, 0xa(r1)
lbl_803846F4:
/* 803846F4 0037FC34  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803846F8 0037FC38  28 00 00 14 */	cmplwi r0, 0x14
/* 803846FC 0037FC3C  41 80 FF 0C */	blt lbl_80384608
/* 80384700 0037FC40  39 61 00 50 */	addi r11, r1, 0x50
/* 80384704 0037FC44  48 19 2E 75 */	bl _restgpr_26
/* 80384708 0037FC48  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8038470C 0037FC4C  7C 08 03 A6 */	mtlr r0
/* 80384710 0037FC50  38 21 00 50 */	addi r1, r1, 0x50
/* 80384714 0037FC54  4E 80 00 20 */	blr 

.global func_80384718
func_80384718:
/* 80384718 0037FC58  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8038471C 0037FC5C  7C 08 02 A6 */	mflr r0
/* 80384720 0037FC60  38 80 00 09 */	li r4, 9
/* 80384724 0037FC64  38 A0 00 00 */	li r5, 0
/* 80384728 0037FC68  90 01 00 54 */	stw r0, 0x54(r1)
/* 8038472C 0037FC6C  38 C0 00 04 */	li r6, 4
/* 80384730 0037FC70  38 E0 00 00 */	li r7, 0
/* 80384734 0037FC74  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80384738 0037FC78  7C 7F 1B 78 */	mr r31, r3
/* 8038473C 0037FC7C  38 60 00 00 */	li r3, 0
/* 80384740 0037FC80  48 13 4C D5 */	bl func_804B9414
/* 80384744 0037FC84  38 60 00 00 */	li r3, 0
/* 80384748 0037FC88  38 80 00 0D */	li r4, 0xd
/* 8038474C 0037FC8C  38 A0 00 01 */	li r5, 1
/* 80384750 0037FC90  38 C0 00 04 */	li r6, 4
/* 80384754 0037FC94  38 E0 00 00 */	li r7, 0
/* 80384758 0037FC98  48 13 4C BD */	bl func_804B9414
/* 8038475C 0037FC9C  48 13 4C 85 */	bl func_804B93E0
/* 80384760 0037FCA0  38 60 00 09 */	li r3, 9
/* 80384764 0037FCA4  38 80 00 01 */	li r4, 1
/* 80384768 0037FCA8  48 13 48 39 */	bl func_804B8FA0
/* 8038476C 0037FCAC  38 60 00 0D */	li r3, 0xd
/* 80384770 0037FCB0  38 80 00 01 */	li r4, 1
/* 80384774 0037FCB4  48 13 48 2D */	bl func_804B8FA0
/* 80384778 0037FCB8  38 60 00 01 */	li r3, 1
/* 8038477C 0037FCBC  48 13 52 F5 */	bl func_804B9A70
/* 80384780 0037FCC0  38 60 00 00 */	li r3, 0
/* 80384784 0037FCC4  38 80 00 00 */	li r4, 0
/* 80384788 0037FCC8  38 A0 00 04 */	li r5, 4
/* 8038478C 0037FCCC  38 C0 00 3C */	li r6, 0x3c
/* 80384790 0037FCD0  38 E0 00 00 */	li r7, 0
/* 80384794 0037FCD4  39 00 00 7D */	li r8, 0x7d
/* 80384798 0037FCD8  48 13 50 B1 */	bl func_804B9848
/* 8038479C 0037FCDC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 803847A0 0037FCE0  38 80 00 00 */	li r4, 0
/* 803847A4 0037FCE4  48 09 21 49 */	bl func_804168EC
/* 803847A8 0037FCE8  38 61 00 0C */	addi r3, r1, 0xc
/* 803847AC 0037FCEC  4B C9 1E 05 */	bl func_800165B0
/* 803847B0 0037FCF0  38 61 00 0C */	addi r3, r1, 0xc
/* 803847B4 0037FCF4  38 80 00 00 */	li r4, 0
/* 803847B8 0037FCF8  48 13 9A 21 */	bl func_804BE1D8
/* 803847BC 0037FCFC  38 60 00 00 */	li r3, 0
/* 803847C0 0037FD00  48 13 9A C1 */	bl func_804BE280
/* 803847C4 0037FD04  38 60 00 01 */	li r3, 1
/* 803847C8 0037FD08  48 13 73 0D */	bl func_804BBAD4
/* 803847CC 0037FD0C  38 60 00 04 */	li r3, 4
/* 803847D0 0037FD10  38 80 00 00 */	li r4, 0
/* 803847D4 0037FD14  38 A0 00 00 */	li r5, 0
/* 803847D8 0037FD18  38 C0 00 00 */	li r6, 0
/* 803847DC 0037FD1C  38 E0 00 00 */	li r7, 0
/* 803847E0 0037FD20  39 00 00 00 */	li r8, 0
/* 803847E4 0037FD24  39 20 00 02 */	li r9, 2
/* 803847E8 0037FD28  48 13 73 11 */	bl func_804BBAF8
/* 803847EC 0037FD2C  38 60 00 05 */	li r3, 5
/* 803847F0 0037FD30  38 80 00 00 */	li r4, 0
/* 803847F4 0037FD34  38 A0 00 00 */	li r5, 0
/* 803847F8 0037FD38  38 C0 00 00 */	li r6, 0
/* 803847FC 0037FD3C  38 E0 00 00 */	li r7, 0
/* 80384800 0037FD40  39 00 00 00 */	li r8, 0
/* 80384804 0037FD44  39 20 00 02 */	li r9, 2
/* 80384808 0037FD48  48 13 72 F1 */	bl func_804BBAF8
/* 8038480C 0037FD4C  38 60 00 00 */	li r3, 0
/* 80384810 0037FD50  48 13 87 A5 */	bl func_804BCFB4
/* 80384814 0037FD54  38 60 00 01 */	li r3, 1
/* 80384818 0037FD58  48 13 8F 0D */	bl func_804BD724
/* 8038481C 0037FD5C  38 60 00 00 */	li r3, 0
/* 80384820 0037FD60  38 80 00 00 */	li r4, 0
/* 80384824 0037FD64  38 A0 00 00 */	li r5, 0
/* 80384828 0037FD68  38 C0 00 04 */	li r6, 4
/* 8038482C 0037FD6C  48 13 8D 9D */	bl func_804BD5C8
/* 80384830 0037FD70  38 60 00 00 */	li r3, 0
/* 80384834 0037FD74  38 80 00 02 */	li r4, 2
/* 80384838 0037FD78  38 A0 00 0F */	li r5, 0xf
/* 8038483C 0037FD7C  38 C0 00 0F */	li r6, 0xf
/* 80384840 0037FD80  38 E0 00 0F */	li r7, 0xf
/* 80384844 0037FD84  48 13 89 19 */	bl func_804BD15C
/* 80384848 0037FD88  38 60 00 00 */	li r3, 0
/* 8038484C 0037FD8C  38 80 00 00 */	li r4, 0
/* 80384850 0037FD90  38 A0 00 00 */	li r5, 0
/* 80384854 0037FD94  38 C0 00 00 */	li r6, 0
/* 80384858 0037FD98  38 E0 00 00 */	li r7, 0
/* 8038485C 0037FD9C  39 00 00 00 */	li r8, 0
/* 80384860 0037FDA0  48 13 89 7D */	bl func_804BD1DC
/* 80384864 0037FDA4  38 60 00 00 */	li r3, 0
/* 80384868 0037FDA8  38 80 00 04 */	li r4, 4
/* 8038486C 0037FDAC  38 A0 00 07 */	li r5, 7
/* 80384870 0037FDB0  38 C0 00 07 */	li r6, 7
/* 80384874 0037FDB4  38 E0 00 07 */	li r7, 7
/* 80384878 0037FDB8  48 13 89 25 */	bl func_804BD19C
/* 8038487C 0037FDBC  38 60 00 00 */	li r3, 0
/* 80384880 0037FDC0  38 80 00 00 */	li r4, 0
/* 80384884 0037FDC4  38 A0 00 00 */	li r5, 0
/* 80384888 0037FDC8  38 C0 00 00 */	li r6, 0
/* 8038488C 0037FDCC  38 E0 00 00 */	li r7, 0
/* 80384890 0037FDD0  39 00 00 00 */	li r8, 0
/* 80384894 0037FDD4  48 13 89 A1 */	bl func_804BD234
/* 80384898 0037FDD8  38 60 00 01 */	li r3, 1
/* 8038489C 0037FDDC  38 80 00 04 */	li r4, 4
/* 803848A0 0037FDE0  38 A0 00 01 */	li r5, 1
/* 803848A4 0037FDE4  38 C0 00 05 */	li r6, 5
/* 803848A8 0037FDE8  48 13 91 F1 */	bl func_804BDA98
/* 803848AC 0037FDEC  38 60 00 01 */	li r3, 1
/* 803848B0 0037FDF0  38 80 00 03 */	li r4, 3
/* 803848B4 0037FDF4  38 A0 00 01 */	li r5, 1
/* 803848B8 0037FDF8  48 13 92 89 */	bl func_804BDB40
/* 803848BC 0037FDFC  38 60 00 00 */	li r3, 0
/* 803848C0 0037FE00  48 13 92 B5 */	bl func_804BDB74
/* 803848C4 0037FE04  38 60 00 00 */	li r3, 0
/* 803848C8 0037FE08  48 13 60 B1 */	bl func_804BA978
/* 803848CC 0037FE0C  38 60 00 03 */	li r3, 3
/* 803848D0 0037FE10  38 80 00 FF */	li r4, 0xff
/* 803848D4 0037FE14  38 A0 00 01 */	li r5, 1
/* 803848D8 0037FE18  38 C0 00 01 */	li r6, 1
/* 803848DC 0037FE1C  38 E0 00 FF */	li r7, 0xff
/* 803848E0 0037FE20  48 13 8C 25 */	bl func_804BD504
/* 803848E4 0037FE24  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 803848E8 0037FE28  38 81 00 08 */	addi r4, r1, 8
/* 803848EC 0037FE2C  38 60 00 01 */	li r3, 1
/* 803848F0 0037FE30  88 05 00 00 */	lbz r0, 0(r5)
/* 803848F4 0037FE34  98 01 00 08 */	stb r0, 8(r1)
/* 803848F8 0037FE38  88 05 00 01 */	lbz r0, 1(r5)
/* 803848FC 0037FE3C  98 01 00 09 */	stb r0, 9(r1)
/* 80384900 0037FE40  88 05 00 02 */	lbz r0, 2(r5)
/* 80384904 0037FE44  98 01 00 0A */	stb r0, 0xa(r1)
/* 80384908 0037FE48  88 05 00 03 */	lbz r0, 3(r5)
/* 8038490C 0037FE4C  98 01 00 0B */	stb r0, 0xb(r1)
/* 80384910 0037FE50  48 13 89 7D */	bl func_804BD28C
/* 80384914 0037FE54  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80384918 0037FE58  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8038491C 0037FE5C  7C 08 03 A6 */	mtlr r0
/* 80384920 0037FE60  38 21 00 50 */	addi r1, r1, 0x50
/* 80384924 0037FE64  4E 80 00 20 */	blr 

.global func_80384928
func_80384928:
/* 80384928 0037FE68  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8038492C 0037FE6C  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 80384930 0037FE70  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 80384934 0037FE74  4E 80 00 20 */	blr 

.global func_80384938
func_80384938:
/* 80384938 0037FE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038493C 0037FE7C  7C 08 02 A6 */	mflr r0
/* 80384940 0037FE80  3C C0 80 5C */	lis r6, lbl_805C5248@ha
/* 80384944 0037FE84  38 A0 00 01 */	li r5, 1
/* 80384948 0037FE88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038494C 0037FE8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80384950 0037FE90  7C 9F 23 78 */	mr r31, r4
/* 80384954 0037FE94  38 86 52 48 */	addi r4, r6, lbl_805C5248@l
/* 80384958 0037FE98  93 C1 00 08 */	stw r30, 8(r1)
/* 8038495C 0037FE9C  7C 7E 1B 78 */	mr r30, r3
/* 80384960 0037FEA0  4B FE 17 2D */	bl func_8036608C
/* 80384964 0037FEA4  C0 02 16 5C */	lfs f0, lbl_806AC8DC-_SDA2_BASE_(r2)
/* 80384968 0037FEA8  3C A0 80 5C */	lis r5, lbl_805C52A4@ha
/* 8038496C 0037FEAC  38 80 00 00 */	li r4, 0
/* 80384970 0037FEB0  38 00 FF FF */	li r0, -1
/* 80384974 0037FEB4  38 A5 52 A4 */	addi r5, r5, lbl_805C52A4@l
/* 80384978 0037FEB8  98 9E 00 20 */	stb r4, 0x20(r30)
/* 8038497C 0037FEBC  7F C3 F3 78 */	mr r3, r30
/* 80384980 0037FEC0  90 BE 00 00 */	stw r5, 0(r30)
/* 80384984 0037FEC4  90 9E 00 24 */	stw r4, 0x24(r30)
/* 80384988 0037FEC8  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8038498C 0037FECC  93 FE 00 2C */	stw r31, 0x2c(r30)
/* 80384990 0037FED0  90 9E 00 30 */	stw r4, 0x30(r30)
/* 80384994 0037FED4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80384998 0037FED8  90 9E 00 40 */	stw r4, 0x40(r30)
/* 8038499C 0037FEDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803849A0 0037FEE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803849A4 0037FEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803849A8 0037FEE8  7C 08 03 A6 */	mtlr r0
/* 803849AC 0037FEEC  38 21 00 10 */	addi r1, r1, 0x10
/* 803849B0 0037FEF0  4E 80 00 20 */	blr 

.global func_803849B4
func_803849B4:
/* 803849B4 0037FEF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803849B8 0037FEF8  7C 08 02 A6 */	mflr r0
/* 803849BC 0037FEFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803849C0 0037FF00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803849C4 0037FF04  7C 7F 1B 78 */	mr r31, r3
/* 803849C8 0037FF08  90 83 00 30 */	stw r4, 0x30(r3)
/* 803849CC 0037FF0C  98 A3 00 20 */	stb r5, 0x20(r3)
/* 803849D0 0037FF10  48 05 37 7D */	bl func_803D814C
/* 803849D4 0037FF14  3C 80 80 5C */	lis r4, lbl_805C525D@ha
/* 803849D8 0037FF18  7F E3 FB 78 */	mr r3, r31
/* 803849DC 0037FF1C  38 84 52 5D */	addi r4, r4, lbl_805C525D@l
/* 803849E0 0037FF20  38 A0 00 00 */	li r5, 0
/* 803849E4 0037FF24  48 05 25 05 */	bl func_803D6EE8
/* 803849E8 0037FF28  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 803849EC 0037FF2C  38 61 00 08 */	addi r3, r1, 8
/* 803849F0 0037FF30  48 04 24 15 */	bl func_803C6E04
/* 803849F4 0037FF34  38 81 00 08 */	addi r4, r1, 8
/* 803849F8 0037FF38  7F E3 FB 78 */	mr r3, r31
/* 803849FC 0037FF3C  7C 85 23 78 */	mr r5, r4
/* 80384A00 0037FF40  48 00 02 11 */	bl func_80384C10
/* 80384A04 0037FF44  81 9F 00 00 */	lwz r12, 0(r31)
/* 80384A08 0037FF48  7F E3 FB 78 */	mr r3, r31
/* 80384A0C 0037FF4C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80384A10 0037FF50  7D 89 03 A6 */	mtctr r12
/* 80384A14 0037FF54  4E 80 04 21 */	bctrl 
/* 80384A18 0037FF58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80384A1C 0037FF5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80384A20 0037FF60  7C 08 03 A6 */	mtlr r0
/* 80384A24 0037FF64  38 21 00 20 */	addi r1, r1, 0x20
/* 80384A28 0037FF68  4E 80 00 20 */	blr 

.global func_80384A2C
func_80384A2C:
/* 80384A2C 0037FF6C  48 05 37 20 */	b func_803D814C
