.include "macros.inc"

.text

.global func_803BBDC0
func_803BBDC0:
/* 803BBDC0 003B7300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BBDC4 003B7304  7C 08 02 A6 */	mflr r0
/* 803BBDC8 003B7308  3C 80 80 5D */	lis r4, lbl_805CBCFC@ha
/* 803BBDCC 003B730C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BBDD0 003B7310  38 00 00 00 */	li r0, 0
/* 803BBDD4 003B7314  38 84 BC FC */	addi r4, r4, lbl_805CBCFC@l
/* 803BBDD8 003B7318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BBDDC 003B731C  7C 7F 1B 78 */	mr r31, r3
/* 803BBDE0 003B7320  90 03 00 1C */	stw r0, 0x1c(r3)
/* 803BBDE4 003B7324  90 83 00 00 */	stw r4, 0(r3)
/* 803BBDE8 003B7328  48 00 01 2D */	bl func_803BBF14
/* 803BBDEC 003B732C  81 9F 00 00 */	lwz r12, 0(r31)
/* 803BBDF0 003B7330  7F E3 FB 78 */	mr r3, r31
/* 803BBDF4 003B7334  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 803BBDF8 003B7338  7D 89 03 A6 */	mtctr r12
/* 803BBDFC 003B733C  4E 80 04 21 */	bctrl 
/* 803BBE00 003B7340  7F E3 FB 78 */	mr r3, r31
/* 803BBE04 003B7344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BBE08 003B7348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BBE0C 003B734C  7C 08 03 A6 */	mtlr r0
/* 803BBE10 003B7350  38 21 00 10 */	addi r1, r1, 0x10
/* 803BBE14 003B7354  4E 80 00 20 */	blr 
/* 803BBE18 003B7358  38 60 00 01 */	li r3, 1
/* 803BBE1C 003B735C  4E 80 00 20 */	blr 
/* 803BBE20 003B7360  3C 60 53 59 */	lis r3, 0x53595343@ha
/* 803BBE24 003B7364  38 63 53 43 */	addi r3, r3, 0x53595343@l
/* 803BBE28 003B7368  4E 80 00 20 */	blr 
/* 803BBE2C 003B736C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BBE30 003B7370  7C 08 02 A6 */	mflr r0
/* 803BBE34 003B7374  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BBE38 003B7378  39 61 00 30 */	addi r11, r1, 0x30
/* 803BBE3C 003B737C  48 15 B6 F5 */	bl _savegpr_27
/* 803BBE40 003B7380  3F C0 80 5D */	lis r30, lbl_805CBCD8@ha
/* 803BBE44 003B7384  7C 7B 1B 78 */	mr r27, r3
/* 803BBE48 003B7388  7C 9D 23 78 */	mr r29, r4
/* 803BBE4C 003B738C  7C BC 2B 78 */	mr r28, r5
/* 803BBE50 003B7390  3B DE BC D8 */	addi r30, r30, lbl_805CBCD8@l
/* 803BBE54 003B7394  38 61 00 08 */	addi r3, r1, 8
/* 803BBE58 003B7398  4B FD 96 DD */	bl func_80395534
/* 803BBE5C 003B739C  38 61 00 08 */	addi r3, r1, 8
/* 803BBE60 003B73A0  4B FD 96 DD */	bl func_8039553C
/* 803BBE64 003B73A4  7F BD 1A 14 */	add r29, r29, r3
/* 803BBE68 003B73A8  7C 7F 1B 78 */	mr r31, r3
/* 803BBE6C 003B73AC  7F A5 EB 78 */	mr r5, r29
/* 803BBE70 003B73B0  38 9E 00 00 */	addi r4, r30, 0
/* 803BBE74 003B73B4  38 61 00 08 */	addi r3, r1, 8
/* 803BBE78 003B73B8  4B FD 96 E5 */	bl func_8039555C
/* 803BBE7C 003B73BC  80 03 00 00 */	lwz r0, 0(r3)
/* 803BBE80 003B73C0  7F A5 EB 78 */	mr r5, r29
/* 803BBE84 003B73C4  80 C3 00 04 */	lwz r6, 4(r3)
/* 803BBE88 003B73C8  38 9E 00 0F */	addi r4, r30, 0xf
/* 803BBE8C 003B73CC  38 61 00 08 */	addi r3, r1, 8
/* 803BBE90 003B73D0  90 DB 00 0C */	stw r6, 0xc(r27)
/* 803BBE94 003B73D4  90 1B 00 08 */	stw r0, 8(r27)
/* 803BBE98 003B73D8  4B FD 96 C5 */	bl func_8039555C
/* 803BBE9C 003B73DC  80 03 00 00 */	lwz r0, 0(r3)
/* 803BBEA0 003B73E0  7F A5 EB 78 */	mr r5, r29
/* 803BBEA4 003B73E4  80 C3 00 04 */	lwz r6, 4(r3)
/* 803BBEA8 003B73E8  38 9E 00 19 */	addi r4, r30, 0x19
/* 803BBEAC 003B73EC  38 61 00 08 */	addi r3, r1, 8
/* 803BBEB0 003B73F0  90 DB 00 14 */	stw r6, 0x14(r27)
/* 803BBEB4 003B73F4  90 1B 00 10 */	stw r0, 0x10(r27)
/* 803BBEB8 003B73F8  4B FD 96 A5 */	bl func_8039555C
/* 803BBEBC 003B73FC  80 03 00 00 */	lwz r0, 0(r3)
/* 803BBEC0 003B7400  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 803BBEC4 003B7404  90 1B 00 18 */	stw r0, 0x18(r27)
/* 803BBEC8 003B7408  4B FD 96 65 */	bl func_8039552C
/* 803BBECC 003B740C  7C 1F 1A 14 */	add r0, r31, r3
/* 803BBED0 003B7410  38 60 00 03 */	li r3, 3
/* 803BBED4 003B7414  7C 00 E0 40 */	cmplw r0, r28
/* 803BBED8 003B7418  41 81 00 08 */	bgt lbl_803BBEE0
/* 803BBEDC 003B741C  38 60 00 00 */	li r3, 0
lbl_803BBEE0:
/* 803BBEE0 003B7420  39 61 00 30 */	addi r11, r1, 0x30
/* 803BBEE4 003B7424  48 15 B6 99 */	bl func_8051757C
/* 803BBEE8 003B7428  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BBEEC 003B742C  7C 08 03 A6 */	mtlr r0
/* 803BBEF0 003B7430  38 21 00 30 */	addi r1, r1, 0x30
/* 803BBEF4 003B7434  4E 80 00 20 */	blr 
/* 803BBEF8 003B7438  38 00 00 00 */	li r0, 0
/* 803BBEFC 003B743C  90 03 00 0C */	stw r0, 0xc(r3)
/* 803BBF00 003B7440  90 03 00 08 */	stw r0, 8(r3)
/* 803BBF04 003B7444  90 03 00 14 */	stw r0, 0x14(r3)
/* 803BBF08 003B7448  90 03 00 10 */	stw r0, 0x10(r3)
/* 803BBF0C 003B744C  90 03 00 18 */	stw r0, 0x18(r3)
/* 803BBF10 003B7450  4E 80 00 20 */	blr 

.global func_803BBF14
func_803BBF14:
/* 803BBF14 003B7454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BBF18 003B7458  7C 08 02 A6 */	mflr r0
/* 803BBF1C 003B745C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BBF20 003B7460  39 61 00 20 */	addi r11, r1, 0x20
/* 803BBF24 003B7464  48 15 B6 15 */	bl func_80517538
/* 803BBF28 003B7468  3F E0 80 5D */	lis r31, lbl_805CBCD8@ha
/* 803BBF2C 003B746C  7C 7D 1B 78 */	mr r29, r3
/* 803BBF30 003B7470  3B FF BC D8 */	addi r31, r31, lbl_805CBCD8@l
/* 803BBF34 003B7474  38 60 00 1C */	li r3, 0x1c
/* 803BBF38 003B7478  48 04 DB C1 */	bl func_80409AF8
/* 803BBF3C 003B747C  2C 03 00 00 */	cmpwi r3, 0
/* 803BBF40 003B7480  7C 7E 1B 78 */	mr r30, r3
/* 803BBF44 003B7484  41 82 00 20 */	beq lbl_803BBF64
/* 803BBF48 003B7488  38 60 00 20 */	li r3, 0x20
/* 803BBF4C 003B748C  48 04 DB D1 */	bl func_80409B1C
/* 803BBF50 003B7490  7C 64 1B 78 */	mr r4, r3
/* 803BBF54 003B7494  7F C3 F3 78 */	mr r3, r30
/* 803BBF58 003B7498  38 A0 00 20 */	li r5, 0x20
/* 803BBF5C 003B749C  4B FD 94 19 */	bl func_80395374
/* 803BBF60 003B74A0  7C 7E 1B 78 */	mr r30, r3
lbl_803BBF64:
/* 803BBF64 003B74A4  93 DD 00 1C */	stw r30, 0x1c(r29)
/* 803BBF68 003B74A8  7F C3 F3 78 */	mr r3, r30
/* 803BBF6C 003B74AC  38 9F 00 00 */	addi r4, r31, 0
/* 803BBF70 003B74B0  38 A0 00 08 */	li r5, 8
/* 803BBF74 003B74B4  4B FD 94 7D */	bl func_803953F0
/* 803BBF78 003B74B8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 803BBF7C 003B74BC  38 9F 00 0F */	addi r4, r31, 0xf
/* 803BBF80 003B74C0  38 A0 00 08 */	li r5, 8
/* 803BBF84 003B74C4  4B FD 94 6D */	bl func_803953F0
/* 803BBF88 003B74C8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 803BBF8C 003B74CC  38 9F 00 19 */	addi r4, r31, 0x19
/* 803BBF90 003B74D0  38 A0 00 04 */	li r5, 4
/* 803BBF94 003B74D4  4B FD 94 5D */	bl func_803953F0
/* 803BBF98 003B74D8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 803BBF9C 003B74DC  4B FD 94 D5 */	bl func_80395470
/* 803BBFA0 003B74E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803BBFA4 003B74E4  48 15 B5 E1 */	bl func_80517584
/* 803BBFA8 003B74E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BBFAC 003B74EC  7C 08 03 A6 */	mtlr r0
/* 803BBFB0 003B74F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803BBFB4 003B74F4  4E 80 00 20 */	blr 

.global func_803BBFB8
func_803BBFB8:
/* 803BBFB8 003B74F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BBFBC 003B74FC  7C 08 02 A6 */	mflr r0
/* 803BBFC0 003B7500  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BBFC4 003B7504  38 00 00 00 */	li r0, 0
/* 803BBFC8 003B7508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BBFCC 003B750C  7C 7F 1B 78 */	mr r31, r3
/* 803BBFD0 003B7510  90 03 00 00 */	stw r0, 0(r3)
/* 803BBFD4 003B7514  90 03 00 04 */	stw r0, 4(r3)
/* 803BBFD8 003B7518  38 60 00 14 */	li r3, 0x14
/* 803BBFDC 003B751C  48 04 DB 1D */	bl func_80409AF8
/* 803BBFE0 003B7520  2C 03 00 00 */	cmpwi r3, 0
/* 803BBFE4 003B7524  41 82 00 10 */	beq lbl_803BBFF4
/* 803BBFE8 003B7528  38 80 30 00 */	li r4, 0x3000
/* 803BBFEC 003B752C  38 A0 00 08 */	li r5, 8
/* 803BBFF0 003B7530  4B FD 8F D1 */	bl func_80394FC0
lbl_803BBFF4:
/* 803BBFF4 003B7534  90 7F 00 04 */	stw r3, 4(r31)
/* 803BBFF8 003B7538  38 60 00 20 */	li r3, 0x20
/* 803BBFFC 003B753C  48 04 DA FD */	bl func_80409AF8
/* 803BC000 003B7540  2C 03 00 00 */	cmpwi r3, 0
/* 803BC004 003B7544  41 82 00 08 */	beq lbl_803BC00C
/* 803BC008 003B7548  4B FF FD B9 */	bl func_803BBDC0
lbl_803BC00C:
/* 803BC00C 003B754C  90 7F 00 00 */	stw r3, 0(r31)
/* 803BC010 003B7550  7C 64 1B 78 */	mr r4, r3
/* 803BC014 003B7554  80 7F 00 04 */	lwz r3, 4(r31)
/* 803BC018 003B7558  4B FD 90 1D */	bl func_80395034
/* 803BC01C 003B755C  7F E3 FB 78 */	mr r3, r31
/* 803BC020 003B7560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BC024 003B7564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC028 003B7568  7C 08 03 A6 */	mtlr r0
/* 803BC02C 003B756C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC030 003B7570  4E 80 00 20 */	blr 

.global func_803BC034
func_803BC034:
/* 803BC034 003B7574  80 83 00 00 */	lwz r4, 0(r3)
/* 803BC038 003B7578  80 64 00 08 */	lwz r3, 8(r4)
/* 803BC03C 003B757C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 803BC040 003B7580  4E 80 00 20 */	blr 

.global func_803BC044
func_803BC044:
/* 803BC044 003B7584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC048 003B7588  7C 08 02 A6 */	mflr r0
/* 803BC04C 003B758C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC050 003B7590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BC054 003B7594  83 E3 00 00 */	lwz r31, 0(r3)
/* 803BC058 003B7598  48 0F 03 11 */	bl func_804AC368
/* 803BC05C 003B759C  90 9F 00 0C */	stw r4, 0xc(r31)
/* 803BC060 003B75A0  90 7F 00 08 */	stw r3, 8(r31)
/* 803BC064 003B75A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BC068 003B75A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC06C 003B75AC  7C 08 03 A6 */	mtlr r0
/* 803BC070 003B75B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC074 003B75B4  4E 80 00 20 */	blr 

.global func_803BC078
func_803BC078:
/* 803BC078 003B75B8  80 83 00 00 */	lwz r4, 0(r3)
/* 803BC07C 003B75BC  80 64 00 10 */	lwz r3, 0x10(r4)
/* 803BC080 003B75C0  80 84 00 14 */	lwz r4, 0x14(r4)
/* 803BC084 003B75C4  4E 80 00 20 */	blr 

.global func_803BC088
func_803BC088:
/* 803BC088 003B75C8  80 63 00 00 */	lwz r3, 0(r3)
/* 803BC08C 003B75CC  90 C3 00 14 */	stw r6, 0x14(r3)
/* 803BC090 003B75D0  90 A3 00 10 */	stw r5, 0x10(r3)
/* 803BC094 003B75D4  4E 80 00 20 */	blr 

.global func_803BC098
func_803BC098:
/* 803BC098 003B75D8  80 63 00 00 */	lwz r3, 0(r3)
/* 803BC09C 003B75DC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 803BC0A0 003B75E0  4E 80 00 20 */	blr 

.global func_803BC0A4
func_803BC0A4:
/* 803BC0A4 003B75E4  80 63 00 00 */	lwz r3, 0(r3)
/* 803BC0A8 003B75E8  90 83 00 18 */	stw r4, 0x18(r3)
/* 803BC0AC 003B75EC  4E 80 00 20 */	blr 

.global func_803BC0B0
func_803BC0B0:
/* 803BC0B0 003B75F0  80 63 00 04 */	lwz r3, 4(r3)
/* 803BC0B4 003B75F4  4B FD 8F 9C */	b lbl_80395050

.global func_803BC0B8
func_803BC0B8:
/* 803BC0B8 003B75F8  80 63 00 04 */	lwz r3, 4(r3)
/* 803BC0BC 003B75FC  4B FD 90 48 */	b func_80395104
/* 803BC0C0 003B7600  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BC0C4 003B7604  7C 08 02 A6 */	mflr r0
/* 803BC0C8 003B7608  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BC0CC 003B760C  39 61 00 30 */	addi r11, r1, 0x30
/* 803BC0D0 003B7610  48 15 B4 5D */	bl _savegpr_26
/* 803BC0D4 003B7614  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 803BC0D8 003B7618  3F 80 80 5D */	lis r28, lbl_805CBCD8@ha
/* 803BC0DC 003B761C  7C 7A 1B 78 */	mr r26, r3
/* 803BC0E0 003B7620  7C 9B 23 78 */	mr r27, r4
/* 803BC0E4 003B7624  83 A5 00 08 */	lwz r29, 8(r5)
/* 803BC0E8 003B7628  7C A3 2B 78 */	mr r3, r5
/* 803BC0EC 003B762C  3B 9C BC D8 */	addi r28, r28, lbl_805CBCD8@l
/* 803BC0F0 003B7630  4B FD 94 2D */	bl func_8039551C
/* 803BC0F4 003B7634  7C 65 1B 78 */	mr r5, r3
/* 803BC0F8 003B7638  7F 63 DB 78 */	mr r3, r27
/* 803BC0FC 003B763C  7F A4 EB 78 */	mr r4, r29
/* 803BC100 003B7640  48 02 B3 DD */	bl func_803E74DC
/* 803BC104 003B7644  80 7A 00 1C */	lwz r3, 0x1c(r26)
/* 803BC108 003B7648  4B FD 94 15 */	bl func_8039551C
/* 803BC10C 003B764C  80 9A 00 1C */	lwz r4, 0x1c(r26)
/* 803BC110 003B7650  7C 7D 1B 78 */	mr r29, r3
/* 803BC114 003B7654  38 61 00 08 */	addi r3, r1, 8
/* 803BC118 003B7658  80 84 00 08 */	lwz r4, 8(r4)
/* 803BC11C 003B765C  4B FD 94 19 */	bl func_80395534
/* 803BC120 003B7660  7F 7B EA 14 */	add r27, r27, r29
/* 803BC124 003B7664  38 9C 00 00 */	addi r4, r28, 0
/* 803BC128 003B7668  7F 65 DB 78 */	mr r5, r27
/* 803BC12C 003B766C  38 61 00 08 */	addi r3, r1, 8
/* 803BC130 003B7670  4B FD 94 2D */	bl func_8039555C
/* 803BC134 003B7674  7C 7E 1B 78 */	mr r30, r3
/* 803BC138 003B7678  7F 65 DB 78 */	mr r5, r27
/* 803BC13C 003B767C  38 9C 00 0F */	addi r4, r28, 0xf
/* 803BC140 003B7680  38 61 00 08 */	addi r3, r1, 8
/* 803BC144 003B7684  4B FD 94 19 */	bl func_8039555C
/* 803BC148 003B7688  7C 7F 1B 78 */	mr r31, r3
/* 803BC14C 003B768C  7F 65 DB 78 */	mr r5, r27
/* 803BC150 003B7690  38 9C 00 19 */	addi r4, r28, 0x19
/* 803BC154 003B7694  38 61 00 08 */	addi r3, r1, 8
/* 803BC158 003B7698  4B FD 94 05 */	bl func_8039555C
/* 803BC15C 003B769C  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 803BC160 003B76A0  80 9A 00 08 */	lwz r4, 8(r26)
/* 803BC164 003B76A4  90 1E 00 04 */	stw r0, 4(r30)
/* 803BC168 003B76A8  80 1A 00 14 */	lwz r0, 0x14(r26)
/* 803BC16C 003B76AC  90 9E 00 00 */	stw r4, 0(r30)
/* 803BC170 003B76B0  80 9A 00 10 */	lwz r4, 0x10(r26)
/* 803BC174 003B76B4  90 1F 00 04 */	stw r0, 4(r31)
/* 803BC178 003B76B8  80 1A 00 18 */	lwz r0, 0x18(r26)
/* 803BC17C 003B76BC  90 9F 00 00 */	stw r4, 0(r31)
/* 803BC180 003B76C0  90 03 00 00 */	stw r0, 0(r3)
/* 803BC184 003B76C4  80 7A 00 1C */	lwz r3, 0x1c(r26)
/* 803BC188 003B76C8  4B FD 93 A5 */	bl func_8039552C
/* 803BC18C 003B76CC  39 61 00 30 */	addi r11, r1, 0x30
/* 803BC190 003B76D0  7C 7D 1A 14 */	add r3, r29, r3
/* 803BC194 003B76D4  48 15 B3 E5 */	bl _restgpr_26
/* 803BC198 003B76D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BC19C 003B76DC  7C 08 03 A6 */	mtlr r0
/* 803BC1A0 003B76E0  38 21 00 30 */	addi r1, r1, 0x30
/* 803BC1A4 003B76E4  4E 80 00 20 */	blr