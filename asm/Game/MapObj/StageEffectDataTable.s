.include "macros.inc"

.text

.global func_8023C054
func_8023C054:
/* 8023C054 00237594  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C058 00237598  7C 08 02 A6 */	mflr r0
/* 8023C05C 0023759C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C060 002375A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C064 002375A4  48 2D B4 D1 */	bl func_80517534
/* 8023C068 002375A8  3F C0 80 53 */	lis r30, lbl_80532340@ha
/* 8023C06C 002375AC  7C 7C 1B 78 */	mr r28, r3
/* 8023C070 002375B0  3B DE 23 40 */	addi r30, r30, lbl_80532340@l
/* 8023C074 002375B4  3B A0 00 00 */	li r29, 0
/* 8023C078 002375B8  3B E0 00 00 */	li r31, 0
lbl_8023C07C:
/* 8023C07C 002375BC  7C 9E F8 2E */	lwzx r4, r30, r31
/* 8023C080 002375C0  7F 83 E3 78 */	mr r3, r28
/* 8023C084 002375C4  48 1C 14 1D */	bl func_803FD4A0
/* 8023C088 002375C8  2C 03 00 00 */	cmpwi r3, 0
/* 8023C08C 002375CC  41 82 00 0C */	beq lbl_8023C098
/* 8023C090 002375D0  7C 7E FA 14 */	add r3, r30, r31
/* 8023C094 002375D4  48 00 00 18 */	b lbl_8023C0AC
lbl_8023C098:
/* 8023C098 002375D8  3B BD 00 01 */	addi r29, r29, 1
/* 8023C09C 002375DC  3B FF 00 18 */	addi r31, r31, 0x18
/* 8023C0A0 002375E0  28 1D 00 20 */	cmplwi r29, 0x20
/* 8023C0A4 002375E4  41 80 FF D8 */	blt lbl_8023C07C
/* 8023C0A8 002375E8  38 60 00 00 */	li r3, 0
lbl_8023C0AC:
/* 8023C0AC 002375EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C0B0 002375F0  48 2D B4 D1 */	bl func_80517580
/* 8023C0B4 002375F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C0B8 002375F8  7C 08 03 A6 */	mtlr r0
/* 8023C0BC 002375FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C0C0 00237600  4E 80 00 20 */	blr 

.global func_8023C0C4
func_8023C0C4:
/* 8023C0C4 00237604  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C0C8 00237608  7C 08 02 A6 */	mflr r0
/* 8023C0CC 0023760C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C0D0 00237610  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C0D4 00237614  48 2D B4 61 */	bl func_80517534
/* 8023C0D8 00237618  3F C0 80 53 */	lis r30, lbl_80532640@ha
/* 8023C0DC 0023761C  7C 7C 1B 78 */	mr r28, r3
/* 8023C0E0 00237620  3B DE 26 40 */	addi r30, r30, lbl_80532640@l
/* 8023C0E4 00237624  3B A0 00 00 */	li r29, 0
/* 8023C0E8 00237628  3B E0 00 00 */	li r31, 0
lbl_8023C0EC:
/* 8023C0EC 0023762C  7C 9E F8 2E */	lwzx r4, r30, r31
/* 8023C0F0 00237630  7F 83 E3 78 */	mr r3, r28
/* 8023C0F4 00237634  48 1C 13 AD */	bl func_803FD4A0
/* 8023C0F8 00237638  2C 03 00 00 */	cmpwi r3, 0
/* 8023C0FC 0023763C  41 82 00 0C */	beq lbl_8023C108
/* 8023C100 00237640  7C 7E FA 14 */	add r3, r30, r31
/* 8023C104 00237644  48 00 00 18 */	b lbl_8023C11C
lbl_8023C108:
/* 8023C108 00237648  3B BD 00 01 */	addi r29, r29, 1
/* 8023C10C 0023764C  3B FF 00 10 */	addi r31, r31, 0x10
/* 8023C110 00237650  28 1D 00 1D */	cmplwi r29, 0x1d
/* 8023C114 00237654  41 80 FF D8 */	blt lbl_8023C0EC
/* 8023C118 00237658  38 60 00 00 */	li r3, 0
lbl_8023C11C:
/* 8023C11C 0023765C  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C120 00237660  48 2D B4 61 */	bl func_80517580
/* 8023C124 00237664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C128 00237668  7C 08 03 A6 */	mtlr r0
/* 8023C12C 0023766C  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C130 00237670  4E 80 00 20 */	blr 

.global func_8023C134
func_8023C134:
/* 8023C134 00237674  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C138 00237678  7C 08 02 A6 */	mflr r0
/* 8023C13C 0023767C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C140 00237680  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C144 00237684  48 2D B3 F1 */	bl func_80517534
/* 8023C148 00237688  3F C0 80 53 */	lis r30, lbl_80532810@ha
/* 8023C14C 0023768C  7C 7C 1B 78 */	mr r28, r3
/* 8023C150 00237690  3B DE 28 10 */	addi r30, r30, lbl_80532810@l
/* 8023C154 00237694  3B A0 00 00 */	li r29, 0
/* 8023C158 00237698  3B E0 00 00 */	li r31, 0
lbl_8023C15C:
/* 8023C15C 0023769C  7C 9E F8 2E */	lwzx r4, r30, r31
/* 8023C160 002376A0  7F 83 E3 78 */	mr r3, r28
/* 8023C164 002376A4  48 1C 13 3D */	bl func_803FD4A0
/* 8023C168 002376A8  2C 03 00 00 */	cmpwi r3, 0
/* 8023C16C 002376AC  41 82 00 0C */	beq lbl_8023C178
/* 8023C170 002376B0  7C 7E FA 14 */	add r3, r30, r31
/* 8023C174 002376B4  48 00 00 18 */	b lbl_8023C18C
lbl_8023C178:
/* 8023C178 002376B8  3B BD 00 01 */	addi r29, r29, 1
/* 8023C17C 002376BC  3B FF 00 18 */	addi r31, r31, 0x18
/* 8023C180 002376C0  28 1D 00 9B */	cmplwi r29, 0x9b
/* 8023C184 002376C4  41 80 FF D8 */	blt lbl_8023C15C
/* 8023C188 002376C8  38 60 00 00 */	li r3, 0
lbl_8023C18C:
/* 8023C18C 002376CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C190 002376D0  48 2D B3 F1 */	bl func_80517580
/* 8023C194 002376D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C198 002376D8  7C 08 03 A6 */	mtlr r0
/* 8023C19C 002376DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C1A0 002376E0  4E 80 00 20 */	blr 

.global func_8023C1A4
func_8023C1A4:
/* 8023C1A4 002376E4  2C 03 00 03 */	cmpwi r3, 3
/* 8023C1A8 002376E8  41 82 00 30 */	beq lbl_8023C1D8
/* 8023C1AC 002376EC  40 80 00 14 */	bge lbl_8023C1C0
/* 8023C1B0 002376F0  2C 03 00 01 */	cmpwi r3, 1
/* 8023C1B4 002376F4  41 82 00 1C */	beq lbl_8023C1D0
/* 8023C1B8 002376F8  40 80 00 1C */	bge lbl_8023C1D4
/* 8023C1BC 002376FC  4E 80 00 20 */	blr 
lbl_8023C1C0:
/* 8023C1C0 00237700  2C 03 00 05 */	cmpwi r3, 5
/* 8023C1C4 00237704  41 82 00 1C */	beq lbl_8023C1E0
/* 8023C1C8 00237708  4C 80 00 20 */	bgelr 
/* 8023C1CC 0023770C  48 00 00 10 */	b lbl_8023C1DC
lbl_8023C1D0:
/* 8023C1D0 00237710  48 1B 51 E0 */	b func_803F13B0
lbl_8023C1D4:
/* 8023C1D4 00237714  48 1B 52 34 */	b func_803F1408
lbl_8023C1D8:
/* 8023C1D8 00237718  48 1B 52 5C */	b func_803F1434
lbl_8023C1DC:
/* 8023C1DC 0023771C  48 1B 52 84 */	b func_803F1460
lbl_8023C1E0:
/* 8023C1E0 00237720  48 1B 52 AC */	b func_803F148C
/* 8023C1E4 00237724  4E 80 00 20 */	blr 

.global func_8023C1E8
func_8023C1E8:
/* 8023C1E8 00237728  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C1EC 0023772C  7C 08 02 A6 */	mflr r0
/* 8023C1F0 00237730  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C1F4 00237734  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8023C1F8 00237738  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0
/* 8023C1FC 0023773C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C200 00237740  7C 7F 1B 78 */	mr r31, r3
/* 8023C204 00237744  93 C1 00 08 */	stw r30, 8(r1)
/* 8023C208 00237748  7C 9E 23 78 */	mr r30, r4
/* 8023C20C 0023774C  7F C3 F3 78 */	mr r3, r30
/* 8023C210 00237750  4B FF FE 45 */	bl func_8023C054
/* 8023C214 00237754  2C 03 00 00 */	cmpwi r3, 0
/* 8023C218 00237758  41 82 00 14 */	beq lbl_8023C22C
/* 8023C21C 0023775C  7F C3 F3 78 */	mr r3, r30
/* 8023C220 00237760  4B FF FE 35 */	bl func_8023C054
/* 8023C224 00237764  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8023C228 00237768  48 00 00 08 */	b lbl_8023C230
lbl_8023C22C:
/* 8023C22C 0023776C  C0 22 E7 90 */	lfs f1, lbl_806A9A10-_SDA2_BASE_(r2)
lbl_8023C230:
/* 8023C230 00237770  C0 02 E7 94 */	lfs f0, lbl_806A9A14-_SDA2_BASE_(r2)
/* 8023C234 00237774  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8023C238 00237778  40 82 00 10 */	bne lbl_8023C248
/* 8023C23C 0023777C  7F E3 FB 78 */	mr r3, r31
/* 8023C240 00237780  48 18 1F 25 */	bl func_803BE164
/* 8023C244 00237784  48 00 00 54 */	b lbl_8023C298
lbl_8023C248:
/* 8023C248 00237788  7F E3 FB 78 */	mr r3, r31
/* 8023C24C 0023778C  48 18 11 51 */	bl func_803BD39C
/* 8023C250 00237790  C0 02 E7 90 */	lfs f0, lbl_806A9A10-_SDA2_BASE_(r2)
/* 8023C254 00237794  FF E0 08 90 */	fmr f31, f1
/* 8023C258 00237798  3B E0 00 00 */	li r31, 0
/* 8023C25C 0023779C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8023C260 002377A0  40 80 00 34 */	bge lbl_8023C294
/* 8023C264 002377A4  7F C3 F3 78 */	mr r3, r30
/* 8023C268 002377A8  4B FF FD ED */	bl func_8023C054
/* 8023C26C 002377AC  2C 03 00 00 */	cmpwi r3, 0
/* 8023C270 002377B0  41 82 00 14 */	beq lbl_8023C284
/* 8023C274 002377B4  7F C3 F3 78 */	mr r3, r30
/* 8023C278 002377B8  4B FF FD DD */	bl func_8023C054
/* 8023C27C 002377BC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8023C280 002377C0  48 00 00 08 */	b lbl_8023C288
lbl_8023C284:
/* 8023C284 002377C4  C0 02 E7 90 */	lfs f0, lbl_806A9A10-_SDA2_BASE_(r2)
lbl_8023C288:
/* 8023C288 002377C8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8023C28C 002377CC  40 80 00 08 */	bge lbl_8023C294
/* 8023C290 002377D0  3B E0 00 01 */	li r31, 1
lbl_8023C294:
/* 8023C294 002377D4  7F E3 FB 78 */	mr r3, r31
lbl_8023C298:
/* 8023C298 002377D8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0
/* 8023C29C 002377DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C2A0 002377E0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8023C2A4 002377E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C2A8 002377E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023C2AC 002377EC  7C 08 03 A6 */	mtlr r0
/* 8023C2B0 002377F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C2B4 002377F4  4E 80 00 20 */	blr 

.global func_8023C2B8
func_8023C2B8:
/* 8023C2B8 002377F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C2BC 002377FC  7C 08 02 A6 */	mflr r0
/* 8023C2C0 00237800  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C2C4 00237804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C2C8 00237808  7C 7F 1B 78 */	mr r31, r3
/* 8023C2CC 0023780C  4B FF FE 69 */	bl func_8023C134
/* 8023C2D0 00237810  2C 03 00 00 */	cmpwi r3, 0
/* 8023C2D4 00237814  41 82 00 14 */	beq lbl_8023C2E8
/* 8023C2D8 00237818  7F E3 FB 78 */	mr r3, r31
/* 8023C2DC 0023781C  4B FF FE 59 */	bl func_8023C134
/* 8023C2E0 00237820  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C2E4 00237824  48 00 00 08 */	b lbl_8023C2EC
lbl_8023C2E8:
/* 8023C2E8 00237828  38 60 00 00 */	li r3, 0
lbl_8023C2EC:
/* 8023C2EC 0023782C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C2F0 00237830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C2F4 00237834  7C 08 03 A6 */	mtlr r0
/* 8023C2F8 00237838  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C2FC 0023783C  4E 80 00 20 */	blr 

.global func_8023C300
func_8023C300:
/* 8023C300 00237840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C304 00237844  7C 08 02 A6 */	mflr r0
/* 8023C308 00237848  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C30C 0023784C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C310 00237850  7C 7F 1B 78 */	mr r31, r3
/* 8023C314 00237854  4B FF FE 21 */	bl func_8023C134
/* 8023C318 00237858  2C 03 00 00 */	cmpwi r3, 0
/* 8023C31C 0023785C  41 82 00 14 */	beq lbl_8023C330
/* 8023C320 00237860  7F E3 FB 78 */	mr r3, r31
/* 8023C324 00237864  4B FF FE 11 */	bl func_8023C134
/* 8023C328 00237868  80 63 00 08 */	lwz r3, 8(r3)
/* 8023C32C 0023786C  48 00 00 08 */	b lbl_8023C334
lbl_8023C330:
/* 8023C330 00237870  38 60 00 00 */	li r3, 0
lbl_8023C334:
/* 8023C334 00237874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C338 00237878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C33C 0023787C  7C 08 03 A6 */	mtlr r0
/* 8023C340 00237880  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C344 00237884  4E 80 00 20 */	blr 

.global func_8023C348
func_8023C348:
/* 8023C348 00237888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C34C 0023788C  7C 08 02 A6 */	mflr r0
/* 8023C350 00237890  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C354 00237894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C358 00237898  7C 7F 1B 78 */	mr r31, r3
/* 8023C35C 0023789C  4B FF FD D9 */	bl func_8023C134
/* 8023C360 002378A0  2C 03 00 00 */	cmpwi r3, 0
/* 8023C364 002378A4  41 82 00 14 */	beq lbl_8023C378
/* 8023C368 002378A8  7F E3 FB 78 */	mr r3, r31
/* 8023C36C 002378AC  4B FF FD C9 */	bl func_8023C134
/* 8023C370 002378B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8023C374 002378B4  48 00 00 08 */	b lbl_8023C37C
lbl_8023C378:
/* 8023C378 002378B8  38 60 00 00 */	li r3, 0
lbl_8023C37C:
/* 8023C37C 002378BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C380 002378C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C384 002378C4  7C 08 03 A6 */	mtlr r0
/* 8023C388 002378C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C38C 002378CC  4E 80 00 20 */	blr 

.global func_8023C390
func_8023C390:
/* 8023C390 002378D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C394 002378D4  7C 08 02 A6 */	mflr r0
/* 8023C398 002378D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C39C 002378DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C3A0 002378E0  7C 7F 1B 78 */	mr r31, r3
/* 8023C3A4 002378E4  4B FF FD 91 */	bl func_8023C134
/* 8023C3A8 002378E8  2C 03 00 00 */	cmpwi r3, 0
/* 8023C3AC 002378EC  41 82 00 14 */	beq lbl_8023C3C0
/* 8023C3B0 002378F0  7F E3 FB 78 */	mr r3, r31
/* 8023C3B4 002378F4  4B FF FD 81 */	bl func_8023C134
/* 8023C3B8 002378F8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8023C3BC 002378FC  48 00 00 08 */	b lbl_8023C3C4
lbl_8023C3C0:
/* 8023C3C0 00237900  38 60 FF FF */	li r3, -1
lbl_8023C3C4:
/* 8023C3C4 00237904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C3C8 00237908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C3CC 0023790C  7C 08 03 A6 */	mtlr r0
/* 8023C3D0 00237910  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C3D4 00237914  4E 80 00 20 */	blr 

.global func_8023C3D8
func_8023C3D8:
/* 8023C3D8 00237918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C3DC 0023791C  7C 08 02 A6 */	mflr r0
/* 8023C3E0 00237920  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C3E4 00237924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C3E8 00237928  7C 7F 1B 78 */	mr r31, r3
/* 8023C3EC 0023792C  4B FF FD 49 */	bl func_8023C134
/* 8023C3F0 00237930  2C 03 00 00 */	cmpwi r3, 0
/* 8023C3F4 00237934  41 82 00 20 */	beq lbl_8023C414
/* 8023C3F8 00237938  7F E3 FB 78 */	mr r3, r31
/* 8023C3FC 0023793C  4B FF FD 39 */	bl func_8023C134
/* 8023C400 00237940  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8023C404 00237944  38 03 FF FE */	addi r0, r3, -2
/* 8023C408 00237948  7C 00 00 34 */	cntlzw r0, r0
/* 8023C40C 0023794C  54 03 D9 7E */	srwi r3, r0, 5
/* 8023C410 00237950  48 00 00 08 */	b lbl_8023C418
lbl_8023C414:
/* 8023C414 00237954  38 60 00 00 */	li r3, 0
lbl_8023C418:
/* 8023C418 00237958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C41C 0023795C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C420 00237960  7C 08 03 A6 */	mtlr r0
/* 8023C424 00237964  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C428 00237968  4E 80 00 20 */	blr 

.global func_8023C42C
func_8023C42C:
/* 8023C42C 0023796C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C430 00237970  7C 08 02 A6 */	mflr r0
/* 8023C434 00237974  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C438 00237978  4B FF FC FD */	bl func_8023C134
/* 8023C43C 0023797C  30 03 FF FF */	addic r0, r3, -1
/* 8023C440 00237980  7C 60 19 10 */	subfe r3, r0, r3
/* 8023C444 00237984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C448 00237988  7C 08 03 A6 */	mtlr r0
/* 8023C44C 0023798C  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C450 00237990  4E 80 00 20 */	blr 

.global func_8023C454
func_8023C454:
/* 8023C454 00237994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C458 00237998  7C 08 02 A6 */	mflr r0
/* 8023C45C 0023799C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C460 002379A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C464 002379A4  3B E0 00 00 */	li r31, 0
/* 8023C468 002379A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8023C46C 002379AC  7C 7E 1B 78 */	mr r30, r3
/* 8023C470 002379B0  4B FF FB E5 */	bl func_8023C054
/* 8023C474 002379B4  2C 03 00 00 */	cmpwi r3, 0
/* 8023C478 002379B8  40 82 00 24 */	bne lbl_8023C49C
/* 8023C47C 002379BC  7F C3 F3 78 */	mr r3, r30
/* 8023C480 002379C0  4B FF FC 45 */	bl func_8023C0C4
/* 8023C484 002379C4  2C 03 00 00 */	cmpwi r3, 0
/* 8023C488 002379C8  40 82 00 14 */	bne lbl_8023C49C
/* 8023C48C 002379CC  7F C3 F3 78 */	mr r3, r30
/* 8023C490 002379D0  4B FF FC A5 */	bl func_8023C134
/* 8023C494 002379D4  2C 03 00 00 */	cmpwi r3, 0
/* 8023C498 002379D8  41 82 00 08 */	beq lbl_8023C4A0
lbl_8023C49C:
/* 8023C49C 002379DC  3B E0 00 01 */	li r31, 1
lbl_8023C4A0:
/* 8023C4A0 002379E0  7F E3 FB 78 */	mr r3, r31
/* 8023C4A4 002379E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C4A8 002379E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023C4AC 002379EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C4B0 002379F0  7C 08 03 A6 */	mtlr r0
/* 8023C4B4 002379F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C4B8 002379F8  4E 80 00 20 */	blr 

.global func_8023C4BC
func_8023C4BC:
/* 8023C4BC 002379FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C4C0 00237A00  7C 08 02 A6 */	mflr r0
/* 8023C4C4 00237A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C4C8 00237A08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C4CC 00237A0C  7C 9F 23 78 */	mr r31, r4
/* 8023C4D0 00237A10  4B FF FD 19 */	bl func_8023C1E8
/* 8023C4D4 00237A14  2C 03 00 00 */	cmpwi r3, 0
/* 8023C4D8 00237A18  41 82 00 2C */	beq lbl_8023C504
/* 8023C4DC 00237A1C  7F E3 FB 78 */	mr r3, r31
/* 8023C4E0 00237A20  4B FF FB 75 */	bl func_8023C054
/* 8023C4E4 00237A24  2C 03 00 00 */	cmpwi r3, 0
/* 8023C4E8 00237A28  41 82 00 14 */	beq lbl_8023C4FC
/* 8023C4EC 00237A2C  7F E3 FB 78 */	mr r3, r31
/* 8023C4F0 00237A30  4B FF FB 65 */	bl func_8023C054
/* 8023C4F4 00237A34  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C4F8 00237A38  48 00 00 08 */	b lbl_8023C500
lbl_8023C4FC:
/* 8023C4FC 00237A3C  38 60 00 00 */	li r3, 0
lbl_8023C500:
/* 8023C500 00237A40  4B FF FC A5 */	bl func_8023C1A4
lbl_8023C504:
/* 8023C504 00237A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C508 00237A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C50C 00237A4C  7C 08 03 A6 */	mtlr r0
/* 8023C510 00237A50  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C514 00237A54  4E 80 00 20 */	blr 

.global func_8023C518
func_8023C518:
/* 8023C518 00237A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C51C 00237A5C  7C 08 02 A6 */	mflr r0
/* 8023C520 00237A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C524 00237A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C528 00237A68  7C 9F 23 78 */	mr r31, r4
/* 8023C52C 00237A6C  4B FF FC BD */	bl func_8023C1E8
/* 8023C530 00237A70  2C 03 00 00 */	cmpwi r3, 0
/* 8023C534 00237A74  41 82 00 2C */	beq lbl_8023C560
/* 8023C538 00237A78  7F E3 FB 78 */	mr r3, r31
/* 8023C53C 00237A7C  4B FF FB 19 */	bl func_8023C054
/* 8023C540 00237A80  2C 03 00 00 */	cmpwi r3, 0
/* 8023C544 00237A84  41 82 00 14 */	beq lbl_8023C558
/* 8023C548 00237A88  7F E3 FB 78 */	mr r3, r31
/* 8023C54C 00237A8C  4B FF FB 09 */	bl func_8023C054
/* 8023C550 00237A90  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8023C554 00237A94  48 00 00 08 */	b lbl_8023C55C
lbl_8023C558:
/* 8023C558 00237A98  38 60 00 00 */	li r3, 0
lbl_8023C55C:
/* 8023C55C 00237A9C  4B FF FC 49 */	bl func_8023C1A4
lbl_8023C560:
/* 8023C560 00237AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C564 00237AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C568 00237AA8  7C 08 03 A6 */	mtlr r0
/* 8023C56C 00237AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C570 00237AB0  4E 80 00 20 */	blr 

.global func_8023C574
func_8023C574:
/* 8023C574 00237AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C578 00237AB8  7C 08 02 A6 */	mflr r0
/* 8023C57C 00237ABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C580 00237AC0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8023C584 00237AC4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0
/* 8023C588 00237AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C58C 00237ACC  7C 9F 23 78 */	mr r31, r4
/* 8023C590 00237AD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8023C594 00237AD4  7C 7E 1B 78 */	mr r30, r3
/* 8023C598 00237AD8  7F E3 FB 78 */	mr r3, r31
/* 8023C59C 00237ADC  4B FF FA B9 */	bl func_8023C054
/* 8023C5A0 00237AE0  2C 03 00 00 */	cmpwi r3, 0
/* 8023C5A4 00237AE4  41 82 00 14 */	beq lbl_8023C5B8
/* 8023C5A8 00237AE8  7F E3 FB 78 */	mr r3, r31
/* 8023C5AC 00237AEC  4B FF FA A9 */	bl func_8023C054
/* 8023C5B0 00237AF0  C3 E3 00 08 */	lfs f31, 8(r3)
/* 8023C5B4 00237AF4  48 00 00 08 */	b lbl_8023C5BC
lbl_8023C5B8:
/* 8023C5B8 00237AF8  C3 E2 E7 90 */	lfs f31, lbl_806A9A10-_SDA2_BASE_(r2)
lbl_8023C5BC:
/* 8023C5BC 00237AFC  C0 02 E7 90 */	lfs f0, lbl_806A9A10-_SDA2_BASE_(r2)
/* 8023C5C0 00237B00  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8023C5C4 00237B04  4C 40 13 82 */	cror 2, 0, 2
/* 8023C5C8 00237B08  41 82 00 34 */	beq lbl_8023C5FC
/* 8023C5CC 00237B0C  7F E3 FB 78 */	mr r3, r31
/* 8023C5D0 00237B10  4B FF FA 85 */	bl func_8023C054
/* 8023C5D4 00237B14  2C 03 00 00 */	cmpwi r3, 0
/* 8023C5D8 00237B18  41 82 00 14 */	beq lbl_8023C5EC
/* 8023C5DC 00237B1C  7F E3 FB 78 */	mr r3, r31
/* 8023C5E0 00237B20  4B FF FA 75 */	bl func_8023C054
/* 8023C5E4 00237B24  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8023C5E8 00237B28  48 00 00 08 */	b lbl_8023C5F0
lbl_8023C5EC:
/* 8023C5EC 00237B2C  C0 42 E7 90 */	lfs f2, lbl_806A9A10-_SDA2_BASE_(r2)
lbl_8023C5F0:
/* 8023C5F0 00237B30  FC 20 F8 90 */	fmr f1, f31
/* 8023C5F4 00237B34  7F C3 F3 78 */	mr r3, r30
/* 8023C5F8 00237B38  48 1B 4E C1 */	bl func_803F14B8
lbl_8023C5FC:
/* 8023C5FC 00237B3C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0
/* 8023C600 00237B40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C604 00237B44  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8023C608 00237B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C60C 00237B4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023C610 00237B50  7C 08 03 A6 */	mtlr r0
/* 8023C614 00237B54  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C618 00237B58  4E 80 00 20 */	blr 

.global func_8023C61C
func_8023C61C:
/* 8023C61C 00237B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C620 00237B60  7C 08 02 A6 */	mflr r0
/* 8023C624 00237B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C628 00237B68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C62C 00237B6C  7C 9F 23 78 */	mr r31, r4
/* 8023C630 00237B70  93 C1 00 08 */	stw r30, 8(r1)
/* 8023C634 00237B74  7C 7E 1B 78 */	mr r30, r3
/* 8023C638 00237B78  7F E3 FB 78 */	mr r3, r31
/* 8023C63C 00237B7C  4B FF FA 19 */	bl func_8023C054
/* 8023C640 00237B80  2C 03 00 00 */	cmpwi r3, 0
/* 8023C644 00237B84  41 82 00 14 */	beq lbl_8023C658
/* 8023C648 00237B88  7F E3 FB 78 */	mr r3, r31
/* 8023C64C 00237B8C  4B FF FA 09 */	bl func_8023C054
/* 8023C650 00237B90  C0 23 00 08 */	lfs f1, 8(r3)
/* 8023C654 00237B94  48 00 00 08 */	b lbl_8023C65C
lbl_8023C658:
/* 8023C658 00237B98  C0 22 E7 90 */	lfs f1, lbl_806A9A10-_SDA2_BASE_(r2)
lbl_8023C65C:
/* 8023C65C 00237B9C  C0 02 E7 90 */	lfs f0, lbl_806A9A10-_SDA2_BASE_(r2)
/* 8023C660 00237BA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8023C664 00237BA4  4C 40 13 82 */	cror 2, 0, 2
/* 8023C668 00237BA8  41 82 00 0C */	beq lbl_8023C674
/* 8023C66C 00237BAC  7F C3 F3 78 */	mr r3, r30
/* 8023C670 00237BB0  48 1B 4E B5 */	bl func_803F1524
lbl_8023C674:
/* 8023C674 00237BB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C678 00237BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C67C 00237BBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023C680 00237BC0  7C 08 03 A6 */	mtlr r0
/* 8023C684 00237BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C688 00237BC8  4E 80 00 20 */	blr 

.global func_8023C68C
func_8023C68C:
/* 8023C68C 00237BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C690 00237BD0  7C 08 02 A6 */	mflr r0
/* 8023C694 00237BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C698 00237BD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C69C 00237BDC  7C 9F 23 78 */	mr r31, r4
/* 8023C6A0 00237BE0  93 C1 00 08 */	stw r30, 8(r1)
/* 8023C6A4 00237BE4  7C 7E 1B 78 */	mr r30, r3
/* 8023C6A8 00237BE8  4B FF FB 41 */	bl func_8023C1E8
/* 8023C6AC 00237BEC  2C 03 00 00 */	cmpwi r3, 0
/* 8023C6B0 00237BF0  41 82 00 3C */	beq lbl_8023C6EC
/* 8023C6B4 00237BF4  7F E3 FB 78 */	mr r3, r31
/* 8023C6B8 00237BF8  4B FF FA 0D */	bl func_8023C0C4
/* 8023C6BC 00237BFC  2C 03 00 00 */	cmpwi r3, 0
/* 8023C6C0 00237C00  41 82 00 14 */	beq lbl_8023C6D4
/* 8023C6C4 00237C04  7F E3 FB 78 */	mr r3, r31
/* 8023C6C8 00237C08  4B FF F9 FD */	bl func_8023C0C4
/* 8023C6CC 00237C0C  80 83 00 04 */	lwz r4, 4(r3)
/* 8023C6D0 00237C10  48 00 00 08 */	b lbl_8023C6D8
lbl_8023C6D4:
/* 8023C6D4 00237C14  38 80 00 00 */	li r4, 0
lbl_8023C6D8:
/* 8023C6D8 00237C18  2C 04 00 00 */	cmpwi r4, 0
/* 8023C6DC 00237C1C  41 82 00 10 */	beq lbl_8023C6EC
/* 8023C6E0 00237C20  7F C3 F3 78 */	mr r3, r30
/* 8023C6E4 00237C24  38 A0 00 00 */	li r5, 0
/* 8023C6E8 00237C28  48 1B 4A A1 */	bl func_803F1188
lbl_8023C6EC:
/* 8023C6EC 00237C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C6F0 00237C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C6F4 00237C34  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023C6F8 00237C38  7C 08 03 A6 */	mtlr r0
/* 8023C6FC 00237C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C700 00237C40  4E 80 00 20 */	blr 

.global func_8023C704
func_8023C704:
/* 8023C704 00237C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C708 00237C48  7C 08 02 A6 */	mflr r0
/* 8023C70C 00237C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C710 00237C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C714 00237C54  7C 9F 23 78 */	mr r31, r4
/* 8023C718 00237C58  93 C1 00 08 */	stw r30, 8(r1)
/* 8023C71C 00237C5C  7C 7E 1B 78 */	mr r30, r3
/* 8023C720 00237C60  4B FF FA C9 */	bl func_8023C1E8
/* 8023C724 00237C64  2C 03 00 00 */	cmpwi r3, 0
/* 8023C728 00237C68  41 82 00 3C */	beq lbl_8023C764
/* 8023C72C 00237C6C  7F E3 FB 78 */	mr r3, r31
/* 8023C730 00237C70  4B FF F9 95 */	bl func_8023C0C4
/* 8023C734 00237C74  2C 03 00 00 */	cmpwi r3, 0
/* 8023C738 00237C78  41 82 00 14 */	beq lbl_8023C74C
/* 8023C73C 00237C7C  7F E3 FB 78 */	mr r3, r31
/* 8023C740 00237C80  4B FF F9 85 */	bl func_8023C0C4
/* 8023C744 00237C84  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8023C748 00237C88  48 00 00 08 */	b lbl_8023C750
lbl_8023C74C:
/* 8023C74C 00237C8C  38 80 00 00 */	li r4, 0
lbl_8023C750:
/* 8023C750 00237C90  2C 04 00 00 */	cmpwi r4, 0
/* 8023C754 00237C94  41 82 00 10 */	beq lbl_8023C764
/* 8023C758 00237C98  7F C3 F3 78 */	mr r3, r30
/* 8023C75C 00237C9C  38 A0 00 00 */	li r5, 0
/* 8023C760 00237CA0  48 1B 4A 29 */	bl func_803F1188
lbl_8023C764:
/* 8023C764 00237CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C768 00237CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C76C 00237CAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023C770 00237CB0  7C 08 03 A6 */	mtlr r0
/* 8023C774 00237CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C778 00237CB8  4E 80 00 20 */	blr 

.global func_8023C77C
func_8023C77C:
/* 8023C77C 00237CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C780 00237CC0  7C 08 02 A6 */	mflr r0
/* 8023C784 00237CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C788 00237CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C78C 00237CCC  7C 9F 23 78 */	mr r31, r4
/* 8023C790 00237CD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8023C794 00237CD4  7C 7E 1B 78 */	mr r30, r3
/* 8023C798 00237CD8  7F E3 FB 78 */	mr r3, r31
/* 8023C79C 00237CDC  4B FF F9 29 */	bl func_8023C0C4
/* 8023C7A0 00237CE0  2C 03 00 00 */	cmpwi r3, 0
/* 8023C7A4 00237CE4  41 82 00 14 */	beq lbl_8023C7B8
/* 8023C7A8 00237CE8  7F E3 FB 78 */	mr r3, r31
/* 8023C7AC 00237CEC  4B FF F9 19 */	bl func_8023C0C4
/* 8023C7B0 00237CF0  80 83 00 08 */	lwz r4, 8(r3)
/* 8023C7B4 00237CF4  48 00 00 08 */	b lbl_8023C7BC
lbl_8023C7B8:
/* 8023C7B8 00237CF8  38 80 00 00 */	li r4, 0
lbl_8023C7BC:
/* 8023C7BC 00237CFC  2C 04 00 00 */	cmpwi r4, 0
/* 8023C7C0 00237D00  41 82 00 10 */	beq lbl_8023C7D0
/* 8023C7C4 00237D04  7F C3 F3 78 */	mr r3, r30
/* 8023C7C8 00237D08  38 A0 00 00 */	li r5, 0
/* 8023C7CC 00237D0C  48 1B 49 BD */	bl func_803F1188
lbl_8023C7D0:
/* 8023C7D0 00237D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C7D4 00237D14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C7D8 00237D18  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023C7DC 00237D1C  7C 08 03 A6 */	mtlr r0
/* 8023C7E0 00237D20  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C7E4 00237D24  4E 80 00 20 */	blr 

.global func_8023C7E8
func_8023C7E8:
/* 8023C7E8 00237D28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C7EC 00237D2C  7C 08 02 A6 */	mflr r0
/* 8023C7F0 00237D30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C7F4 00237D34  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C7F8 00237D38  48 2D AD 41 */	bl func_80517538
/* 8023C7FC 00237D3C  7C 9E 23 78 */	mr r30, r4
/* 8023C800 00237D40  7C 7D 1B 78 */	mr r29, r3
/* 8023C804 00237D44  7F C3 F3 78 */	mr r3, r30
/* 8023C808 00237D48  3B E0 00 00 */	li r31, 0
/* 8023C80C 00237D4C  4B FF F8 49 */	bl func_8023C054
/* 8023C810 00237D50  2C 03 00 00 */	cmpwi r3, 0
/* 8023C814 00237D54  40 82 00 24 */	bne lbl_8023C838
/* 8023C818 00237D58  7F C3 F3 78 */	mr r3, r30
/* 8023C81C 00237D5C  4B FF F8 A9 */	bl func_8023C0C4
/* 8023C820 00237D60  2C 03 00 00 */	cmpwi r3, 0
/* 8023C824 00237D64  40 82 00 14 */	bne lbl_8023C838
/* 8023C828 00237D68  7F C3 F3 78 */	mr r3, r30
/* 8023C82C 00237D6C  4B FF F9 09 */	bl func_8023C134
/* 8023C830 00237D70  2C 03 00 00 */	cmpwi r3, 0
/* 8023C834 00237D74  41 82 00 08 */	beq lbl_8023C83C
lbl_8023C838:
/* 8023C838 00237D78  3B E0 00 01 */	li r31, 1
lbl_8023C83C:
/* 8023C83C 00237D7C  2C 1F 00 00 */	cmpwi r31, 0
/* 8023C840 00237D80  40 82 00 0C */	bne lbl_8023C84C
/* 8023C844 00237D84  38 60 00 00 */	li r3, 0
/* 8023C848 00237D88  48 00 00 CC */	b lbl_8023C914
lbl_8023C84C:
/* 8023C84C 00237D8C  3F E0 80 59 */	lis r31, lbl_8058F09F@ha
/* 8023C850 00237D90  7F A3 EB 78 */	mr r3, r29
/* 8023C854 00237D94  38 9F F0 9F */	addi r4, r31, lbl_8058F09F@l
/* 8023C858 00237D98  48 18 F4 8D */	bl func_803CBCE4
/* 8023C85C 00237D9C  2C 03 00 00 */	cmpwi r3, 0
/* 8023C860 00237DA0  41 82 00 10 */	beq lbl_8023C870
/* 8023C864 00237DA4  7F A3 EB 78 */	mr r3, r29
/* 8023C868 00237DA8  38 9F F0 9F */	addi r4, r31, -3937
/* 8023C86C 00237DAC  48 18 F2 AD */	bl func_803CBB18
lbl_8023C870:
/* 8023C870 00237DB0  7F C3 F3 78 */	mr r3, r30
/* 8023C874 00237DB4  4B FF F8 C1 */	bl func_8023C134
/* 8023C878 00237DB8  2C 03 00 00 */	cmpwi r3, 0
/* 8023C87C 00237DBC  41 82 00 14 */	beq lbl_8023C890
/* 8023C880 00237DC0  7F C3 F3 78 */	mr r3, r30
/* 8023C884 00237DC4  4B FF F8 B1 */	bl func_8023C134
/* 8023C888 00237DC8  80 83 00 04 */	lwz r4, 4(r3)
/* 8023C88C 00237DCC  48 00 00 08 */	b lbl_8023C894
lbl_8023C890:
/* 8023C890 00237DD0  38 80 00 00 */	li r4, 0
lbl_8023C894:
/* 8023C894 00237DD4  2C 04 00 00 */	cmpwi r4, 0
/* 8023C898 00237DD8  41 82 00 14 */	beq lbl_8023C8AC
/* 8023C89C 00237DDC  7F A3 EB 78 */	mr r3, r29
/* 8023C8A0 00237DE0  38 A0 FF FF */	li r5, -1
/* 8023C8A4 00237DE4  38 C0 FF FF */	li r6, -1
/* 8023C8A8 00237DE8  48 1B C1 95 */	bl func_803F8A3C
lbl_8023C8AC:
/* 8023C8AC 00237DEC  7F C3 F3 78 */	mr r3, r30
/* 8023C8B0 00237DF0  4B FF F8 85 */	bl func_8023C134
/* 8023C8B4 00237DF4  2C 03 00 00 */	cmpwi r3, 0
/* 8023C8B8 00237DF8  41 82 00 20 */	beq lbl_8023C8D8
/* 8023C8BC 00237DFC  7F C3 F3 78 */	mr r3, r30
/* 8023C8C0 00237E00  4B FF F8 75 */	bl func_8023C134
/* 8023C8C4 00237E04  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8023C8C8 00237E08  38 03 FF FF */	addi r0, r3, -1
/* 8023C8CC 00237E0C  7C 00 00 34 */	cntlzw r0, r0
/* 8023C8D0 00237E10  54 00 D9 7E */	srwi r0, r0, 5
/* 8023C8D4 00237E14  48 00 00 08 */	b lbl_8023C8DC
lbl_8023C8D8:
/* 8023C8D8 00237E18  38 00 00 00 */	li r0, 0
lbl_8023C8DC:
/* 8023C8DC 00237E1C  2C 00 00 00 */	cmpwi r0, 0
/* 8023C8E0 00237E20  41 82 00 18 */	beq lbl_8023C8F8
/* 8023C8E4 00237E24  3C 60 80 59 */	lis r3, lbl_8058F0A5@ha
/* 8023C8E8 00237E28  38 80 FF FF */	li r4, -1
/* 8023C8EC 00237E2C  38 63 F0 A5 */	addi r3, r3, lbl_8058F0A5@l
/* 8023C8F0 00237E30  38 A0 FF FF */	li r5, -1
/* 8023C8F4 00237E34  48 1B D4 F9 */	bl func_803F9DEC
lbl_8023C8F8:
/* 8023C8F8 00237E38  7F A3 EB 78 */	mr r3, r29
/* 8023C8FC 00237E3C  7F C4 F3 78 */	mr r4, r30
/* 8023C900 00237E40  4B FF FD 8D */	bl func_8023C68C
/* 8023C904 00237E44  7F A3 EB 78 */	mr r3, r29
/* 8023C908 00237E48  7F C4 F3 78 */	mr r4, r30
/* 8023C90C 00237E4C  4B FF FB B1 */	bl func_8023C4BC
/* 8023C910 00237E50  38 60 00 01 */	li r3, 1
lbl_8023C914:
/* 8023C914 00237E54  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C918 00237E58  48 2D AC 6D */	bl func_80517584
/* 8023C91C 00237E5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C920 00237E60  7C 08 03 A6 */	mtlr r0
/* 8023C924 00237E64  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C928 00237E68  4E 80 00 20 */	blr 

.global func_8023C92C
func_8023C92C:
/* 8023C92C 00237E6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C930 00237E70  7C 08 02 A6 */	mflr r0
/* 8023C934 00237E74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C938 00237E78  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C93C 00237E7C  48 2D AB FD */	bl func_80517538
/* 8023C940 00237E80  7C 9E 23 78 */	mr r30, r4
/* 8023C944 00237E84  7C 7D 1B 78 */	mr r29, r3
/* 8023C948 00237E88  7F C3 F3 78 */	mr r3, r30
/* 8023C94C 00237E8C  3B E0 00 00 */	li r31, 0
/* 8023C950 00237E90  4B FF F7 05 */	bl func_8023C054
/* 8023C954 00237E94  2C 03 00 00 */	cmpwi r3, 0
/* 8023C958 00237E98  40 82 00 24 */	bne lbl_8023C97C
/* 8023C95C 00237E9C  7F C3 F3 78 */	mr r3, r30
/* 8023C960 00237EA0  4B FF F7 65 */	bl func_8023C0C4
/* 8023C964 00237EA4  2C 03 00 00 */	cmpwi r3, 0
/* 8023C968 00237EA8  40 82 00 14 */	bne lbl_8023C97C
/* 8023C96C 00237EAC  7F C3 F3 78 */	mr r3, r30
/* 8023C970 00237EB0  4B FF F7 C5 */	bl func_8023C134
/* 8023C974 00237EB4  2C 03 00 00 */	cmpwi r3, 0
/* 8023C978 00237EB8  41 82 00 08 */	beq lbl_8023C980
lbl_8023C97C:
/* 8023C97C 00237EBC  3B E0 00 01 */	li r31, 1
lbl_8023C980:
/* 8023C980 00237EC0  2C 1F 00 00 */	cmpwi r31, 0
/* 8023C984 00237EC4  40 82 00 0C */	bne lbl_8023C990
/* 8023C988 00237EC8  38 60 00 00 */	li r3, 0
/* 8023C98C 00237ECC  48 00 00 54 */	b lbl_8023C9E0
lbl_8023C990:
/* 8023C990 00237ED0  7F C3 F3 78 */	mr r3, r30
/* 8023C994 00237ED4  4B FF F7 A1 */	bl func_8023C134
/* 8023C998 00237ED8  2C 03 00 00 */	cmpwi r3, 0
/* 8023C99C 00237EDC  41 82 00 14 */	beq lbl_8023C9B0
/* 8023C9A0 00237EE0  7F C3 F3 78 */	mr r3, r30
/* 8023C9A4 00237EE4  4B FF F7 91 */	bl func_8023C134
/* 8023C9A8 00237EE8  80 83 00 08 */	lwz r4, 8(r3)
/* 8023C9AC 00237EEC  48 00 00 08 */	b lbl_8023C9B4
lbl_8023C9B0:
/* 8023C9B0 00237EF0  38 80 00 00 */	li r4, 0
lbl_8023C9B4:
/* 8023C9B4 00237EF4  2C 04 00 00 */	cmpwi r4, 0
/* 8023C9B8 00237EF8  41 82 00 18 */	beq lbl_8023C9D0
/* 8023C9BC 00237EFC  7F A3 EB 78 */	mr r3, r29
/* 8023C9C0 00237F00  38 A0 FF FF */	li r5, -1
/* 8023C9C4 00237F04  38 C0 FF FF */	li r6, -1
/* 8023C9C8 00237F08  38 E0 FF FF */	li r7, -1
/* 8023C9CC 00237F0C  48 1B C2 39 */	bl func_803F8C04
lbl_8023C9D0:
/* 8023C9D0 00237F10  7F A3 EB 78 */	mr r3, r29
/* 8023C9D4 00237F14  7F C4 F3 78 */	mr r4, r30
/* 8023C9D8 00237F18  4B FF FD A5 */	bl func_8023C77C
/* 8023C9DC 00237F1C  38 60 00 01 */	li r3, 1
lbl_8023C9E0:
/* 8023C9E0 00237F20  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C9E4 00237F24  48 2D AB A1 */	bl func_80517584
/* 8023C9E8 00237F28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C9EC 00237F2C  7C 08 03 A6 */	mtlr r0
/* 8023C9F0 00237F30  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C9F4 00237F34  4E 80 00 20 */	blr 

.global func_8023C9F8
func_8023C9F8:
/* 8023C9F8 00237F38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C9FC 00237F3C  7C 08 02 A6 */	mflr r0
/* 8023CA00 00237F40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023CA04 00237F44  39 61 00 20 */	addi r11, r1, 0x20
/* 8023CA08 00237F48  48 2D AB 31 */	bl func_80517538
/* 8023CA0C 00237F4C  7C 9E 23 78 */	mr r30, r4
/* 8023CA10 00237F50  7C 7D 1B 78 */	mr r29, r3
/* 8023CA14 00237F54  7F C3 F3 78 */	mr r3, r30
/* 8023CA18 00237F58  3B E0 00 00 */	li r31, 0
/* 8023CA1C 00237F5C  4B FF F6 39 */	bl func_8023C054
/* 8023CA20 00237F60  2C 03 00 00 */	cmpwi r3, 0
/* 8023CA24 00237F64  40 82 00 24 */	bne lbl_8023CA48
/* 8023CA28 00237F68  7F C3 F3 78 */	mr r3, r30
/* 8023CA2C 00237F6C  4B FF F6 99 */	bl func_8023C0C4
/* 8023CA30 00237F70  2C 03 00 00 */	cmpwi r3, 0
/* 8023CA34 00237F74  40 82 00 14 */	bne lbl_8023CA48
/* 8023CA38 00237F78  7F C3 F3 78 */	mr r3, r30
/* 8023CA3C 00237F7C  4B FF F6 F9 */	bl func_8023C134
/* 8023CA40 00237F80  2C 03 00 00 */	cmpwi r3, 0
/* 8023CA44 00237F84  41 82 00 08 */	beq lbl_8023CA4C
lbl_8023CA48:
/* 8023CA48 00237F88  3B E0 00 01 */	li r31, 1
lbl_8023CA4C:
/* 8023CA4C 00237F8C  2C 1F 00 00 */	cmpwi r31, 0
/* 8023CA50 00237F90  40 82 00 0C */	bne lbl_8023CA5C
/* 8023CA54 00237F94  38 60 00 00 */	li r3, 0
/* 8023CA58 00237F98  48 00 00 CC */	b lbl_8023CB24
lbl_8023CA5C:
/* 8023CA5C 00237F9C  3F E0 80 59 */	lis r31, lbl_8058F0B9@ha
/* 8023CA60 00237FA0  7F A3 EB 78 */	mr r3, r29
/* 8023CA64 00237FA4  38 9F F0 B9 */	addi r4, r31, lbl_8058F0B9@l
/* 8023CA68 00237FA8  48 18 F2 7D */	bl func_803CBCE4
/* 8023CA6C 00237FAC  2C 03 00 00 */	cmpwi r3, 0
/* 8023CA70 00237FB0  41 82 00 10 */	beq lbl_8023CA80
/* 8023CA74 00237FB4  7F A3 EB 78 */	mr r3, r29
/* 8023CA78 00237FB8  38 9F F0 B9 */	addi r4, r31, -3911
/* 8023CA7C 00237FBC  48 18 F0 9D */	bl func_803CBB18
lbl_8023CA80:
/* 8023CA80 00237FC0  7F C3 F3 78 */	mr r3, r30
/* 8023CA84 00237FC4  4B FF F6 B1 */	bl func_8023C134
/* 8023CA88 00237FC8  2C 03 00 00 */	cmpwi r3, 0
/* 8023CA8C 00237FCC  41 82 00 14 */	beq lbl_8023CAA0
/* 8023CA90 00237FD0  7F C3 F3 78 */	mr r3, r30
/* 8023CA94 00237FD4  4B FF F6 A1 */	bl func_8023C134
/* 8023CA98 00237FD8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8023CA9C 00237FDC  48 00 00 08 */	b lbl_8023CAA4
lbl_8023CAA0:
/* 8023CAA0 00237FE0  38 80 00 00 */	li r4, 0
lbl_8023CAA4:
/* 8023CAA4 00237FE4  2C 04 00 00 */	cmpwi r4, 0
/* 8023CAA8 00237FE8  41 82 00 14 */	beq lbl_8023CABC
/* 8023CAAC 00237FEC  7F A3 EB 78 */	mr r3, r29
/* 8023CAB0 00237FF0  38 A0 FF FF */	li r5, -1
/* 8023CAB4 00237FF4  38 C0 FF FF */	li r6, -1
/* 8023CAB8 00237FF8  48 1B BF 85 */	bl func_803F8A3C
lbl_8023CABC:
/* 8023CABC 00237FFC  7F C3 F3 78 */	mr r3, r30
/* 8023CAC0 00238000  4B FF F6 75 */	bl func_8023C134
/* 8023CAC4 00238004  2C 03 00 00 */	cmpwi r3, 0
/* 8023CAC8 00238008  41 82 00 20 */	beq lbl_8023CAE8
/* 8023CACC 0023800C  7F C3 F3 78 */	mr r3, r30
/* 8023CAD0 00238010  4B FF F6 65 */	bl func_8023C134
/* 8023CAD4 00238014  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8023CAD8 00238018  38 03 FF FE */	addi r0, r3, -2
/* 8023CADC 0023801C  7C 00 00 34 */	cntlzw r0, r0
/* 8023CAE0 00238020  54 00 D9 7E */	srwi r0, r0, 5
/* 8023CAE4 00238024  48 00 00 08 */	b lbl_8023CAEC
lbl_8023CAE8:
/* 8023CAE8 00238028  38 00 00 00 */	li r0, 0
lbl_8023CAEC:
/* 8023CAEC 0023802C  2C 00 00 00 */	cmpwi r0, 0
/* 8023CAF0 00238030  41 82 00 18 */	beq lbl_8023CB08
/* 8023CAF4 00238034  3C 60 80 59 */	lis r3, lbl_8058F0A5@ha
/* 8023CAF8 00238038  38 80 FF FF */	li r4, -1
/* 8023CAFC 0023803C  38 63 F0 A5 */	addi r3, r3, lbl_8058F0A5@l
/* 8023CB00 00238040  38 A0 FF FF */	li r5, -1
/* 8023CB04 00238044  48 1B D2 E9 */	bl func_803F9DEC
lbl_8023CB08:
/* 8023CB08 00238048  7F A3 EB 78 */	mr r3, r29
/* 8023CB0C 0023804C  7F C4 F3 78 */	mr r4, r30
/* 8023CB10 00238050  4B FF FB F5 */	bl func_8023C704
/* 8023CB14 00238054  7F A3 EB 78 */	mr r3, r29
/* 8023CB18 00238058  7F C4 F3 78 */	mr r4, r30
/* 8023CB1C 0023805C  4B FF F9 FD */	bl func_8023C518
/* 8023CB20 00238060  38 60 00 01 */	li r3, 1
lbl_8023CB24:
/* 8023CB24 00238064  39 61 00 20 */	addi r11, r1, 0x20
/* 8023CB28 00238068  48 2D AA 5D */	bl func_80517584
/* 8023CB2C 0023806C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023CB30 00238070  7C 08 03 A6 */	mtlr r0
/* 8023CB34 00238074  38 21 00 20 */	addi r1, r1, 0x20
/* 8023CB38 00238078  4E 80 00 20 */	blr 