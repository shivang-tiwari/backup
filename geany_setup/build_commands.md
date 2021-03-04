Open any C++ file in Geany, go to `Build` -> `Set Build Commands` and copy these flags.
<ol>
<li>Compile (Ctrl + S): `g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -O2 -Wno-unused-result`</li>
<li>Build (F9): `g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG`</li>
<li>Execute(F11): `"./%e"1</li>
<li>Execute with Testcase: `time "./%e" < in.txt`</li>
</ol>
