#include<stdio.h>

int main()
{
  
  while(1)
  {
    printf("Hello World!\n");
    for(volatile long long i = 0; i < 100000; i++);
  }
  
  return 0;
}
