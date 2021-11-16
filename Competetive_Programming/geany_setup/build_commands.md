Create a directory named Headers to keep the precompiled header for `stdc++.h`. Open any C++ file in Geany, go to `Build` -> `Set Build Commands` and copy these flags.
<ol>
<li>Compile(Ctrl + S): <code>/home/shivang/Projects/Commands/cp_compile.sh "%e" "%f"</code> </li>
<li>Submit (Shift + F9): <code>gnome-terminal --window-with-profile cp_submit -- /home/shivang/Projects/Commands/submit.sh "%e"</code></li>
<li>Execute with Testcase (F5): <code>gnome-terminal -- /home/shivang/Projects/Commands/run_samples.sh "%e"</code></li>
<li>Secure Overflow (F5): <code>/home/shivang/Projects/Commands/secure.sh "%f"</code></li>
<li>Make Testcase (F6): <code>/home/shivang/Projects/Commands/make_samples.sh "%e"</code></li>
<li>Execute(F11): <code>"./%e"</code></li>
<li>Compile without precompiled header: <code>g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -O2 -Wno-unused-result</code> </li>
</ol>
