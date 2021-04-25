Create a directory named Headers to keep the precompiled header for `stdc++.h`. Open any C++ file in Geany, go to `Build` -> `Set Build Commands` and copy these flags.
<ol>
<li>Compile (Ctrl + S): <code>g++ -std=c++17 -include stdc++.h -I /home/shivang/Projects/C++/Headers  -Wshadow -Wall -o "%e" "%f" -O2 -Wno-unused-result</code> </li>
<li>Build (F9): <code>g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG</code></li>
<li>Execute(F11): <code>"./%e"</code></li>
<li>Execute with Testcase: <code>time "./%e" < in.txt</code></li>
</ol>
