
#include "s6e2cc.h"                     // Device header
#include "system_s6e2cc.h"              // Keil::Device:Startup
#include "arm_math.h"                   // ARM::CMSIS:DSP


int main()
{
	int16_t x=2, y=3, z;
	z=__sadd16(x,y);
	return 0;
}