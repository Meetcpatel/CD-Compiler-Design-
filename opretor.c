#include<stdio.h>
#include<conio.h>
#include<string.h>
int main()
{
	char s[100],ch;
	int len,i,flag=0;
	printf("Enter String :");
	gets(s);
	
	len=strlen(s);
	
	for(i=0;i<=len;i++)
	{
		ch=s[i];
		if(ch=='+' || ch=='-' || ch=='/' || ch=='*' || ch=='%')
		{
			puts(s);
			printf("%c is oprator ",ch);
			flag =1;
		}
		
		
	}
	if(flag=0)
	{
		printf("there is no opretor ");
	}
	
	getch();
}
