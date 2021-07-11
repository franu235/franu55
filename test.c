#include <stdio.h>
int my_name();
int my_age();
int main()
{
  int a;
  printf("hello world");
  my_name();
  a = my_age();
  printf("my age is:%d",a);
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
