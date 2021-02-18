%{

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

void yyerror(char* s);

int yylex();

%}

%union {

	int ivalue;
	char* svalue;
}

%token SALUT
%token INTREBARE1
%token ALEX 
%token ANDREEA
%token ANCA
%token MARIUS
%token GEORGE
%token MIHAI
%token CLAUDIU
%token IOANA
%token MARIA
%token DATA1
%token DATA2
%token DATA3
%token ASVREA
%token MAINTERESEAZA
%token DA
%token INTREBARENUMAR
%token GATA
%token OK
%token BUN
%token AMINMULTIT
%token AMADUNAT
%token AMIMPARTIT
%token AMSCAZUT
%token NU
%token INCEINTERVAL
%token TEPRICEPI
%token INCEANSANASCUT
%token BILLGATES
%token ALEXPEREANU
%token MARIUSMUREA
%token WINDOWS
%token AIDREPTATE
%token CEAIAUZITDESPRE
%token CEPAREREAIDESPRE
%token CECREZIDESPRE
%token AIAUZITDE
%token BTC
%token AIAUZITDESPRE
%token <ivalue> INTEGER
%token DERIVAT
%token SIN 
%token COS
%token TGX
%token CTGX
%token LAMINMULTIT
%token CATEVORASE
%token <svalue> IDENTIFIER
%token MAMGANDIT;
%token ORASE;
%token DINJUDETUL;
%token COLOCVIULFT;
%token MODULO;
%token BRAVO;



%%


program: /*empty */
	    assignment
	    | program assignment
	    | numeParticipant
	    | program numeParticipant
	    | intrebareData
	    | program intrebareData
	    | numarQuestion
	    | program numarQuestion
	    | afirmativIntrebareData
	    | program afirmativIntrebareData
	    | program numarQuestion
	    | raspunsQuestion
	    | program raspunsQuestion
	    | questiInCeAn
	    | program questiInCeAn
	    | questionBTC
	    | program questionBTC
	    | mathCalculator
	    | program mathCalculator
	    | derivare
	    | program derivare
	    | derivareFunctiiTrig
	    | program derivareFunctiiTrig
	    | intrebareOrase
	    | program intrebareOrase


	    
assignment: SALUT {printf("Haide sa facem cunostinta. Cum te numesti ?");}
	   	| INTREBARE1 {printf("Salut! Eu sunt BOT Ryzen. Cu ce te pot ajuta ?");}
	   	
numeParticipant: ALEX {printf("Salut Alex! Eu sunt BOT Ryzen. Cu ce te pot ajuta ?");}
		| ANDREEA {printf("Salut Andreea! Eu sunt BOT Ryzen. Cu ce te pot ajuta ?");}
		| ANCA {printf("Salut Anca! Eu sunt BOT Ryzen. Cu ce te pot ajuta ?");}
		| MARIUS {printf("Salut Marius! Eu sunt BOT Ryzen. Cu ce te pot ajuta ?");}
		| GEORGE {printf("Salut George! Eu sunt BOT Ryzen. Cu ce te pot ajuta ?");}
		| MIHAI {printf("Salut Mihai! Eu sunt BOT Ryzen. Cu ce te pot ajuta ?");}
		| CLAUDIU {printf("Salut Claudiu! Eu sunt BOT Ryzen. Cu ce te pot ajuta ?");}
		| IOANA {printf("Salut Ioana! Eu sunt BOT Ryzen. Cu ce te pot ajuta ?");}
		| MARIA {printf("Salut Maria! Eu sunt BOT Ryzen. Cu ce te pot ajuta ?");}

intrebareData: DATA1 {printf("Astazi este 5 iunie 2020. Luni ai examen. Corect ?");}			
			| DATA2 {printf("Astazi este 5 iunie 2020. Luni ai examen. Corect ?");}	
			| DATA3 {printf("Astazi este 5 iunie 2020. Luni ai examen. Corect ?");}	
			| ASVREA DATA1 {printf("Astazi este 5 iunie 2020. Luni ai examen. Corect ?");}
			| ASVREA DATA2 {printf("Astazi este 5 iunie 2020. Luni ai examen. Corect ?");}
			| ASVREA DATA3 {printf("Astazi este 5 iunie 2020. Luni ai examen. Corect ?");}
			| MAINTERESEAZA DATA1 {printf("Astazi este 5 iunie 2020. Luni ai examen. Corect ?");}
			| MAINTERESEAZA DATA2 {printf("Astazi este 5 iunie 2020. Luni ai examen. Corect ?");}
			| MAINTERESEAZA DATA3 {printf("Astazi este 5 iunie 2020. Luni ai examen. Corect ?");}
	   ;
afirmativIntrebareData: DA {printf("Am avut dreptate. Hai sa facem un truc. Gandeste-te la un numar.");}; 
					   | NU {printf("Mai uita-te o data pe orar.");} 
					   | AIDREPTATE {printf("Stiam eu ! Hai sa facem un truc. Gandeste-te la un numar.");}
					   ;


numarQuestion: INTREBARENUMAR {printf("Oricat de mare.");}
			 | INCEINTERVAL {printf("Nu este vreo limita de interval.");}
			 | GATA {printf("Bun. Nu trebuie sa-l introduci aici. Eu il voi ghici.\n"); 
					printf("Inmulteste-l cu 3.");}
			 | MAMGANDIT {printf("Bun. Nu trebuie sa-l introduci aici. Eu il voi ghici.\n");
					printf("Inmulteste-l cu 3.");}
			 | OK  {printf("Inmulteste-l cu 3.");}
			 | BUN {printf("Inmulteste-l cu 3.");}
			 | AMINMULTIT {printf("Bun ! Aduna 6 la rezultat.");}
			 | LAMINMULTIT {printf("Bun ! Aduna 6 la rezultat.");}
			 | AMADUNAT {printf("Super. Acum imparte rezultatul la 3.");}
			 | AMIMPARTIT {printf("Super. Acum scade numarul intitial.");}
			 | AMSCAZUT {printf("Rzultatul este 2. ");}
			 ;

raspunsQuestion: TEPRICEPI {printf("Multumesc. Pune-mi intrebari !");};
				| BRAVO {printf("Multumesc. Pune-mi intrebari !");};

questiInCeAn: INCEANSANASCUT BILLGATES {printf("Bill s-a nascut in 1955");}
			| INCEANSANASCUT ALEXPEREANU {printf("Alex s-a nascut in 1998");}
			| ASVREA INCEANSANASCUT ALEXPEREANU {printf("Alex s-a nascut in 1998");}
			| INCEANSANASCUT MARIUSMUREA {printf("Nu stiu nimic despre el !");}
			| ASVREA INCEANSANASCUT MARIUSMUREA {printf("Nu stiu nimic despre el !");}
			| ASVREA INCEANSANASCUT BILLGATES {printf("Bill s-a nascut in 1955");}
			| MAINTERESEAZA INCEANSANASCUT BILLGATES {printf("Bill s-a nascut in 1955");}
			| MAINTERESEAZA INCEANSANASCUT ALEXPEREANU {printf("Alex s-a nascut in 1998");}
			;

questionBTC: CEAIAUZITDESPRE BTC {answerBTC();}
			| CEPAREREAIDESPRE BTC {answerBTC();}
			| AIAUZITDE BTC {answerBTC();}
			| CECREZIDESPRE BTC {answerBTC();}
			| AIAUZITDESPRE BTC {answerBTC();}
			| CEAIAUZITDESPRE BTC {answerBTC();}
			| CEPAREREAIDESPRE COLOCVIULFT {answerColocviu();}
			| CECREZIDESPRE COLOCVIULFT {answerColocviu();}
			| CEAIAUZITDESPRE COLOCVIULFT {answerColocviu();}
			;

mathCalculator:INTEGER '+' INTEGER {printf("ahahaha. %d",($1+$3));}
			| INTEGER '-' INTEGER {printf("ahahaha. %d",($1-$3));}
			| INTEGER '*' INTEGER {printf("ahahaha. %d",($1*$3));}
			| INTEGER '/' INTEGER {printf("ahahaha. %d",($1/$3));}
			| INTEGER MODULO INTEGER {printf("ahahaha. %d", ($1 % $3));} 
			;

derivare: INTEGER 'x' '^' INTEGER DERIVAT {

			if(($4 != 2) && ($4 != 1)){

		 	printf("%dx^%d", ($1*$4), ($4-1));

			}

			if($4 == 2){

				printf("%dx",($1*2));

			}
			else if ($4 == 1)
				{
					printf("%d",$1);
				}	
		}		
		;

derivareFunctiiTrig: SIN DERIVAT{
				printf("-cos(x)");
			}
			| COS DERIVAT{
				printf("-sin(x)");
			}	
			| TGX DERIVAT{
				printf("1/cos^2(x)");
			}			
			| CTGX DERIVAT{
				printf("-1/sin^2(x)");
			}
			;
				
intrebareOrase: ASVREA CATEVORASE IDENTIFIER {
					char* x = $3;
					orase(x);
				}
				| ORASE DINJUDETUL IDENTIFIER {
					char* x = $3;
					orase(x);
				}
				;

%%
 void answerBTC(){
 	printf("BTC este o moneda virtuala care a valorat 10.000$ la un moment dat");
 }

 void answerColocviu(){
 	printf("A fost mortal !");
 }

void orase(char* judet){

	int validare = 0;

	if(strcmp(judet,"alba") == 0){
		printf("cugir, aiud");
		validare++;
	}

	if(strcmp(judet,"cluj") == 0){
		printf("turda, cluj-napoca");
		validare++;
	}

	if(strcmp(judet,"severin") == 0){
		printf("resita, caransebes");
		validare++;
	}

	if(strcmp(judet,"timis") == 0){
		printf("lugoj, giroc");
		validare++;
	}

	if(strcmp(judet,"constanta") == 0){
		printf("costinesti, eforie nord");
		validare++;
	}

	if(validare == 0){
		printf("Nu cunosc orase din judetul %s", judet);
	}

}

int main(void){

	return yyparse();
}

void yyerror(char* s){

	fprintf(stderr, "%s\n",s);
}

