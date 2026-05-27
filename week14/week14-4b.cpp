//week14-4b.cpp SOIT108_ADVANCE_009B
# include <stdio.h>
int main()
{
    int N;
    scanf("%d",&N);
    int a=N/1000;
    int b=N/100%10;D
    int c=N/10%10;
    int d=N%10;
    if(a==d&&b==c) printf("YES\n");
    else printf("NO\n");
}
