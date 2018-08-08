%{
#include<stdio.h>
int i=0;
%}
%%

[a-z]+ {++i;} {printf("\n %d. %s\n",i,yytext);}
%%
int main()
{
FILE *fp;
char file[10];
printf("Enter file name:");
//scanf("%s",file);
fp=fopen("index.txt","r");
yyin=fp;
yylex();
return 0;

}
int yywrap()

{
return 1;
}

