%{
#include<stdio.h>
int count=0;
%}

%%
[aAeEiIoOuU] { count++; }
\n {
    printf("Number of Vowels = %d\n", count);
    return 0;
}
. ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a String:\n");
    yylex();
    return 0;
}