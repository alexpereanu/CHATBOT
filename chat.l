%{
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>
 #include "y.tab.h"
 void yyeror(char* s);
 
int yylex();
%} 


%%

"salut"		{return SALUT;}
"cum te numesti ?" {return INTREBARE1; }
"alex"		{return ALEX; }
"andreea"	{return ANDREEA; }
"anca"		{return ANCA; }
"marius"	{return MARIUS; }
"george"	{return GEORGE;}
"mihai"		{return MIHAI;}
"claudiu"	{return CLAUDIU;}
"ioana" 	{return IOANA;}
"maria"		{return MARIA;}
"data de astazi" {return DATA1; }
"ziua in care ne aflam" {return DATA2; }
"in ce data suntem" {return DATA3; }
"as vrea sa stiu"	{return ASVREA;}
"ma intereseaza"    {return MAINTERESEAZA;}
"da"				{return DA;}
"nu"				{return NU;}
"cat de mare ?"		{return INTREBARENUMAR;}
"in ce interval ?"	{return INCEINTERVAL;}
"gata"				{return GATA;}
"ok"				{return OK;}
"bun"				{return BUN;}
"am inmultit"		{return AMINMULTIT;}
"l-am inmultit"		{return LAMINMULTIT;}
"am adunat"			{return AMADUNAT;}
"am impartit"		{return AMIMPARTIT;}
"am scazut"			{return AMSCAZUT;}
"ai dreptate"		{return AIDREPTATE;}
"te pricepi"		{return TEPRICEPI;}
"in ce an s-a nascut " 	{return INCEANSANASCUT;}
"bill gates ?"		{return BILLGATES;}
"alex pereanu ?"		{return ALEXPEREANU;}
"marius murea ?" 		{return MARIUSMUREA;}
"windows"			{return WINDOWS;}
"ce ai auzit despre " {return CEAIAUZITDESPRE;}
"ce parere ai despre " {return CEPAREREAIDESPRE;}
"ai auzit de " 		{return AIAUZITDE;}
"ai auzit despre "	{return AIAUZITDESPRE;}
"ce crezi despre "	{return CECREZIDESPRE;}
"bitcoin ?"			{return BTC;}
" derivat"			{return DERIVAT;}
"sin(x)"			{return SIN;}
"cos(x)"			{return COS;}
"tg(x)"				{return TGX;}
"ctg(x)"			{return CTGX;}
"cateva orase din judetul " {return CATEVORASE;}
"m-am gandit"		{return MAMGANDIT;}
"orase "				{return ORASE;}
"din judetul "		{return DINJUDETUL;}
"colocviu LFT"		{return COLOCVIULFT;}
"mod"				{return MODULO;}
"bravo"				{return BRAVO;}



[*+-/x^]				{return yytext[0];}
[0-9]|[1-9][0-9]*	{
			 yylval.ivalue = atoi(yytext);
			 return INTEGER;
			}

[a-zA-Z]*  {
			yylval.svalue = yytext;
			return IDENTIFIER;			
			}
[ \t]	;
.		printf("Imi pare rau. Nu inteleg intrebarea !\n");

%%

int yywrap(void){
	
return 1;
}

