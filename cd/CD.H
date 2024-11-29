#include	"SYSCFG.h";
#include	"delay.h"
#include	"init.h"
#include	"run.h"

typedef unsigned char unchar;
typedef unsigned int  unint;
typedef unsigned long unlong;

#define	TMPE_MAX 3000
#define	TMPE_HF 4000

#define DC_MAX_U1	1768//56
#define DC_MAX_U2	2155//69.8 2205  67
#define DC_MAX_U3	2335//72.7 2315 - 72

//硬件上有个10A的保护点11A左右 当BO引脚为高时
//#define DC_MAX_I 850//10
//#define DC_MAX_I_HC 840//10

extern unint pwmi,pwmu;
extern unint wd,dci,dcu;
extern unchar gl_st;
extern unchar dcfj_st;
extern unchar wderr_st;
extern unchar dczx_st;
extern unchar dcmax_st;
extern unchar acerr_st;
extern unint upsd;


