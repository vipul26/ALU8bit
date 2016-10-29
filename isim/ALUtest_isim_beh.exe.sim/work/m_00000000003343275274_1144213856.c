/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Vipul/ALUproject/booth_step_mult.v";
static int ng1[] = {1, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {3U, 0U};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};



static void NetDecl_32_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    xsi_vlog_unsigned_add(t5, 8, t3, 8, t4, 8);
    t2 = (t0 + 4944);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t5 + 4);
    t13 = *((unsigned int *)t5);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t2, 0, 7U);
    t18 = (t0 + 4800);
    *((int *)t18) = 1;

LAB1:    return;
}

static void NetDecl_33_1(char *t0)
{
    char t4[8];
    char t15[8];
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    *((unsigned int *)t4) = t8;
    *((unsigned int *)t2) = 0;
    if (*((unsigned int *)t6) != 0)
        goto LAB5;

LAB4:    t13 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t13 & 4294967295U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 4294967295U);
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t3, 8, t4, 32);
    t16 = ((char*)((ng1)));
    memset(t17, 0, 8);
    xsi_vlog_unsigned_add(t17, 32, t15, 32, t16, 32);
    t18 = (t0 + 5008);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memset(t22, 0, 8);
    t23 = 255U;
    t24 = t23;
    t25 = (t17 + 4);
    t26 = *((unsigned int *)t17);
    t23 = (t23 & t26);
    t27 = *((unsigned int *)t25);
    t24 = (t24 & t27);
    t28 = (t22 + 4);
    t29 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t29 | t23);
    t30 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t30 | t24);
    xsi_driver_vfirst_trans(t18, 0, 7U);
    t31 = (t0 + 4816);
    *((int *)t31) = 1;

LAB1:    return;
LAB5:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t6);
    *((unsigned int *)t4) = (t9 | t10);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t2) = (t11 | t12);
    goto LAB4;

}

static void Always_35_2(char *t0)
{
    char t4[8];
    char t16[8];
    char t17[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    int t38;

LAB0:    t1 = (t0 + 3984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 4832);
    *((int *)t2) = 1;
    t3 = (t0 + 4016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t5 = (t0 + 1368U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 3U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 3U);

LAB6:    t14 = ((char*)((ng2)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t14, 2);
    if (t15 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t15 == 1)
        goto LAB9;

LAB10:    t3 = ((char*)((ng4)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 2);
    if (t38 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t15 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(38, ng0);

LAB16:    xsi_set_current_line(39, ng0);
    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    memset(t17, 0, 8);
    t18 = (t17 + 4);
    t20 = (t19 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (t21 >> 1);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t20);
    t24 = (t23 >> 1);
    *((unsigned int *)t18) = t24;
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 127U);
    t26 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t26 & 127U);
    t27 = (t0 + 1048U);
    t28 = *((char **)t27);
    memset(t29, 0, 8);
    t27 = (t29 + 4);
    t30 = (t28 + 4);
    t31 = *((unsigned int *)t28);
    t32 = (t31 >> 7);
    t33 = (t32 & 1);
    *((unsigned int *)t29) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 >> 7);
    t36 = (t35 & 1);
    *((unsigned int *)t27) = t36;
    xsi_vlogtype_concat(t16, 8, 8, 2U, t29, 1, t17, 7);
    t37 = (t0 + 2408);
    xsi_vlogvar_assign_value(t37, t16, 0, 0, 8);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t17, 0, 8);
    t2 = (t17 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 1);
    *((unsigned int *)t17) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 1);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t12 & 255U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 255U);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    memset(t29, 0, 8);
    t6 = (t29 + 4);
    t14 = (t7 + 4);
    t21 = *((unsigned int *)t7);
    t22 = (t21 >> 0);
    t23 = (t22 & 1);
    *((unsigned int *)t29) = t23;
    t24 = *((unsigned int *)t14);
    t25 = (t24 >> 0);
    t26 = (t25 & 1);
    *((unsigned int *)t6) = t26;
    xsi_vlogtype_concat(t16, 9, 9, 2U, t29, 1, t17, 8);
    t18 = (t0 + 2568);
    xsi_vlogvar_assign_value(t18, t16, 0, 0, 9);
    goto LAB15;

LAB9:    goto LAB7;

LAB11:    xsi_set_current_line(42, ng0);

LAB17:    xsi_set_current_line(43, ng0);
    t5 = (t0 + 1848U);
    t6 = *((char **)t5);
    memset(t17, 0, 8);
    t5 = (t17 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 1);
    *((unsigned int *)t17) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 1);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t12 & 127U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 127U);
    t14 = (t0 + 1848U);
    t18 = *((char **)t14);
    memset(t29, 0, 8);
    t14 = (t29 + 4);
    t19 = (t18 + 4);
    t21 = *((unsigned int *)t18);
    t22 = (t21 >> 7);
    t23 = (t22 & 1);
    *((unsigned int *)t29) = t23;
    t24 = *((unsigned int *)t19);
    t25 = (t24 >> 7);
    t26 = (t25 & 1);
    *((unsigned int *)t14) = t26;
    xsi_vlogtype_concat(t16, 8, 8, 2U, t29, 1, t17, 7);
    t20 = (t0 + 2408);
    xsi_vlogvar_assign_value(t20, t16, 0, 0, 8);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t17, 0, 8);
    t2 = (t17 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 1);
    *((unsigned int *)t17) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 1);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t12 & 255U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 255U);
    t6 = (t0 + 1848U);
    t7 = *((char **)t6);
    memset(t29, 0, 8);
    t6 = (t29 + 4);
    t14 = (t7 + 4);
    t21 = *((unsigned int *)t7);
    t22 = (t21 >> 0);
    t23 = (t22 & 1);
    *((unsigned int *)t29) = t23;
    t24 = *((unsigned int *)t14);
    t25 = (t24 >> 0);
    t26 = (t25 & 1);
    *((unsigned int *)t6) = t26;
    xsi_vlogtype_concat(t16, 9, 9, 2U, t29, 1, t17, 8);
    t18 = (t0 + 2568);
    xsi_vlogvar_assign_value(t18, t16, 0, 0, 9);
    goto LAB15;

LAB13:    xsi_set_current_line(46, ng0);

LAB18:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 2008U);
    t5 = *((char **)t3);
    memset(t17, 0, 8);
    t3 = (t17 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 1);
    *((unsigned int *)t17) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 1);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t12 & 127U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 127U);
    t7 = (t0 + 2008U);
    t14 = *((char **)t7);
    memset(t29, 0, 8);
    t7 = (t29 + 4);
    t18 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    t22 = (t21 >> 7);
    t23 = (t22 & 1);
    *((unsigned int *)t29) = t23;
    t24 = *((unsigned int *)t18);
    t25 = (t24 >> 7);
    t26 = (t25 & 1);
    *((unsigned int *)t7) = t26;
    xsi_vlogtype_concat(t16, 8, 8, 2U, t29, 1, t17, 7);
    t19 = (t0 + 2408);
    xsi_vlogvar_assign_value(t19, t16, 0, 0, 8);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t17, 0, 8);
    t2 = (t17 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 1);
    *((unsigned int *)t17) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 1);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t12 & 255U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 255U);
    t6 = (t0 + 2008U);
    t7 = *((char **)t6);
    memset(t29, 0, 8);
    t6 = (t29 + 4);
    t14 = (t7 + 4);
    t21 = *((unsigned int *)t7);
    t22 = (t21 >> 0);
    t23 = (t22 & 1);
    *((unsigned int *)t29) = t23;
    t24 = *((unsigned int *)t14);
    t25 = (t24 >> 0);
    t26 = (t25 & 1);
    *((unsigned int *)t6) = t26;
    xsi_vlogtype_concat(t16, 9, 9, 2U, t29, 1, t17, 8);
    t18 = (t0 + 2568);
    xsi_vlogvar_assign_value(t18, t16, 0, 0, 9);
    goto LAB15;

}

static void Cont_53_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5072);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 4848);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_54_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5136);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 511U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 8);
    t18 = (t0 + 4864);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000003343275274_1144213856_init()
{
	static char *pe[] = {(void *)NetDecl_32_0,(void *)NetDecl_33_1,(void *)Always_35_2,(void *)Cont_53_3,(void *)Cont_54_4};
	xsi_register_didat("work_m_00000000003343275274_1144213856", "isim/ALUtest_isim_beh.exe.sim/work/m_00000000003343275274_1144213856.didat");
	xsi_register_executes(pe);
}
