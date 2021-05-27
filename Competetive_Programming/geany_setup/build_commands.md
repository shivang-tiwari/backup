Create a directory named Headers to keep the precompiled header for `stdc++.h`. Open any C++ file in Geany, go to `Build` -> `Set Build Commands` and copy these flags.
<ol>
<li>Compile with precompiled header(Ctrl + S): <code>g++ -std=c++17 -include stdc++.h -I /home/shivang/Projects/C++/Headers -Wshadow -Wall -o "%e" "%f" -O2 -Wno-unused-result -D bhole_ka_saaya</code> </li>
<li>Compile without precompiled header: <code>g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -O2 -Wno-unused-result -D bhole_ka_saaya</code> </li>
<li>Build (F9): <code>g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG</code></li>
<li>Execute with Testcase (F5): <code>gnome-terminal -- /home/shivang/Projects/Commands/run_samples.sh "%e"</code></li>
<li>Make Testcase (F6): <code>/home/shivang/Projects/Commands/make_samples.sh "%e"</code></li>
<li>Execute(F11): <code>"./%e"</code></li>
</ol>
