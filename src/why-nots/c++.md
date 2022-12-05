# C++

There is no installation needed.
Make sure you have XCode command line tools installed

```
$ c++ --version            // Version of C++ installed
```

## Compiling files

To be able to compile files from your terminal you can add the following alias in your bash profile.

```
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
```

Then you can run all cpp file directly using cppcompile main.cpp and it will use C++11 so no errors in the case of using vectors, auto, sets etc.