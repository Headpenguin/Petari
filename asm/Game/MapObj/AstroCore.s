.include "macros.inc"

.text

.global func_801A8D00
func_801A8D00:
/* 801A8D00 001A4240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A8D04 001A4244  7C 08 02 A6 */	mflr r0
/* 801A8D08 001A4248  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A8D0C 001A424C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A8D10 001A4250  7C 7F 1B 78 */	mr r31, r3
/* 801A8D14 001A4254  48 04 D4 25 */	bl func_801F6138
/* 801A8D18 001A4258  3C 80 80 58 */	lis r4, lbl_80579720@ha
/* 801A8D1C 001A425C  7F E3 FB 78 */	mr r3, r31
/* 801A8D20 001A4260  38 84 97 20 */	addi r4, r4, lbl_80579720@l
/* 801A8D24 001A4264  90 9F 00 00 */	stw r4, 0(r31)
/* 801A8D28 001A4268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A8D2C 001A426C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A8D30 001A4270  7C 08 03 A6 */	mtlr r0
/* 801A8D34 001A4274  38 21 00 10 */	addi r1, r1, 0x10
/* 801A8D38 001A4278  4E 80 00 20 */	blr 
/* 801A8D3C 001A427C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801A8D40 001A4280  7C 08 02 A6 */	mflr r0
/* 801A8D44 001A4284  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801A8D48 001A4288  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 801A8D4C 001A428C  7C 9F 23 78 */	mr r31, r4
/* 801A8D50 001A4290  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 801A8D54 001A4294  7C 7E 1B 78 */	mr r30, r3
/* 801A8D58 001A4298  48 04 D5 01 */	bl func_801F6258
/* 801A8D5C 001A429C  38 61 00 28 */	addi r3, r1, 0x28
/* 801A8D60 001A42A0  48 04 F0 99 */	bl func_801F7DF8
/* 801A8D64 001A42A4  38 61 00 28 */	addi r3, r1, 0x28
/* 801A8D68 001A42A8  48 04 F6 25 */	bl func_801F838C
/* 801A8D6C 001A42AC  38 61 00 28 */	addi r3, r1, 0x28
/* 801A8D70 001A42B0  38 8D B6 E8 */	addi r4, r13, lbl_806A0388-_SDA_BASE_
/* 801A8D74 001A42B4  48 04 F2 15 */	bl func_801F7F88
/* 801A8D78 001A42B8  38 61 00 28 */	addi r3, r1, 0x28
/* 801A8D7C 001A42BC  48 04 F1 CD */	bl func_801F7F48
/* 801A8D80 001A42C0  C0 02 CA 88 */	lfs f0, lbl_806A7D08-_SDA2_BASE_(r2)
/* 801A8D84 001A42C4  3C 60 80 53 */	lis r3, lbl_805319E0@ha
/* 801A8D88 001A42C8  C0 23 19 E0 */	lfs f1, lbl_805319E0@l(r3)
/* 801A8D8C 001A42CC  38 61 00 28 */	addi r3, r1, 0x28
/* 801A8D90 001A42D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 801A8D94 001A42D4  38 A1 00 08 */	addi r5, r1, 8
/* 801A8D98 001A42D8  38 80 00 08 */	li r4, 8
/* 801A8D9C 001A42DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801A8DA0 001A42E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801A8DA4 001A42E4  48 04 F1 C1 */	bl func_801F7F64
/* 801A8DA8 001A42E8  C0 22 CA 8C */	lfs f1, lbl_806A7D0C-_SDA2_BASE_(r2)
/* 801A8DAC 001A42EC  38 61 00 28 */	addi r3, r1, 0x28
/* 801A8DB0 001A42F0  48 04 F2 01 */	bl func_801F7FB0
/* 801A8DB4 001A42F4  38 61 00 28 */	addi r3, r1, 0x28
/* 801A8DB8 001A42F8  38 80 00 04 */	li r4, 4
/* 801A8DBC 001A42FC  48 04 F1 71 */	bl func_801F7F2C
/* 801A8DC0 001A4300  38 61 00 28 */	addi r3, r1, 0x28
/* 801A8DC4 001A4304  48 04 F1 79 */	bl func_801F7F3C
/* 801A8DC8 001A4308  7F C3 F3 78 */	mr r3, r30
/* 801A8DCC 001A430C  7F E4 FB 78 */	mr r4, r31
/* 801A8DD0 001A4310  38 A1 00 28 */	addi r5, r1, 0x28
/* 801A8DD4 001A4314  48 04 D6 1D */	bl func_801F63F0
/* 801A8DD8 001A4318  3C 80 80 58 */	lis r4, lbl_80580004@ha
/* 801A8DDC 001A431C  84 E4 96 D8 */	lwzu r7, -0x6928(r4)
/* 801A8DE0 001A4320  3C A0 80 58 */	lis r5, lbl_80579710@ha
/* 801A8DE4 001A4324  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A8DE8 001A4328  80 C4 00 04 */	lwz r6, lbl_80580004@l(r4)
/* 801A8DEC 001A432C  38 A5 97 10 */	addi r5, r5, lbl_80579710@l
/* 801A8DF0 001A4330  80 04 00 08 */	lwz r0, 8(r4)
/* 801A8DF4 001A4334  7F C3 F3 78 */	mr r3, r30
/* 801A8DF8 001A4338  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801A8DFC 001A433C  7F E4 FB 78 */	mr r4, r31
/* 801A8E00 001A4340  38 A1 00 14 */	addi r5, r1, 0x14
/* 801A8E04 001A4344  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 801A8E08 001A4348  90 C1 00 20 */	stw r6, 0x20(r1)
/* 801A8E0C 001A434C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A8E10 001A4350  4B F0 F7 29 */	bl func_800B8538
/* 801A8E14 001A4354  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801A8E18 001A4358  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 801A8E1C 001A435C  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 801A8E20 001A4360  7C 08 03 A6 */	mtlr r0
/* 801A8E24 001A4364  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801A8E28 001A4368  4E 80 00 20 */	blr 
lbl_801A8E2C:
/* 801A8E2C 001A436C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A8E30 001A4370  7C 08 02 A6 */	mflr r0
/* 801A8E34 001A4374  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A8E38 001A4378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A8E3C 001A437C  7C 7F 1B 78 */	mr r31, r3
/* 801A8E40 001A4380  48 23 38 AD */	bl func_803DC6EC
/* 801A8E44 001A4384  2C 03 00 00 */	cmpwi r3, 0
/* 801A8E48 001A4388  41 82 00 24 */	beq lbl_801A8E6C
/* 801A8E4C 001A438C  7F E3 FB 78 */	mr r3, r31
/* 801A8E50 001A4390  38 80 00 00 */	li r4, 0
/* 801A8E54 001A4394  48 24 84 39 */	bl func_803F128C
/* 801A8E58 001A4398  48 24 85 DD */	bl func_803F1434
/* 801A8E5C 001A439C  3C 80 80 58 */	lis r4, lbl_805796E4@ha
/* 801A8E60 001A43A0  7F E3 FB 78 */	mr r3, r31
/* 801A8E64 001A43A4  38 84 96 E4 */	addi r4, r4, lbl_805796E4@l
/* 801A8E68 001A43A8  48 22 2C B1 */	bl func_803CBB18
lbl_801A8E6C:
/* 801A8E6C 001A43AC  7F E3 FB 78 */	mr r3, r31
/* 801A8E70 001A43B0  38 80 00 28 */	li r4, 0x28
/* 801A8E74 001A43B4  48 23 38 41 */	bl func_803DC6B4
/* 801A8E78 001A43B8  2C 03 00 00 */	cmpwi r3, 0
/* 801A8E7C 001A43BC  41 82 00 34 */	beq lbl_801A8EB0
/* 801A8E80 001A43C0  3C 80 80 58 */	lis r4, lbl_805796EE@ha
/* 801A8E84 001A43C4  7F E3 FB 78 */	mr r3, r31
/* 801A8E88 001A43C8  38 84 96 EE */	addi r4, r4, lbl_805796EE@l
/* 801A8E8C 001A43CC  38 A0 FF FF */	li r5, -1
/* 801A8E90 001A43D0  38 C0 FF FF */	li r6, -1
/* 801A8E94 001A43D4  48 24 FB A9 */	bl func_803F8A3C
/* 801A8E98 001A43D8  7F E3 FB 78 */	mr r3, r31
/* 801A8E9C 001A43DC  38 80 00 00 */	li r4, 0
/* 801A8EA0 001A43E0  48 24 83 ED */	bl func_803F128C
/* 801A8EA4 001A43E4  48 24 85 91 */	bl func_803F1434
/* 801A8EA8 001A43E8  7F E3 FB 78 */	mr r3, r31
/* 801A8EAC 001A43EC  48 00 00 29 */	bl func_801A8ED4
lbl_801A8EB0:
/* 801A8EB0 001A43F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A8EB4 001A43F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A8EB8 001A43F8  7C 08 03 A6 */	mtlr r0
/* 801A8EBC 001A43FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801A8EC0 001A4400  4E 80 00 20 */	blr 
/* 801A8EC4 001A4404  38 60 00 00 */	li r3, 0
/* 801A8EC8 001A4408  4E 80 00 20 */	blr 
/* 801A8ECC 001A440C  38 8D B6 EC */	addi r4, r13, lbl_806A038C-_SDA_BASE_
/* 801A8ED0 001A4410  4B FB C9 54 */	b func_80165824

.global func_801A8ED4
func_801A8ED4:
/* 801A8ED4 001A4414  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A8ED8 001A4418  7C 08 02 A6 */	mflr r0
/* 801A8EDC 001A441C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A8EE0 001A4420  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801A8EE4 001A4424  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0
/* 801A8EE8 001A4428  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801A8EEC 001A442C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801A8EF0 001A4430  7C 7E 1B 78 */	mr r30, r3
/* 801A8EF4 001A4434  4B F0 F0 41 */	bl func_800B7F34
/* 801A8EF8 001A4438  38 80 00 00 */	li r4, 0
/* 801A8EFC 001A443C  38 A0 00 06 */	li r5, 6
/* 801A8F00 001A4440  38 63 00 01 */	addi r3, r3, 1
/* 801A8F04 001A4444  4B F6 90 25 */	bl func_80111F28
/* 801A8F08 001A4448  7C 7F 1B 78 */	mr r31, r3
/* 801A8F0C 001A444C  38 80 00 00 */	li r4, 0
/* 801A8F10 001A4450  38 A0 00 06 */	li r5, 6
/* 801A8F14 001A4454  4B F6 90 15 */	bl func_80111F28
/* 801A8F18 001A4458  3C A0 80 58 */	lis r5, lbl_80579704@ha
/* 801A8F1C 001A445C  7C 66 1B 78 */	mr r6, r3
/* 801A8F20 001A4460  38 61 00 08 */	addi r3, r1, 8
/* 801A8F24 001A4464  38 80 00 20 */	li r4, 0x20
/* 801A8F28 001A4468  38 A5 97 04 */	addi r5, r5, lbl_80579704@l
/* 801A8F2C 001A446C  4C C6 31 82 */	crclr 6
/* 801A8F30 001A4470  48 37 40 0D */	bl snprintf
/* 801A8F34 001A4474  7F C3 F3 78 */	mr r3, r30
/* 801A8F38 001A4478  38 81 00 08 */	addi r4, r1, 8
/* 801A8F3C 001A447C  48 23 1A 09 */	bl func_803DA944
/* 801A8F40 001A4480  3C 80 80 53 */	lis r4, lbl_805319E0@ha
/* 801A8F44 001A4484  57 E0 10 3A */	slwi r0, r31, 2
/* 801A8F48 001A4488  38 84 19 E0 */	addi r4, r4, lbl_805319E0@l
/* 801A8F4C 001A448C  7F C3 F3 78 */	mr r3, r30
/* 801A8F50 001A4490  7F E4 04 2E */	lfsx f31, r4, r0
/* 801A8F54 001A4494  38 80 00 00 */	li r4, 0
/* 801A8F58 001A4498  4B FB C9 1D */	bl func_80165874
/* 801A8F5C 001A449C  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 801A8F60 001A44A0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0
/* 801A8F64 001A44A4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801A8F68 001A44A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801A8F6C 001A44AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801A8F70 001A44B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A8F74 001A44B4  7C 08 03 A6 */	mtlr r0
/* 801A8F78 001A44B8  38 21 00 40 */	addi r1, r1, 0x40
/* 801A8F7C 001A44BC  4E 80 00 20 */	blr 

.global func_801A8F80
func_801A8F80:
/* 801A8F80 001A44C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A8F84 001A44C4  7C 08 02 A6 */	mflr r0
/* 801A8F88 001A44C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A8F8C 001A44CC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801A8F90 001A44D0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0
/* 801A8F94 001A44D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801A8F98 001A44D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801A8F9C 001A44DC  7C 7E 1B 78 */	mr r30, r3
/* 801A8FA0 001A44E0  4B F0 EF 95 */	bl func_800B7F34
/* 801A8FA4 001A44E4  38 80 00 00 */	li r4, 0
/* 801A8FA8 001A44E8  38 A0 00 06 */	li r5, 6
/* 801A8FAC 001A44EC  4B F6 8F 7D */	bl func_80111F28
/* 801A8FB0 001A44F0  7C 7F 1B 78 */	mr r31, r3
/* 801A8FB4 001A44F4  38 80 00 00 */	li r4, 0
/* 801A8FB8 001A44F8  38 A0 00 06 */	li r5, 6
/* 801A8FBC 001A44FC  4B F6 8F 6D */	bl func_80111F28
/* 801A8FC0 001A4500  3C A0 80 58 */	lis r5, lbl_80579704@ha
/* 801A8FC4 001A4504  7C 66 1B 78 */	mr r6, r3
/* 801A8FC8 001A4508  38 61 00 08 */	addi r3, r1, 8
/* 801A8FCC 001A450C  38 80 00 20 */	li r4, 0x20
/* 801A8FD0 001A4510  38 A5 97 04 */	addi r5, r5, lbl_80579704@l
/* 801A8FD4 001A4514  4C C6 31 82 */	crclr 6
/* 801A8FD8 001A4518  48 37 3F 65 */	bl snprintf
/* 801A8FDC 001A451C  7F C3 F3 78 */	mr r3, r30
/* 801A8FE0 001A4520  38 81 00 08 */	addi r4, r1, 8
/* 801A8FE4 001A4524  48 23 19 61 */	bl func_803DA944
/* 801A8FE8 001A4528  7F C3 F3 78 */	mr r3, r30
/* 801A8FEC 001A452C  38 81 00 08 */	addi r4, r1, 8
/* 801A8FF0 001A4530  48 23 1E 99 */	bl func_803DAE88
/* 801A8FF4 001A4534  3C 80 80 53 */	lis r4, lbl_805319E0@ha
/* 801A8FF8 001A4538  57 E0 10 3A */	slwi r0, r31, 2
/* 801A8FFC 001A453C  38 84 19 E0 */	addi r4, r4, lbl_805319E0@l
/* 801A9000 001A4540  7F C3 F3 78 */	mr r3, r30
/* 801A9004 001A4544  7F E4 04 2E */	lfsx f31, r4, r0
/* 801A9008 001A4548  38 80 00 00 */	li r4, 0
/* 801A900C 001A454C  4B FB C8 69 */	bl func_80165874
/* 801A9010 001A4550  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 801A9014 001A4554  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0
/* 801A9018 001A4558  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801A901C 001A455C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801A9020 001A4560  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801A9024 001A4564  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A9028 001A4568  7C 08 03 A6 */	mtlr r0
/* 801A902C 001A456C  38 21 00 40 */	addi r1, r1, 0x40
/* 801A9030 001A4570  4E 80 00 20 */	blr 
/* 801A9034 001A4574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A9038 001A4578  7C 08 02 A6 */	mflr r0
/* 801A903C 001A457C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A9040 001A4580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A9044 001A4584  7C BF 2B 78 */	mr r31, r5
/* 801A9048 001A4588  7F E3 FB 78 */	mr r3, r31
/* 801A904C 001A458C  93 C1 00 08 */	stw r30, 8(r1)
/* 801A9050 001A4590  7C 9E 23 78 */	mr r30, r4
/* 801A9054 001A4594  48 21 98 85 */	bl func_803C28D8
/* 801A9058 001A4598  2C 03 00 00 */	cmpwi r3, 0
/* 801A905C 001A459C  41 82 00 10 */	beq lbl_801A906C
/* 801A9060 001A45A0  7F E3 FB 78 */	mr r3, r31
/* 801A9064 001A45A4  7F C4 F3 78 */	mr r4, r30
/* 801A9068 001A45A8  48 21 9B D5 */	bl func_803C2C3C
lbl_801A906C:
/* 801A906C 001A45AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A9070 001A45B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A9074 001A45B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A9078 001A45B8  7C 08 03 A6 */	mtlr r0
/* 801A907C 001A45BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801A9080 001A45C0  4E 80 00 20 */	blr 
/* 801A9084 001A45C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A9088 001A45C8  7C 08 02 A6 */	mflr r0
/* 801A908C 001A45CC  38 6D B6 E8 */	addi r3, r13, lbl_806A0388-_SDA_BASE_
/* 801A9090 001A45D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A9094 001A45D4  48 00 00 1D */	bl func_801A90B0
/* 801A9098 001A45D8  38 6D B6 EC */	addi r3, r13, lbl_806A038C-_SDA_BASE_
/* 801A909C 001A45DC  48 00 00 25 */	bl func_801A90C0
/* 801A90A0 001A45E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A90A4 001A45E4  7C 08 03 A6 */	mtlr r0
/* 801A90A8 001A45E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801A90AC 001A45EC  4E 80 00 20 */	blr 

.global func_801A90B0
func_801A90B0:
/* 801A90B0 001A45F0  3C 80 80 58 */	lis r4, lbl_805797C0@ha
/* 801A90B4 001A45F4  38 84 97 C0 */	addi r4, r4, lbl_805797C0@l
/* 801A90B8 001A45F8  90 83 00 00 */	stw r4, 0(r3)
/* 801A90BC 001A45FC  4E 80 00 20 */	blr 

.global func_801A90C0
func_801A90C0:
/* 801A90C0 001A4600  3C 80 80 58 */	lis r4, lbl_805797B0@ha
/* 801A90C4 001A4604  38 84 97 B0 */	addi r4, r4, lbl_805797B0@l
/* 801A90C8 001A4608  90 83 00 00 */	stw r4, 0(r3)
/* 801A90CC 001A460C  4E 80 00 20 */	blr 
/* 801A90D0 001A4610  80 64 00 00 */	lwz r3, 0(r4)
/* 801A90D4 001A4614  4B FF FD 58 */	b lbl_801A8E2C
/* 801A90D8 001A4618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A90DC 001A461C  7C 08 02 A6 */	mflr r0
/* 801A90E0 001A4620  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A90E4 001A4624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A90E8 001A4628  83 E4 00 00 */	lwz r31, 0(r4)
/* 801A90EC 001A462C  7F E3 FB 78 */	mr r3, r31
/* 801A90F0 001A4630  48 23 35 FD */	bl func_803DC6EC
/* 801A90F4 001A4634  2C 03 00 00 */	cmpwi r3, 0
/* 801A90F8 001A4638  41 82 00 0C */	beq lbl_801A9104
/* 801A90FC 001A463C  7F E3 FB 78 */	mr r3, r31
/* 801A9100 001A4640  4B FF FE 81 */	bl func_801A8F80
lbl_801A9104:
/* 801A9104 001A4644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A9108 001A4648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A910C 001A464C  7C 08 03 A6 */	mtlr r0
/* 801A9110 001A4650  38 21 00 10 */	addi r1, r1, 0x10
/* 801A9114 001A4654  4E 80 00 20 */	blr 
/* 801A9118 001A4658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A911C 001A465C  7C 08 02 A6 */	mflr r0
/* 801A9120 001A4660  7C 64 1B 78 */	mr r4, r3
/* 801A9124 001A4664  80 63 00 04 */	lwz r3, 4(r3)
/* 801A9128 001A4668  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A912C 001A466C  39 84 00 08 */	addi r12, r4, 8
/* 801A9130 001A4670  48 36 E2 B1 */	bl __ptmf_scall
/* 801A9134 001A4674  60 00 00 00 */	nop 
/* 801A9138 001A4678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A913C 001A467C  7C 08 03 A6 */	mtlr r0
/* 801A9140 001A4680  38 21 00 10 */	addi r1, r1, 0x10
/* 801A9144 001A4684  4E 80 00 20 */	blr 
/* 801A9148 001A4688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A914C 001A468C  7C 08 02 A6 */	mflr r0
/* 801A9150 001A4690  38 A0 00 00 */	li r5, 0
/* 801A9154 001A4694  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A9158 001A4698  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A915C 001A469C  7C 7F 1B 78 */	mr r31, r3
/* 801A9160 001A46A0  38 60 00 14 */	li r3, 0x14
/* 801A9164 001A46A4  48 26 09 A9 */	bl func_80409B0C
/* 801A9168 001A46A8  2C 03 00 00 */	cmpwi r3, 0
/* 801A916C 001A46AC  41 82 00 30 */	beq lbl_801A919C
/* 801A9170 001A46B0  3C 80 80 58 */	lis r4, lbl_80579710@ha
/* 801A9174 001A46B4  80 1F 00 04 */	lwz r0, 4(r31)
/* 801A9178 001A46B8  38 84 97 10 */	addi r4, r4, lbl_80579710@l
/* 801A917C 001A46BC  80 BF 00 08 */	lwz r5, 8(r31)
/* 801A9180 001A46C0  90 83 00 00 */	stw r4, 0(r3)
/* 801A9184 001A46C4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801A9188 001A46C8  90 03 00 04 */	stw r0, 4(r3)
/* 801A918C 001A46CC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 801A9190 001A46D0  90 A3 00 08 */	stw r5, 8(r3)
/* 801A9194 001A46D4  90 83 00 0C */	stw r4, 0xc(r3)
/* 801A9198 001A46D8  90 03 00 10 */	stw r0, 0x10(r3)
lbl_801A919C:
/* 801A919C 001A46DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A91A0 001A46E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A91A4 001A46E4  7C 08 03 A6 */	mtlr r0
/* 801A91A8 001A46E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801A91AC 001A46EC  4E 80 00 20 */	blr 
/* 801A91B0 001A46F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A91B4 001A46F4  7C 08 02 A6 */	mflr r0
/* 801A91B8 001A46F8  2C 03 00 00 */	cmpwi r3, 0
/* 801A91BC 001A46FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A91C0 001A4700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A91C4 001A4704  7C 9F 23 78 */	mr r31, r4
/* 801A91C8 001A4708  93 C1 00 08 */	stw r30, 8(r1)
/* 801A91CC 001A470C  7C 7E 1B 78 */	mr r30, r3
/* 801A91D0 001A4710  41 82 00 1C */	beq lbl_801A91EC
/* 801A91D4 001A4714  38 80 00 00 */	li r4, 0
/* 801A91D8 001A4718  4B FD 89 95 */	bl func_80181B6C
/* 801A91DC 001A471C  2C 1F 00 00 */	cmpwi r31, 0
/* 801A91E0 001A4720  40 81 00 0C */	ble lbl_801A91EC
/* 801A91E4 001A4724  7F C3 F3 78 */	mr r3, r30
/* 801A91E8 001A4728  48 26 09 59 */	bl __dl__FPv
lbl_801A91EC:
/* 801A91EC 001A472C  7F C3 F3 78 */	mr r3, r30
/* 801A91F0 001A4730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A91F4 001A4734  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A91F8 001A4738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A91FC 001A473C  7C 08 03 A6 */	mtlr r0
/* 801A9200 001A4740  38 21 00 10 */	addi r1, r1, 0x10
/* 801A9204 001A4744  4E 80 00 20 */	blr 