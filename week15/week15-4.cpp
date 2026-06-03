//week15-4.cpp SOIT106_ADVANCE_011
# include <stdio.h>
# include <string.h>
int main()
{
    char s[100];
    scanf("%s",s);
    int N=strlen(s);
    //for (int i=0;s[i]!=0;i++){
    for (int i=0;i<N;i++){
        if(i!=0&&(N-i)%3==0) printf(",");
        printf("%c",s[i]);
    }
}
