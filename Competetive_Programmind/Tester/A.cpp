#include <stdio.h>
#include <stdlib.h>

void merge(int *a,int *b,int m,int n){
	int *ans = (int*)malloc((m+n) * sizeof(int));
	int *ptr1 = a,*ptr2 = b,*ptr3 = ans;
	*(a+m) = 1e9 + 50;
	*(b+n) = 1e9 + 50;
	for(int i = 0; i < m+n; i++){
		if(*ptr2 < *ptr1){
			bool flag = true;
			for(int *itr = ans; itr != ptr3;itr++){
				if(*itr == *ptr2){
					flag = false;
					break;
				}
			}
			if(flag){
				*ptr3 = *ptr2;
				ptr3++;
			}
			ptr2++;
		}
		else{
			bool flag = true;
			for(int *itr = ans; itr != ptr3;itr++){
				if(*itr == *ptr1){
					flag = false;
					break;
				}
			}
			if(flag){
				*ptr3 = *ptr1;
				ptr3++;
			}
			ptr1++;
		}
		
	}
	
	printf("%ld\n",ptr3 - ans);
	for(int *itr = ans;itr != ptr3;itr++){
		printf("%d ",*itr);
	}
	printf("\n");
}


int main(){
	int m,n;
	scanf("%d%d",&m,&n);
	int *a = (int*)malloc((m+1) * sizeof(int)), *b = (int*)malloc((n+1) * sizeof(int));
	for(int i = 0, *itr = a; i < m; i++,itr++){
		scanf("%d",itr);
	}
	for(int i = 0, *itr = b; i < n; i++,itr++){
		scanf("%d",itr);
	}
	
	return 0;
}
