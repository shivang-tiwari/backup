#include <bits/stdc++.h>
using namespace std;
#define uid(a, b) uniform_int_distribution<int>(a, b)(rng)
mt19937 rng((unsigned int) chrono::steady_clock::now().time_since_epoch().count());
// Define the number of runs for the test data
// generated
int RUN,MAXNODE;
bool FLAG;
  
// generate random numbers in between l an r
int ran(int l, int r){
    return l + (rng() % (r - l + 1));
}
// Prints edges of tree
// represented by give Prufer code
void printTreeEdges(int prufer[], int m){
	int vertices = m + 2;
	int vertex_set[vertices];
	// Initialize the array of vertices
	for (int i = 0; i < vertices; i++)
		vertex_set[i] = 0;
	// Number of occurrences of vertex in code
	for (int i = 0; i < vertices - 2; i++)
		vertex_set[prufer[i] - 1] += 1;
	int j = 0;
	// Find the smallest label not present in
	// prufer[].
	for (int i = 0; i < vertices - 2; i++){
		for (j = 0; j < vertices; j++){
			if (vertex_set[j] == 0){
				vertex_set[j] = -1;
				cout << (j + 1) << ' ' << prufer[i] << endl;
				vertex_set[prufer[i] - 1]--;
				break;
			}
		}
	}
	j = 0;
	for (int i = 0; i < vertices; i++){
		if (vertex_set[i] == 0 && j == 0){
			cout << (i + 1) << ' ';
			j++;
		}
		else if (vertex_set[i] == 0 && j == 1)
			cout << (i + 1) << endl;
	}
}
// Function to Generate Random Tree
void generateRandomTree(int n){
    int length = n - 2;
    int arr[length];
    for (int i = 0; i < length; i++){
        arr[i] = ran(0, length + 1) + 1;
    }
    printTreeEdges(arr, length);
}
int main(){
	srand(uid(1,1e9));
	cout << "-------------------------------------\n";
	cout << "This program generates a random tree\n";
	cout << "-------------------------------------\n";
	cout << "Enter the number of testcases" << endl;
	cin >> RUN;
	cout << endl << "Enter the maximum number of nodes" << endl;
	cin >> MAXNODE;
	cout << endl << "Should all trees have the maximum number of nodes ? (1 for yes and 0 for no)" << endl;
	cin >> FLAG;
    set<pair<int, int>> container;
    set<pair<int, int>>::iterator it;
  
    freopen ("0_Test_case", "w", stdout);
    cout << RUN << endl;
    for(int tt = 0;tt < RUN;tt++){
		int N = FLAG ? MAXNODE : uid(1,MAXNODE);
		cout << N << endl;
		generateRandomTree(N);
	}
    srand(time(NULL));
    fclose(stdout);
    return(0);
}
