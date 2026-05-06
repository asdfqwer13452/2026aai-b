//weekl1-2b.cpp SOIT106 ADVANCE _001
#include <stdio.h>
int main()
{
    int N;
    scanf("%d", &N);
    int ans=0;//partB
    while (N > 0){
        ans-ans*10+N%10;//partB
        N = N / 10;
    }
    printf("%d+%d %d\n", N, ans, ans+N);
}
