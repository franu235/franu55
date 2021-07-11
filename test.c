#include <stdio.h>

int my_name();
int my_age();
int verify_age();

int main()
{
  int a;
  printf("hello world");
  my_name();
  a = my_age();
  printf("my age is:%d",a);
  verify_age(a);
  return(0);
}

int my_name()
{
  printf("suraj dhiman");
}

int my_age()
{
  int age;
  printf("enter age:");
  scanf("%d",&age);
  return age;
}

int verify_age(int a)
{
  if(a >= 18)
  {
    printf("adult");
  }
  else
  {
    printf("minnor");
  }
}
