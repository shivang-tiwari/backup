//हर हर महादेव
#include <bits/stdc++.h>
using namespace std;
int main(){
	
	string filepath;
	cin >> filepath;
	std::ifstream myfile; 
	myfile.open(filepath);
	
	
	string s;
	getline(myfile,s);
	string cur;
	bool ok = false;
	string res;
	bool mila = false;
	for(char c : s){
		if(c == '>'){
			mila = true;
			ok = true;
		}
		else if(c == '<'){
			if(!cur.empty()){
				res += cur;
				res += '\n';
			}
			ok = false;
			cur.clear();
		}
		else if(ok){
			cur += c;
		}
	}
	if(mila){
		std::ofstream myfile_out; 
		myfile_out.open(filepath);
		myfile_out << res;
	}
	return 0;
}
