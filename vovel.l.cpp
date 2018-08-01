%{
int vovel=o,consonants=0;
%}

%%
[aeiou] {vovel++;}
[b-df-hj-np-tv-z] {consonants++;}

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
	printf("Vovels is %d\n",vovels);
	printf("consonanta  is %d\n",consonants);

    return 0;
}
int yywrap()
{
return 1;
}
