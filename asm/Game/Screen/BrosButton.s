.include "macros.inc"

.text

.global func_8034B954
func_8034B954:
/* 8034B954 00346E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034B958 00346E98  7C 08 02 A6 */	mflr r0
/* 8034B95C 00346E9C  38 A0 00 01 */	li r5, 1
/* 8034B960 00346EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034B964 00346EA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034B968 00346EA8  7C 7F 1B 78 */	mr r31, r3
/* 8034B96C 00346EAC  48 01 A7 21 */	bl func_8036608C
/* 8034B970 00346EB0  3C 60 80 5C */	lis r3, lbl_805BE490@ha
/* 8034B974 00346EB4  38 80 00 01 */	li r4, 1
/* 8034B978 00346EB8  38 63 E4 90 */	addi r3, r3, lbl_805BE490@l
/* 8034B97C 00346EBC  38 00 00 00 */	li r0, 0
/* 8034B980 00346EC0  90 7F 00 00 */	stw r3, 0(r31)
/* 8034B984 00346EC4  7F E3 FB 78 */	mr r3, r31
/* 8034B988 00346EC8  98 9F 00 20 */	stb r4, 0x20(r31)
/* 8034B98C 00346ECC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8034B990 00346ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034B994 00346ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034B998 00346ED8  7C 08 03 A6 */	mtlr r0
/* 8034B99C 00346EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8034B9A0 00346EE0  4E 80 00 20 */	blr 
/* 8034B9A4 00346EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034B9A8 00346EE8  7C 08 02 A6 */	mflr r0
/* 8034B9AC 00346EEC  38 A0 00 01 */	li r5, 1
/* 8034B9B0 00346EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034B9B4 00346EF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034B9B8 00346EF8  3F E0 80 5C */	lis r31, lbl_805BE430@ha
/* 8034B9BC 00346EFC  38 9F E4 30 */	addi r4, r31, lbl_805BE430@l
/* 8034B9C0 00346F00  93 C1 00 08 */	stw r30, 8(r1)
/* 8034B9C4 00346F04  7C 7E 1B 78 */	mr r30, r3
/* 8034B9C8 00346F08  48 01 A9 89 */	bl func_80366350
/* 8034B9CC 00346F0C  38 60 00 40 */	li r3, 0x40
/* 8034B9D0 00346F10  48 0B E1 29 */	bl func_80409AF8
/* 8034B9D4 00346F14  2C 03 00 00 */	cmpwi r3, 0
/* 8034B9D8 00346F18  7C 64 1B 78 */	mr r4, r3
/* 8034B9DC 00346F1C  41 82 00 24 */	beq lbl_8034BA00
/* 8034B9E0 00346F20  3C C0 80 5C */	lis r6, lbl_805BE43B@ha
/* 8034B9E4 00346F24  7F C4 F3 78 */	mr r4, r30
/* 8034B9E8 00346F28  38 BF E4 30 */	addi r5, r31, -7120
/* 8034B9EC 00346F2C  38 E0 00 00 */	li r7, 0
/* 8034B9F0 00346F30  38 C6 E4 3B */	addi r6, r6, lbl_805BE43B@l
/* 8034B9F4 00346F34  39 00 00 01 */	li r8, 1
/* 8034B9F8 00346F38  48 00 03 89 */	bl func_8034BD80
/* 8034B9FC 00346F3C  7C 64 1B 78 */	mr r4, r3
lbl_8034BA00:
/* 8034BA00 00346F40  90 9E 00 24 */	stw r4, 0x24(r30)
/* 8034BA04 00346F44  38 00 00 00 */	li r0, 0
/* 8034BA08 00346F48  7F C3 F3 78 */	mr r3, r30
/* 8034BA0C 00346F4C  98 04 00 22 */	stb r0, 0x22(r4)
/* 8034BA10 00346F50  48 0A 3A 89 */	bl func_803EF498
/* 8034BA14 00346F54  7F C3 F3 78 */	mr r3, r30
/* 8034BA18 00346F58  38 8D D0 10 */	addi r4, r13, lbl_806A1CB0-_SDA_BASE_
/* 8034BA1C 00346F5C  48 01 AA 59 */	bl func_80366474
/* 8034BA20 00346F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034BA24 00346F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034BA28 00346F68  83 C1 00 08 */	lwz r30, 8(r1)
/* 8034BA2C 00346F6C  7C 08 03 A6 */	mtlr r0
/* 8034BA30 00346F70  38 21 00 10 */	addi r1, r1, 0x10
/* 8034BA34 00346F74  4E 80 00 20 */	blr 

.global func_8034BA38
func_8034BA38:
/* 8034BA38 00346F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034BA3C 00346F7C  7C 08 02 A6 */	mflr r0
/* 8034BA40 00346F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034BA44 00346F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034BA48 00346F88  7C 9F 23 78 */	mr r31, r4
/* 8034BA4C 00346F8C  93 C1 00 08 */	stw r30, 8(r1)
/* 8034BA50 00346F90  7C 7E 1B 78 */	mr r30, r3
/* 8034BA54 00346F94  81 83 00 00 */	lwz r12, 0(r3)
/* 8034BA58 00346F98  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8034BA5C 00346F9C  7D 89 03 A6 */	mtctr r12
/* 8034BA60 00346FA0  4E 80 04 21 */	bctrl 
/* 8034BA64 00346FA4  7F C3 F3 78 */	mr r3, r30
/* 8034BA68 00346FA8  38 8D D0 10 */	addi r4, r13, lbl_806A1CB0-_SDA_BASE_
/* 8034BA6C 00346FAC  48 01 A7 D1 */	bl func_8036623C
/* 8034BA70 00346FB0  9B FE 00 20 */	stb r31, 0x20(r30)
/* 8034BA74 00346FB4  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8034BA78 00346FB8  48 00 04 4D */	bl func_8034BEC4
/* 8034BA7C 00346FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034BA80 00346FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034BA84 00346FC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8034BA88 00346FC8  7C 08 03 A6 */	mtlr r0
/* 8034BA8C 00346FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8034BA90 00346FD0  4E 80 00 20 */	blr 

.global func_8034BA94
func_8034BA94:
/* 8034BA94 00346FD4  38 8D D0 1C */	addi r4, r13, lbl_806A1CBC-_SDA_BASE_
/* 8034BA98 00346FD8  48 01 A7 A4 */	b func_8036623C

.global func_8034BA9C
func_8034BA9C:
/* 8034BA9C 00346FDC  38 8D D0 18 */	addi r4, r13, lbl_806A1CB8-_SDA_BASE_
/* 8034BAA0 00346FE0  48 01 A7 A4 */	b func_80366244

.global func_8034BAA4
func_8034BAA4:
/* 8034BAA4 00346FE4  88 63 00 20 */	lbz r3, 0x20(r3)
/* 8034BAA8 00346FE8  4E 80 00 20 */	blr 

.global func_8034BAAC
func_8034BAAC:
/* 8034BAAC 00346FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034BAB0 00346FF0  7C 08 02 A6 */	mflr r0
/* 8034BAB4 00346FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034BAB8 00346FF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034BABC 00346FFC  7C 7F 1B 78 */	mr r31, r3
/* 8034BAC0 00347000  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8034BAC4 00347004  48 00 06 11 */	bl func_8034C0D4
/* 8034BAC8 00347008  7F E3 FB 78 */	mr r3, r31
/* 8034BACC 0034700C  38 8D D0 14 */	addi r4, r13, lbl_806A1CB4-_SDA_BASE_
/* 8034BAD0 00347010  48 01 A7 6D */	bl func_8036623C
/* 8034BAD4 00347014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034BAD8 00347018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034BADC 0034701C  7C 08 03 A6 */	mtlr r0
/* 8034BAE0 00347020  38 21 00 10 */	addi r1, r1, 0x10
/* 8034BAE4 00347024  4E 80 00 20 */	blr 
lbl_8034BAE8:
/* 8034BAE8 00347028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034BAEC 0034702C  7C 08 02 A6 */	mflr r0
/* 8034BAF0 00347030  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034BAF4 00347034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034BAF8 00347038  7C 7F 1B 78 */	mr r31, r3
/* 8034BAFC 0034703C  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8034BB00 00347040  48 00 04 49 */	bl func_8034BF48
/* 8034BB04 00347044  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8034BB08 00347048  88 03 00 20 */	lbz r0, 0x20(r3)
/* 8034BB0C 0034704C  2C 00 00 00 */	cmpwi r0, 0
/* 8034BB10 00347050  41 82 00 74 */	beq lbl_8034BB84
/* 8034BB14 00347054  88 1F 00 20 */	lbz r0, 0x20(r31)
/* 8034BB18 00347058  7C 00 00 34 */	cntlzw r0, r0
/* 8034BB1C 0034705C  54 00 D9 7E */	srwi r0, r0, 5
/* 8034BB20 00347060  28 00 00 01 */	cmplwi r0, 1
/* 8034BB24 00347064  98 1F 00 20 */	stb r0, 0x20(r31)
/* 8034BB28 00347068  40 82 00 2C */	bne lbl_8034BB54
/* 8034BB2C 0034706C  3C 60 80 5C */	lis r3, lbl_805BE446@ha
/* 8034BB30 00347070  38 80 00 00 */	li r4, 0
/* 8034BB34 00347074  38 63 E4 46 */	addi r3, r3, lbl_805BE446@l
/* 8034BB38 00347078  48 0A CB ED */	bl func_803F8724
/* 8034BB3C 0034707C  3C 60 80 5C */	lis r3, lbl_805BE45E@ha
/* 8034BB40 00347080  38 80 FF FF */	li r4, -1
/* 8034BB44 00347084  38 63 E4 5E */	addi r3, r3, lbl_805BE45E@l
/* 8034BB48 00347088  38 A0 FF FF */	li r5, -1
/* 8034BB4C 0034708C  48 0A E2 A1 */	bl func_803F9DEC
/* 8034BB50 00347090  48 00 00 28 */	b lbl_8034BB78
lbl_8034BB54:
/* 8034BB54 00347094  3C 60 80 5C */	lis r3, lbl_805BE45E@ha
/* 8034BB58 00347098  38 80 00 00 */	li r4, 0
/* 8034BB5C 0034709C  38 63 E4 5E */	addi r3, r3, lbl_805BE45E@l
/* 8034BB60 003470A0  48 0A CB C5 */	bl func_803F8724
/* 8034BB64 003470A4  3C 60 80 5C */	lis r3, lbl_805BE446@ha
/* 8034BB68 003470A8  38 80 FF FF */	li r4, -1
/* 8034BB6C 003470AC  38 63 E4 46 */	addi r3, r3, lbl_805BE446@l
/* 8034BB70 003470B0  38 A0 FF FF */	li r5, -1
/* 8034BB74 003470B4  48 0A E2 79 */	bl func_803F9DEC
lbl_8034BB78:
/* 8034BB78 003470B8  7F E3 FB 78 */	mr r3, r31
/* 8034BB7C 003470BC  38 8D D0 18 */	addi r4, r13, lbl_806A1CB8-_SDA_BASE_
/* 8034BB80 003470C0  48 01 A6 BD */	bl func_8036623C
lbl_8034BB84:
/* 8034BB84 003470C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034BB88 003470C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034BB8C 003470CC  7C 08 03 A6 */	mtlr r0
/* 8034BB90 003470D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8034BB94 003470D4  4E 80 00 20 */	blr 
lbl_8034BB98:
/* 8034BB98 003470D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034BB9C 003470DC  7C 08 02 A6 */	mflr r0
/* 8034BBA0 003470E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034BBA4 003470E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034BBA8 003470E8  7C 7F 1B 78 */	mr r31, r3
/* 8034BBAC 003470EC  48 08 C0 6D */	bl func_803D7C18
/* 8034BBB0 003470F0  2C 03 00 00 */	cmpwi r3, 0
/* 8034BBB4 003470F4  41 82 00 0C */	beq lbl_8034BBC0
/* 8034BBB8 003470F8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8034BBBC 003470FC  48 00 03 7D */	bl func_8034BF38
lbl_8034BBC0:
/* 8034BBC0 00347100  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8034BBC4 00347104  48 00 04 15 */	bl func_8034BFD8
/* 8034BBC8 00347108  2C 03 00 00 */	cmpwi r3, 0
/* 8034BBCC 0034710C  41 82 00 18 */	beq lbl_8034BBE4
/* 8034BBD0 00347110  81 9F 00 00 */	lwz r12, 0(r31)
/* 8034BBD4 00347114  7F E3 FB 78 */	mr r3, r31
/* 8034BBD8 00347118  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8034BBDC 0034711C  7D 89 03 A6 */	mtctr r12
/* 8034BBE0 00347120  4E 80 04 21 */	bctrl 
lbl_8034BBE4:
/* 8034BBE4 00347124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034BBE8 00347128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034BBEC 0034712C  7C 08 03 A6 */	mtlr r0
/* 8034BBF0 00347130  38 21 00 10 */	addi r1, r1, 0x10
/* 8034BBF4 00347134  4E 80 00 20 */	blr 
/* 8034BBF8 00347138  48 01 A5 E8 */	b func_803661E0
/* 8034BBFC 0034713C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034BC00 00347140  7C 08 02 A6 */	mflr r0
/* 8034BC04 00347144  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034BC08 00347148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034BC0C 0034714C  7C 7F 1B 78 */	mr r31, r3
/* 8034BC10 00347150  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8034BC14 00347154  48 00 02 71 */	bl func_8034BE84
/* 8034BC18 00347158  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8034BC1C 0034715C  48 00 03 CD */	bl func_8034BFE8
/* 8034BC20 00347160  2C 03 00 00 */	cmpwi r3, 0
/* 8034BC24 00347164  41 82 00 18 */	beq lbl_8034BC3C
/* 8034BC28 00347168  3C 60 80 5C */	lis r3, lbl_805BE476@ha
/* 8034BC2C 0034716C  38 80 FF FF */	li r4, -1
/* 8034BC30 00347170  38 63 E4 76 */	addi r3, r3, lbl_805BE476@l
/* 8034BC34 00347174  38 A0 FF FF */	li r5, -1
/* 8034BC38 00347178  48 0A E1 B5 */	bl func_803F9DEC
lbl_8034BC3C:
/* 8034BC3C 0034717C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034BC40 00347180  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034BC44 00347184  7C 08 03 A6 */	mtlr r0
/* 8034BC48 00347188  38 21 00 10 */	addi r1, r1, 0x10
/* 8034BC4C 0034718C  4E 80 00 20 */	blr 
/* 8034BC50 00347190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034BC54 00347194  7C 08 02 A6 */	mflr r0
/* 8034BC58 00347198  2C 03 00 00 */	cmpwi r3, 0
/* 8034BC5C 0034719C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034BC60 003471A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034BC64 003471A4  7C 9F 23 78 */	mr r31, r4
/* 8034BC68 003471A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8034BC6C 003471AC  7C 7E 1B 78 */	mr r30, r3
/* 8034BC70 003471B0  41 82 00 20 */	beq lbl_8034BC90
/* 8034BC74 003471B4  41 82 00 0C */	beq lbl_8034BC80
/* 8034BC78 003471B8  38 80 00 00 */	li r4, 0
/* 8034BC7C 003471BC  4B F1 55 39 */	bl func_802611B4
lbl_8034BC80:
/* 8034BC80 003471C0  2C 1F 00 00 */	cmpwi r31, 0
/* 8034BC84 003471C4  40 81 00 0C */	ble lbl_8034BC90
/* 8034BC88 003471C8  7F C3 F3 78 */	mr r3, r30
/* 8034BC8C 003471CC  48 0B DE B5 */	bl __dl__FPv
lbl_8034BC90:
/* 8034BC90 003471D0  7F C3 F3 78 */	mr r3, r30
/* 8034BC94 003471D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034BC98 003471D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8034BC9C 003471DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034BCA0 003471E0  7C 08 03 A6 */	mtlr r0
/* 8034BCA4 003471E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8034BCA8 003471E8  4E 80 00 20 */	blr 
/* 8034BCAC 003471EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034BCB0 003471F0  7C 08 02 A6 */	mflr r0
/* 8034BCB4 003471F4  38 6D D0 10 */	addi r3, r13, lbl_806A1CB0-_SDA_BASE_
/* 8034BCB8 003471F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034BCBC 003471FC  48 00 00 2D */	bl func_8034BCE8
/* 8034BCC0 00347200  38 6D D0 14 */	addi r3, r13, lbl_806A1CB4-_SDA_BASE_
/* 8034BCC4 00347204  48 00 00 35 */	bl func_8034BCF8
/* 8034BCC8 00347208  38 6D D0 18 */	addi r3, r13, lbl_806A1CB8-_SDA_BASE_
/* 8034BCCC 0034720C  48 00 00 3D */	bl func_8034BD08
/* 8034BCD0 00347210  38 6D D0 1C */	addi r3, r13, lbl_806A1CBC-_SDA_BASE_
/* 8034BCD4 00347214  48 00 00 45 */	bl func_8034BD18
/* 8034BCD8 00347218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034BCDC 0034721C  7C 08 03 A6 */	mtlr r0
/* 8034BCE0 00347220  38 21 00 10 */	addi r1, r1, 0x10
/* 8034BCE4 00347224  4E 80 00 20 */	blr 

.global func_8034BCE8
func_8034BCE8:
/* 8034BCE8 00347228  3C 80 80 5C */	lis r4, lbl_805BE4F0@ha
/* 8034BCEC 0034722C  38 84 E4 F0 */	addi r4, r4, lbl_805BE4F0@l
/* 8034BCF0 00347230  90 83 00 00 */	stw r4, 0(r3)
/* 8034BCF4 00347234  4E 80 00 20 */	blr 

.global func_8034BCF8
func_8034BCF8:
/* 8034BCF8 00347238  3C 80 80 5C */	lis r4, lbl_805BE4E0@ha
/* 8034BCFC 0034723C  38 84 E4 E0 */	addi r4, r4, lbl_805BE4E0@l
/* 8034BD00 00347240  90 83 00 00 */	stw r4, 0(r3)
/* 8034BD04 00347244  4E 80 00 20 */	blr 

.global func_8034BD08
func_8034BD08:
/* 8034BD08 00347248  3C 80 80 5C */	lis r4, lbl_805BE4D0@ha
/* 8034BD0C 0034724C  38 84 E4 D0 */	addi r4, r4, lbl_805BE4D0@l
/* 8034BD10 00347250  90 83 00 00 */	stw r4, 0(r3)
/* 8034BD14 00347254  4E 80 00 20 */	blr 

.global func_8034BD18
func_8034BD18:
/* 8034BD18 00347258  3C 80 80 5C */	lis r4, lbl_805BE4C0@ha
/* 8034BD1C 0034725C  38 84 E4 C0 */	addi r4, r4, lbl_805BE4C0@l
/* 8034BD20 00347260  90 83 00 00 */	stw r4, 0(r3)
/* 8034BD24 00347264  4E 80 00 20 */	blr 
/* 8034BD28 00347268  80 64 00 00 */	lwz r3, 0(r4)
/* 8034BD2C 0034726C  4B FF FE 6C */	b lbl_8034BB98
/* 8034BD30 00347270  4E 80 00 20 */	blr 
/* 8034BD34 00347274  80 64 00 00 */	lwz r3, 0(r4)
/* 8034BD38 00347278  4B FF FD B0 */	b lbl_8034BAE8
/* 8034BD3C 0034727C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034BD40 00347280  7C 08 02 A6 */	mflr r0
/* 8034BD44 00347284  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034BD48 00347288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034BD4C 0034728C  83 E4 00 00 */	lwz r31, 0(r4)
/* 8034BD50 00347290  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8034BD54 00347294  48 00 03 71 */	bl func_8034C0C4
/* 8034BD58 00347298  2C 03 00 00 */	cmpwi r3, 0
/* 8034BD5C 0034729C  41 82 00 10 */	beq lbl_8034BD6C
/* 8034BD60 003472A0  7F E3 FB 78 */	mr r3, r31
/* 8034BD64 003472A4  38 8D D0 14 */	addi r4, r13, lbl_806A1CB4-_SDA_BASE_
/* 8034BD68 003472A8  48 01 A4 D5 */	bl func_8036623C
lbl_8034BD6C:
/* 8034BD6C 003472AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034BD70 003472B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034BD74 003472B4  7C 08 03 A6 */	mtlr r0
/* 8034BD78 003472B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8034BD7C 003472BC  4E 80 00 20 */	blr 
