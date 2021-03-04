Open any C++ file in Geany, go to `Build` -> `Set Build Commands` and copy these flags.  
Compile (Ctrl + S): `g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -O2 -Wno-unused-result`  
Build (F9): `g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG`  
Execute(F11): `"./%e"1  
Execute with Testcase: `time "./%e" < in.txt`
