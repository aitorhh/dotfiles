ctags -f tags.cpp `find . -name "*.cpp" -o -name "*.h"`
ctags -f tags.pde --langmap=c++:.pde `find . -name "*.pde"`
ctags -f tags.ino --langmap=c++:.ino `find . -name "*.ino"`
cat tags.cpp tags.pde tags.ino > tags
sort tags -o tags
rm -f tags.*

