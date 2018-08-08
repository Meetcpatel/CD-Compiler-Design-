%{
#include<stdio.h>
int i=0;
%}
%%
[/*]+[a-zA-Z ]+[*/] { fprintf(yyout, "%s",yytext);}

[//]+[a-zA-Z ]+ {fprintf(yyout, "%s ",yytext);}
%%
int main()
{
FILE *fp,*fpp;
char file[10];
printf("Enter file name:");
scanf("%s",file);
fp=fopen(file,"r");
yyout=fpp;
fpp=fopen("out.txt","w");
yyin=fp;
yylex();
return 0;

}
int yywrap()

{
return 1;
}

