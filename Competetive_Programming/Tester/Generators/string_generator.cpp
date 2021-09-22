#include <bits/stdc++.h>
using namespace std;

int TESTCASES,MAX_ARRAY_SIZE,ALPHABET_SIZE;
bool FLAG,PRINT_SIZE;

void generate_array(){
	int n = (FLAG ? MAX_ARRAY_SIZE : 1 + rand() % MAX_ARRAY_SIZE);
	if(PRINT_SIZE)cout << n << endl;
	for(int i = 0; i < n; i++){
		cout << (char)('A' + rand() % ALPHABET_SIZE);
	}
	cout << endl;
}

int main(){
	srand(time(NULL));
	cout << "-------------------------------------\n";
	cout << "This program generates a random string\n";
	cout << "-------------------------------------\n";
	cout << "Enter the number of testcases" << endl;
	cin >> TESTCASES;
	cout << endl << "Enter the string size" << endl;
	cin >> MAX_ARRAY_SIZE;
	cout << endl << "Enter the alphabet size" << endl;
	cin >> ALPHABET_SIZE;
	cout << endl << "Should all strings be of maximum size ? (1 for yes and 0 for no)" << endl;
	cin >> FLAG;
	cout << endl << "Print size of string in tests ? (1 for yes and 0 for no)" << endl;
	cin >> PRINT_SIZE;
	freopen ("0_Test_case", "w", stdout);
	for(int i = 0; i < TESTCASES; i++){
		generate_array();
	}
	fclose(stdout);
	return 0;
}

