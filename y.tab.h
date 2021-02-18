/* A Bison parser, made by GNU Bison 3.4.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2019 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    SALUT = 258,
    INTREBARE1 = 259,
    ALEX = 260,
    ANDREEA = 261,
    ANCA = 262,
    MARIUS = 263,
    GEORGE = 264,
    MIHAI = 265,
    CLAUDIU = 266,
    IOANA = 267,
    MARIA = 268,
    DATA1 = 269,
    DATA2 = 270,
    DATA3 = 271,
    ASVREA = 272,
    MAINTERESEAZA = 273,
    DA = 274,
    INTREBARENUMAR = 275,
    GATA = 276,
    OK = 277,
    BUN = 278,
    AMINMULTIT = 279,
    AMADUNAT = 280,
    AMIMPARTIT = 281,
    AMSCAZUT = 282,
    NU = 283,
    INCEINTERVAL = 284,
    TEPRICEPI = 285,
    INCEANSANASCUT = 286,
    BILLGATES = 287,
    ALEXPEREANU = 288,
    MARIUSMUREA = 289,
    WINDOWS = 290,
    AIDREPTATE = 291,
    CEAIAUZITDESPRE = 292,
    CEPAREREAIDESPRE = 293,
    CECREZIDESPRE = 294,
    AIAUZITDE = 295,
    BTC = 296,
    AIAUZITDESPRE = 297,
    INTEGER = 298,
    DERIVAT = 299,
    SIN = 300,
    COS = 301,
    TGX = 302,
    CTGX = 303,
    LAMINMULTIT = 304,
    CATEVORASE = 305,
    IDENTIFIER = 306,
    MAMGANDIT = 307,
    ORASE = 308,
    DINJUDETUL = 309,
    COLOCVIULFT = 310,
    MODULO = 311
  };
#endif
/* Tokens.  */
#define SALUT 258
#define INTREBARE1 259
#define ALEX 260
#define ANDREEA 261
#define ANCA 262
#define MARIUS 263
#define GEORGE 264
#define MIHAI 265
#define CLAUDIU 266
#define IOANA 267
#define MARIA 268
#define DATA1 269
#define DATA2 270
#define DATA3 271
#define ASVREA 272
#define MAINTERESEAZA 273
#define DA 274
#define INTREBARENUMAR 275
#define GATA 276
#define OK 277
#define BUN 278
#define AMINMULTIT 279
#define AMADUNAT 280
#define AMIMPARTIT 281
#define AMSCAZUT 282
#define NU 283
#define INCEINTERVAL 284
#define TEPRICEPI 285
#define INCEANSANASCUT 286
#define BILLGATES 287
#define ALEXPEREANU 288
#define MARIUSMUREA 289
#define WINDOWS 290
#define AIDREPTATE 291
#define CEAIAUZITDESPRE 292
#define CEPAREREAIDESPRE 293
#define CECREZIDESPRE 294
#define AIAUZITDE 295
#define BTC 296
#define AIAUZITDESPRE 297
#define INTEGER 298
#define DERIVAT 299
#define SIN 300
#define COS 301
#define TGX 302
#define CTGX 303
#define LAMINMULTIT 304
#define CATEVORASE 305
#define IDENTIFIER 306
#define MAMGANDIT 307
#define ORASE 308
#define DINJUDETUL 309
#define COLOCVIULFT 310
#define MODULO 311

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 14 "chat.y"


	int ivalue;
	char* svalue;

#line 175 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
