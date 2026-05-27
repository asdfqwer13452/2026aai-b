//week14-5b.cpp SOIT108_ADVANCE_009B
# include <stdio.h>
int main()
{
    char s[20];
    scanf("%s",s);

    if(s[0]=='-') printf("%c\n",s[1]);
    else printf("%c\n",s[0]);
}
