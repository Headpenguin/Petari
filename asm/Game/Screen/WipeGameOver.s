.include "macros.inc"

.text

.global func_80390734
func_80390734:
/* 80390734 0038BC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80390738 0038BC78  7C 08 02 A6 */	mflr r0
/* 8039073C 0038BC7C  3C 80 80 5C */	lis r4, lbl_805C62E0@ha
/* 80390740 0038BC80  38 A0 00 01 */	li r5, 1
/* 80390744 0038BC84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80390748 0038BC88  38 84 62 E0 */	addi r4, r4, lbl_805C62E0@l
/* 8039074C 0038BC8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80390750 0038BC90  7C 7F 1B 78 */	mr r31, r3
/* 80390754 0038BC94  4B FD 59 39 */	bl func_8036608C
/* 80390758 0038BC98  3C 80 80 5C */	lis r4, lbl_805C62F8@ha
/* 8039075C 0038BC9C  7F E3 FB 78 */	mr r3, r31
/* 80390760 0038BCA0  38 84 62 F8 */	addi r4, r4, lbl_805C62F8@l
/* 80390764 0038BCA4  90 9F 00 00 */	stw r4, 0(r31)
/* 80390768 0038BCA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039076C 0038BCAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80390770 0038BCB0  7C 08 03 A6 */	mtlr r0
/* 80390774 0038BCB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80390778 0038BCB8  4E 80 00 20 */	blr 
/* 8039077C 0038BCBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80390780 0038BCC0  7C 08 02 A6 */	mflr r0
/* 80390784 0038BCC4  38 8D D7 28 */	addi r4, r13, lbl_806A23C8-_SDA_BASE_
/* 80390788 0038BCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039078C 0038BCCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80390790 0038BCD0  7C 7F 1B 78 */	mr r31, r3
/* 80390794 0038BCD4  4B FD 5C E1 */	bl func_80366474
/* 80390798 0038BCD8  3C 80 80 5C */	lis r4, lbl_805C62EF@ha
/* 8039079C 0038BCDC  7F E3 FB 78 */	mr r3, r31
/* 803907A0 0038BCE0  38 84 62 EF */	addi r4, r4, lbl_805C62EF@l
/* 803907A4 0038BCE4  38 A0 00 01 */	li r5, 1
/* 803907A8 0038BCE8  4B FD 5B A9 */	bl func_80366350
/* 803907AC 0038BCEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803907B0 0038BCF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803907B4 0038BCF4  7C 08 03 A6 */	mtlr r0
/* 803907B8 0038BCF8  38 21 00 10 */	addi r1, r1, 0x10
/* 803907BC 0038BCFC  4E 80 00 20 */	blr 
/* 803907C0 0038BD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803907C4 0038BD04  7C 08 02 A6 */	mflr r0
/* 803907C8 0038BD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 803907CC 0038BD0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803907D0 0038BD10  7C 7F 1B 78 */	mr r31, r3
/* 803907D4 0038BD14  4B FD 5A 25 */	bl func_803661F8
/* 803907D8 0038BD18  7F E3 FB 78 */	mr r3, r31
/* 803907DC 0038BD1C  38 8D D7 28 */	addi r4, r13, lbl_806A23C8-_SDA_BASE_
/* 803907E0 0038BD20  4B FD 5A 5D */	bl func_8036623C
/* 803907E4 0038BD24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803907E8 0038BD28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803907EC 0038BD2C  7C 08 03 A6 */	mtlr r0
/* 803907F0 0038BD30  38 21 00 10 */	addi r1, r1, 0x10
/* 803907F4 0038BD34  4E 80 00 20 */	blr 
/* 803907F8 0038BD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803907FC 0038BD3C  7C 08 02 A6 */	mflr r0
/* 80390800 0038BD40  38 8D D7 2C */	addi r4, r13, lbl_806A23CC-_SDA_BASE_
/* 80390804 0038BD44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80390808 0038BD48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039080C 0038BD4C  7C 7F 1B 78 */	mr r31, r3
/* 80390810 0038BD50  4B FD 5A 35 */	bl func_80366244
/* 80390814 0038BD54  2C 03 00 00 */	cmpwi r3, 0
/* 80390818 0038BD58  40 82 00 2C */	bne lbl_80390844
/* 8039081C 0038BD5C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80390820 0038BD60  7F E3 FB 78 */	mr r3, r31
/* 80390824 0038BD64  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80390828 0038BD68  7D 89 03 A6 */	mtctr r12
/* 8039082C 0038BD6C  4E 80 04 21 */	bctrl 
/* 80390830 0038BD70  7F E3 FB 78 */	mr r3, r31
/* 80390834 0038BD74  48 04 79 29 */	bl func_803D815C
/* 80390838 0038BD78  7F E3 FB 78 */	mr r3, r31
/* 8039083C 0038BD7C  38 8D D7 2C */	addi r4, r13, lbl_806A23CC-_SDA_BASE_
/* 80390840 0038BD80  4B FD 59 FD */	bl func_8036623C
lbl_80390844:
/* 80390844 0038BD84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80390848 0038BD88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039084C 0038BD8C  7C 08 03 A6 */	mtlr r0
/* 80390850 0038BD90  38 21 00 10 */	addi r1, r1, 0x10
/* 80390854 0038BD94  4E 80 00 20 */	blr 
/* 80390858 0038BD98  81 83 00 00 */	lwz r12, 0(r3)
/* 8039085C 0038BD9C  38 80 FF FF */	li r4, -1
/* 80390860 0038BDA0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80390864 0038BDA4  7D 89 03 A6 */	mtctr r12
/* 80390868 0038BDA8  4E 80 04 20 */	bctr 
/* 8039086C 0038BDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80390870 0038BDB0  7C 08 02 A6 */	mflr r0
/* 80390874 0038BDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80390878 0038BDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039087C 0038BDBC  7C 7F 1B 78 */	mr r31, r3
/* 80390880 0038BDC0  48 04 78 DD */	bl func_803D815C
/* 80390884 0038BDC4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80390888 0038BDC8  7F E3 FB 78 */	mr r3, r31
/* 8039088C 0038BDCC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80390890 0038BDD0  7D 89 03 A6 */	mtctr r12
/* 80390894 0038BDD4  4E 80 04 21 */	bctrl 
/* 80390898 0038BDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039089C 0038BDDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803908A0 0038BDE0  7C 08 03 A6 */	mtlr r0
/* 803908A4 0038BDE4  38 21 00 10 */	addi r1, r1, 0x10
/* 803908A8 0038BDE8  4E 80 00 20 */	blr 
/* 803908AC 0038BDEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803908B0 0038BDF0  7C 08 02 A6 */	mflr r0
/* 803908B4 0038BDF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803908B8 0038BDF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803908BC 0038BDFC  3B E0 00 00 */	li r31, 0
/* 803908C0 0038BE00  93 C1 00 08 */	stw r30, 8(r1)
/* 803908C4 0038BE04  7C 7E 1B 78 */	mr r30, r3
/* 803908C8 0038BE08  48 04 78 75 */	bl func_803D813C
/* 803908CC 0038BE0C  2C 03 00 00 */	cmpwi r3, 0
/* 803908D0 0038BE10  40 82 00 18 */	bne lbl_803908E8
/* 803908D4 0038BE14  7F C3 F3 78 */	mr r3, r30
/* 803908D8 0038BE18  38 8D D7 28 */	addi r4, r13, lbl_806A23C8-_SDA_BASE_
/* 803908DC 0038BE1C  4B FD 59 69 */	bl func_80366244
/* 803908E0 0038BE20  2C 03 00 00 */	cmpwi r3, 0
/* 803908E4 0038BE24  41 82 00 08 */	beq lbl_803908EC
lbl_803908E8:
/* 803908E8 0038BE28  3B E0 00 01 */	li r31, 1
lbl_803908EC:
/* 803908EC 0038BE2C  7F E3 FB 78 */	mr r3, r31
/* 803908F0 0038BE30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803908F4 0038BE34  83 C1 00 08 */	lwz r30, 8(r1)
/* 803908F8 0038BE38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803908FC 0038BE3C  7C 08 03 A6 */	mtlr r0
/* 80390900 0038BE40  38 21 00 10 */	addi r1, r1, 0x10
/* 80390904 0038BE44  4E 80 00 20 */	blr 
/* 80390908 0038BE48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039090C 0038BE4C  7C 08 02 A6 */	mflr r0
/* 80390910 0038BE50  38 8D D7 2C */	addi r4, r13, lbl_806A23CC-_SDA_BASE_
/* 80390914 0038BE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80390918 0038BE58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039091C 0038BE5C  3B E0 00 00 */	li r31, 0
/* 80390920 0038BE60  93 C1 00 08 */	stw r30, 8(r1)
/* 80390924 0038BE64  7C 7E 1B 78 */	mr r30, r3
/* 80390928 0038BE68  4B FD 59 1D */	bl func_80366244
/* 8039092C 0038BE6C  2C 03 00 00 */	cmpwi r3, 0
/* 80390930 0038BE70  41 82 00 1C */	beq lbl_8039094C
/* 80390934 0038BE74  7F C3 F3 78 */	mr r3, r30
/* 80390938 0038BE78  38 80 00 00 */	li r4, 0
/* 8039093C 0038BE7C  48 04 6D 15 */	bl func_803D7650
/* 80390940 0038BE80  2C 03 00 00 */	cmpwi r3, 0
/* 80390944 0038BE84  41 82 00 08 */	beq lbl_8039094C
/* 80390948 0038BE88  3B E0 00 01 */	li r31, 1
lbl_8039094C:
/* 8039094C 0038BE8C  7F E3 FB 78 */	mr r3, r31
/* 80390950 0038BE90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80390954 0038BE94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80390958 0038BE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039095C 0038BE9C  7C 08 03 A6 */	mtlr r0
/* 80390960 0038BEA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80390964 0038BEA4  4E 80 00 20 */	blr 
/* 80390968 0038BEA8  38 60 00 00 */	li r3, 0
/* 8039096C 0038BEAC  4E 80 00 20 */	blr 
/* 80390970 0038BEB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80390974 0038BEB4  7C 08 02 A6 */	mflr r0
/* 80390978 0038BEB8  38 8D D7 2C */	addi r4, r13, lbl_806A23CC-_SDA_BASE_
/* 8039097C 0038BEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80390980 0038BEC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80390984 0038BEC4  3B E0 00 00 */	li r31, 0
/* 80390988 0038BEC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8039098C 0038BECC  7C 7E 1B 78 */	mr r30, r3
/* 80390990 0038BED0  4B FD 58 B5 */	bl func_80366244
/* 80390994 0038BED4  2C 03 00 00 */	cmpwi r3, 0
/* 80390998 0038BED8  41 82 00 1C */	beq lbl_803909B4
/* 8039099C 0038BEDC  7F C3 F3 78 */	mr r3, r30
/* 803909A0 0038BEE0  38 80 00 00 */	li r4, 0
/* 803909A4 0038BEE4  48 04 6C AD */	bl func_803D7650
/* 803909A8 0038BEE8  2C 03 00 00 */	cmpwi r3, 0
/* 803909AC 0038BEEC  40 82 00 08 */	bne lbl_803909B4
/* 803909B0 0038BEF0  3B E0 00 01 */	li r31, 1
lbl_803909B4:
/* 803909B4 0038BEF4  7F E3 FB 78 */	mr r3, r31
/* 803909B8 0038BEF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803909BC 0038BEFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803909C0 0038BF00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803909C4 0038BF04  7C 08 03 A6 */	mtlr r0
/* 803909C8 0038BF08  38 21 00 10 */	addi r1, r1, 0x10
/* 803909CC 0038BF0C  4E 80 00 20 */	blr 
/* 803909D0 0038BF10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803909D4 0038BF14  7C 08 02 A6 */	mflr r0
/* 803909D8 0038BF18  2C 03 00 00 */	cmpwi r3, 0
/* 803909DC 0038BF1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803909E0 0038BF20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803909E4 0038BF24  7C 9F 23 78 */	mr r31, r4
/* 803909E8 0038BF28  93 C1 00 08 */	stw r30, 8(r1)
/* 803909EC 0038BF2C  7C 7E 1B 78 */	mr r30, r3
/* 803909F0 0038BF30  41 82 00 1C */	beq lbl_80390A0C
/* 803909F4 0038BF34  38 80 00 00 */	li r4, 0
/* 803909F8 0038BF38  4B FF F9 45 */	bl func_8039033C
/* 803909FC 0038BF3C  2C 1F 00 00 */	cmpwi r31, 0
/* 80390A00 0038BF40  40 81 00 0C */	ble lbl_80390A0C
/* 80390A04 0038BF44  7F C3 F3 78 */	mr r3, r30
/* 80390A08 0038BF48  48 07 91 39 */	bl __dl__FPv
lbl_80390A0C:
/* 80390A0C 0038BF4C  7F C3 F3 78 */	mr r3, r30
/* 80390A10 0038BF50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80390A14 0038BF54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80390A18 0038BF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80390A1C 0038BF5C  7C 08 03 A6 */	mtlr r0
/* 80390A20 0038BF60  38 21 00 10 */	addi r1, r1, 0x10
/* 80390A24 0038BF64  4E 80 00 20 */	blr 
/* 80390A28 0038BF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80390A2C 0038BF6C  7C 08 02 A6 */	mflr r0
/* 80390A30 0038BF70  38 6D D7 28 */	addi r3, r13, lbl_806A23C8-_SDA_BASE_
/* 80390A34 0038BF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80390A38 0038BF78  48 00 00 1D */	bl func_80390A54
/* 80390A3C 0038BF7C  38 6D D7 2C */	addi r3, r13, lbl_806A23CC-_SDA_BASE_
/* 80390A40 0038BF80  48 00 00 25 */	bl func_80390A64
/* 80390A44 0038BF84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80390A48 0038BF88  7C 08 03 A6 */	mtlr r0
/* 80390A4C 0038BF8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80390A50 0038BF90  4E 80 00 20 */	blr 

.global func_80390A54
func_80390A54:
/* 80390A54 0038BF94  3C 80 80 5C */	lis r4, lbl_805C635C@ha
/* 80390A58 0038BF98  38 84 63 5C */	addi r4, r4, lbl_805C635C@l
/* 80390A5C 0038BF9C  90 83 00 00 */	stw r4, 0(r3)
/* 80390A60 0038BFA0  4E 80 00 20 */	blr 

.global func_80390A64
func_80390A64:
/* 80390A64 0038BFA4  3C 80 80 5C */	lis r4, lbl_805C634C@ha
/* 80390A68 0038BFA8  38 84 63 4C */	addi r4, r4, lbl_805C634C@l
/* 80390A6C 0038BFAC  90 83 00 00 */	stw r4, 0(r3)
/* 80390A70 0038BFB0  4E 80 00 20 */	blr 
/* 80390A74 0038BFB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80390A78 0038BFB8  7C 08 02 A6 */	mflr r0
/* 80390A7C 0038BFBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80390A80 0038BFC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80390A84 0038BFC4  83 E4 00 00 */	lwz r31, 0(r4)
/* 80390A88 0038BFC8  7F E3 FB 78 */	mr r3, r31
/* 80390A8C 0038BFCC  48 04 71 8D */	bl func_803D7C18
/* 80390A90 0038BFD0  2C 03 00 00 */	cmpwi r3, 0
/* 80390A94 0038BFD4  41 82 00 20 */	beq lbl_80390AB4
/* 80390A98 0038BFD8  7F E3 FB 78 */	mr r3, r31
/* 80390A9C 0038BFDC  48 04 76 B1 */	bl func_803D814C
/* 80390AA0 0038BFE0  3C 80 80 5C */	lis r4, lbl_805C62EF@ha
/* 80390AA4 0038BFE4  7F E3 FB 78 */	mr r3, r31
/* 80390AA8 0038BFE8  38 84 62 EF */	addi r4, r4, lbl_805C62EF@l
/* 80390AAC 0038BFEC  38 A0 00 00 */	li r5, 0
/* 80390AB0 0038BFF0  48 04 64 39 */	bl func_803D6EE8
lbl_80390AB4:
/* 80390AB4 0038BFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80390AB8 0038BFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80390ABC 0038BFFC  7C 08 03 A6 */	mtlr r0
/* 80390AC0 0038C000  38 21 00 10 */	addi r1, r1, 0x10
/* 80390AC4 0038C004  4E 80 00 20 */	blr 
/* 80390AC8 0038C008  4E 80 00 20 */	blr 
/* 80390ACC 0038C00C  38 60 00 02 */	li r3, 2
/* 80390AD0 0038C010  4E 80 00 20 */	blr 
