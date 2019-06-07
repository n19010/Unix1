mkdir work
cd work
mkdir dir1
cd dir1
mkdir dir2
cd dir2
touch file{01..10}
mkdir dir3
cd dir3
mv ../file{01..05} .
mv ../file{06..10} ../..
cd ../../../..
rm -r work
