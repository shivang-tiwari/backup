// हर हर महादेव
using namespace std;
#include <bits/stdc++.h>
#define ll long long int
#define ld long double
#define uid(a, b) uniform_int_distribution<int>(a, b)(rng)
mt19937 rng((unsigned int) chrono::steady_clock::now().time_since_epoch().count());
#ifdef shivang_ka_laptop
	#define debug(...) cerr << "[" << #__VA_ARGS__ << "]:", debug_out(__VA_ARGS__);
	#define booga cerr << "booga" << endl;
#else
	#define debug(...) 42;
	#define booga 9;
#endif

template <typename T> std::ostream& operator<<(std::ostream& stream, const vector<T>& vec){ for(size_t i = 0; i < vec.size(); i++){stream << vec[i];if(i != vec.size() - 1)stream << ' ';}; return stream; }
template <typename T> std::istream& operator>>(std::istream& stream, vector<T>& vec) { for(T &x : vec)stream >> x;return stream; }
template <typename T,typename U> std::ostream& operator<<(std::ostream& stream, const pair<T,U>& pr){ stream << pr.first << ' ' << pr.second; return stream; }
template <typename T,typename U> std::istream& operator>>(std::istream& stream, pair<T,U>& pr){ stream >> pr.first >> pr.second; return stream; }
template <typename T, typename U> void operator+=(vector<T>& vec, const U value) { for(T &x : vec)x += value; }
template <typename T, typename U> void operator-=(vector<T>& vec, const U value) { for(T &x : vec)x -= value; }
template <typename T, typename U> void operator*=(vector<T>& vec, const U value) { for(T &x : vec)x *= value; }
template <typename T, typename U> void operator/=(vector<T>& vec, const U value) { for(T &x : vec)x /= value; }
template <typename T> void operator++(vector<T>& vec) { vec += 1; }
template <typename T> void operator++(vector<T>& vec,int) { vec += 1; }
template <typename T> void operator--(vector<T>& vec) { vec -= 1; }
template <typename T> void operator--(vector<T>& vec,int) { vec -= 1; }
template <typename T,typename U, typename V> void operator+=(pair<T,U>& vec, const V value) { vec.first += value;vec.second += value; }
template <typename T,typename U, typename V> void operator-=(pair<T,U>& vec, const V value) { vec.first -= value;vec.second -= value; }
template <typename T,typename U, typename V> void operator*=(pair<T,U>& vec, const V value) { vec.first *= value;vec.second *= value; }
template <typename T,typename U, typename V> void operator/=(pair<T,U>& vec, const V value) { vec.first /= value;vec.second /= value; }
template <typename T,typename U> void operator++(pair<T,U>& vec) { vec += 1; } 
template <typename T,typename U> void operator++(pair<T,U>& vec,int) { vec += 1; } 
template <typename T,typename U> void operator--(pair<T,U>& vec) { vec -= 1; } 
template <typename T,typename U> void operator--(pair<T,U>& vec,int) { vec -= 1; } 

template <typename A, typename B>string to_string(pair<A, B> p);
template <typename A, typename B, typename C>string to_string(tuple<A, B, C> p);
template <typename A, typename B, typename C, typename D>string to_string(tuple<A, B, C, D> p);
string to_string(const string& s) { return '"' + s + '"'; }
string to_string(char c) {string s;s += c;return s; }
string to_string(const char* s) {return to_string((string) s); }
string to_string(bool b) {return (b ? "1" : "0"); }
string to_string(vector<bool> v) {bool first = true;string res = "{";for (int i = 0; i < static_cast<int>(v.size()); i++) {if (!first) {res += ", ";}first = false;res += to_string(v[i]);}res += "}";return res;}
template <size_t N>string to_string(bitset<N> v) {string res = "";for (size_t i = 0; i < N; i++) {res += static_cast<char>('0' + v[i]);}return res;}
template <typename A>string to_string(A v) {bool first = true;string res = "{";for (const auto &x : v) {if (!first) {res += ", ";}first = false;res += to_string(x);}res += "}";return res;}
template <typename A, typename B>string to_string(pair<A, B> p) {return "(" + to_string(p.first) + ", " + to_string(p.second) + ")";}
template <typename A, typename B, typename C>string to_string(tuple<A, B, C> p) {return "(" + to_string(get<0>(p)) + ", " + to_string(get<1>(p)) + ", " + to_string(get<2>(p)) + ")";}
template <typename A, typename B, typename C, typename D>
string to_string(tuple<A, B, C, D> p) {return "(" + to_string(get<0>(p)) + ", " + to_string(get<1>(p)) + ", " + to_string(get<2>(p)) + ", " + to_string(get<3>(p)) + ")";}
template<class T> bool ckmin(T& a, const T& b) { return b < a ? a = b, 1 : 0; }
template<class T> bool ckmax(T& a, const T& b) { return a < b ? a = b, 1 : 0; }

void debug_out() { cerr << endl; } template <typename Head, typename... Tail>void debug_out(Head H, Tail... T) {cerr << " " << to_string(H);debug_out(T...);}
void bharo(int N_N) { return; }template <typename Head, typename... Tail>void bharo(int N_N, Head &H, Tail & ... T) {H.resize(N_N);bharo(N_N,T...);}
void safai() { return; }template <typename Head, typename... Tail>void safai(Head &H, Tail & ... T) {H.clear();safai(T...);}

vector<int> smallest_factor;
vector<bool> prime;
vector<int> primes;
void prep(int maximum = 1e6) {
	maximum = max(maximum, 1);
	smallest_factor.assign(maximum + 1, 0);
	prime.assign(maximum + 1, true);
	prime[0] = prime[1] = false;
	primes = {};
	for(int p = 2; p <= maximum; p++){
		if(prime[p]) {
			smallest_factor[p] = p;
			primes.push_back(p);
			for(ll i = (ll)(p) * p; i <= maximum; i += p){
				if (prime[i]) {
					prime[i] = false;
					smallest_factor[i] = p;
				}
			}
		}
	}
}
// Prime factorizes n in worst case O(sqrt n / log n). Requires having run `sieve` up to at least sqrt(n).
// If we've run `sieve` up to at least n, takes O(log n) time.
vector<pair<ll, int>> prime_factorize(ll n){ // Prime,exponent
	ll sieve_max = (ll)(smallest_factor.size()) - 1;
	assert(1 <= n && n <= sieve_max * sieve_max);
	vector<pair<ll, int>> result;
	if(n <= sieve_max){
		while(n != 1){
			ll p = smallest_factor[n];
			int exponent = 0;
			do{
				n /= p;
				exponent++;
			} while (n % p == 0);
			result.emplace_back(p, exponent);
		}
		return result;
	}
	for(ll p : primes){
		if(p * p > n)
			break;
		if(n % p == 0){
			result.emplace_back(p, 0);
			do{
				n /= p;
				result.back().second++;
			} while (n % p == 0);
		}
	}
	if(n > 1)
		result.emplace_back(n, 1);
	return result;
}

map<int,int> id;

void testcase(){
	int n,q;
	cin >> n >> q;
	vector<int> a(n);
	for(int i = 0; i < n; i++){
		cin >> a[i];
	}
	vector<vector<pair<ll, int>>> facs(n);
	for(int i = 0; i < n; i++){
		facs[i] = prime_factorize(a[i]);
		for(auto [x,y] : facs[i]){
			if(id.find(x) == id.end())id[x] = id.size();
		}
	}
	const int block_size = (int)(500);
	const int blocks = (n + block_size - 1) / block_size;
	vector<vector<vector<int>>> bl(blocks);
	for(int i = 0; i < q; i++){
		int l,r;
		cin >> l >> r;
		l--;r--;
		bl[l / block_size].push_back({l,r,i});
	}
	vector<string> ans(q);
	for(int i = 0; i < blocks; i++){
		if(bl[i].empty())continue;
		sort(bl[i].begin(),bl[i].end(),[&](const auto &v1,const auto &v2){
			return v1[1] < v2[1]; // (v1 < v2) : if true then v1 is before v2
		});
		vector<int> freq(id.size());
		
		int cnt = 0;
		auto change = [&](int x,int val){
			assert(prime[x] && id.find(x) != id.end());
			x = id[x];
			cnt -= !!(freq[x] % 3);
			freq[x] += val;
			cnt += !!(freq[x] % 3);
			assert(freq[x] >= 0);
		};
		int r = bl[i][0][0],l = r;
		for(auto query : bl[i]){
			while(r <= query[1]){
				auto& here = facs[r];
				for(auto p : here){
					change(p.first,p.second);
				}
				r++;
			}
			while(l < query[0]){
				auto& here = facs[l];
				for(auto p : here){
					change(p.first,-p.second);
				}
				l++;
			}
			while(l > query[0]){
				l--;
				auto& here = facs[l];
				for(auto p : here){
					change(p.first,p.second);
				}
			}
			assert(l == query[0] && r == query[1] + 1);
			ans[query[2]] = (cnt == 0 ? "Yes" : "No");
		}
	}
	for(string s : ans)cout << s << '\n';
}

int main(){
	ios::sync_with_stdio(false);
	cin.tie(0);
	int tt = 1;
	prep();
	//cin >> tt;
	while(tt--){
		testcase();
	}
	return (0-0);
}

