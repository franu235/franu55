#include <stdio.h> 

int* input();
int printa(int arr[]) ;
void search();

int arr[10];

int main() 
{ 
   
  int *arr1;
  arr1=input();

  printa(arr1);
}

int* input() 
{ 
 int i;
 printf("Enter 10 elements:"); 
 for(i=0;i<10;++i)
 {
   scanf("%d",&arr[i]); 
 }
 return arr;
}

int printa(int arr[]) 
{ 
  int i;
 for(i=0;i<10;++i)
 {
   printf("%d",arr[i]); 
 }

}

void search()
{  
 int i,arr[10],sum=0; 
 printf("Enter 10 elements:"); 
 for(i=0;i<10;++i)
 {
   scanf("%d",&arr[i]); 
 }
 for(i=0;i<10;++i) 
 {       
   sum+=i;
    printf("Sum of numbers is:%d",sum); 
 } 
} 