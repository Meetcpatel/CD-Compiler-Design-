%{
	#include<stdio.h>
	int word=0,c_letters=0,s_letters=0,lines=0,sp1_char=0,total=0,num=0;
%}

%%
	[\n] {word++;lines++;}
	[\t''] words++;
	[a-z] s_letters++;
	[A-Z] c_letters++;
	[0-9] num++;
	//sp1_char++;
%%	

main(void){
	yyin=fopen("myfile.txt","r");
	yylex();
	printf("This File Contains... ");
	printf("\n\t%d Lines ", lines);
	printf("\n\t%d Words ", word);
	printf("\n\t%d small Letters ", s_letters);
	printf("\n\t%d Capital Letters ", c_letters);
	printf("\n\t%d Digits ", num);
	printf("\n\t%d Sprcial Characters ", sp1_char);
	}
int yywrap(){
	return 1;
}
