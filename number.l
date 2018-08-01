%{
	int n=0,m=0;
%}
%%
[0-9] n++;
[.] return;
%%
int main()
{
	FILE *fp;
	char file[10];
	printf("enter filename : ");
	scanf("%s",file);
	fp=fopen(file,"r");
	yyin=fp;
	yylex();
	printf("total numbers : %d",n);
	return 0;
}
	int yywrap()
{
	return 1;
}



