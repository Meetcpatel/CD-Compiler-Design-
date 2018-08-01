%{
int word=0,sentence=0,digit=0;
%}

%%
[a-zA-Z] {word++;}
[0-9] {digit++;}
[\n] {sentence++;} 
[.] return;
%%

int main()
{
FILE *fp;
char file[50];
printf("Enter file name:");
scanf("%s",file);
    fp=fopen(file,"r");
	yyin=fp;
	yylex();
	printf("word is %d\n",word);
	printf("digit is %d\n",digit);
	printf("sentence is %s",sentence);
    return 0;
}
int yywrap()
{
return 1;
}
