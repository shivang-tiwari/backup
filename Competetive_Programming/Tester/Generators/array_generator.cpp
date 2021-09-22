#include <bits/stdc++.h>
using namespace std;

int TESTCASES,MAX_ARRAY_SIZE,MAX_ENTRY_SIZE;
bool FLAG;

void generate_array(){
	int n = (FLAG ? MAX_ARRAY_SIZE : 1 + rand() % MAX_ARRAY_SIZE);
	cout << n << endl;
	for(int i = 0; i < n; i++){
		cout << 1 + rand() % MAX_ENTRY_SIZE << ' ';
	}
	cout << endl;
}

int main(){
	srand(time(NULL));
	cout << "-------------------------------------\n";
	cout << "This program generates a random array\n";
	cout << "-------------------------------------\n";
	cout << "Enter the number of testcases" << endl;
	cin >> TESTCASES;
	cout << endl << "Enter the maximum number of elements in the array" << endl;
	cin >> MAX_ARRAY_SIZE;
	cout << endl << "Enter the largest size any element of the array can have" << endl;
	cin >> MAX_ENTRY_SIZE;
	cout << endl << "Should all arrays have the maximum number of elements ? (1 for yes and 0 for no)" << endl;
	cin >> FLAG;
	freopen ("0_Test_case", "w", stdout);
	for(int i = 0; i < TESTCASES; i++){
		generate_array();
	}
	fclose(stdout);
	return 0;
}

