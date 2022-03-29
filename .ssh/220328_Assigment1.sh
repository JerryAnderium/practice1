#1
mkdir node1
mkdir node1/node11
mkdir node1/node11/node111
mkdir node1/node12
mkdir node1/node13 
mkdir node1/node13/node131
mkdir node1/node13/node132
mkdir node1/node13/node132/node1321
mkdir node2
mkdir node2/node21
mkdir node2/node22
mkdir node2/node22/node221
mkdir node2/node22/node222
mkdir node2/node22/node222/node2221
mkdir node2/node22/node223
mkdir node2/node22/node223/node2231
mkdir node3
mkdir node3/node31
mkdir node3/node31/node311
mkdir node3/node31/node311/node3111
mkdir node3/node31/node311/node3112
mkdir node3/node31/node311/node3113
mkdir node3/node31/node312
mkdir node3/node31/node313
mkdir node3/node31/node313/node3131
mkdir node3/node31/node313/node3132
mkdir node3/node31/node313/node3133
#2
cd node1/node11/node111
wget https://www.gutenberg.org/cache/epub/64317/pg64317.txt
cd ~
cd node1/node12
wget https://www.gutenberg.org/files/11/11-0.txt
cd ~
cd node1/node13/node132/node1321
wget https://www.gutenberg.org/files/1661/1661-0.txt
cd ~
cd node2/node22/node222/node2221
wget https://www.gutenberg.org/files/76/76-0.txt
cd ~
cd node3/node31/node313/node3133
wget https://www.gutenberg.org/files/5200/5200-0.txt
cd ~
cd node3/node31/node313/node3132
wget https://www.gutenberg.org/files/135/135-0.txt
cd ~
#3
mv node1/node11/node111/pg64317.txt node1/node11/node111/great_gatsby.txt
mv node1/node12/11-0.txt node1/node12/alice_in_wonderland.txt
mv node1/node13/node132/node1321/1661-0.txt node1/node13/node132/node1321/sherlock_holmes.txt
mv node2/node22/node222/node2221/76-0.txt node2/node22/node222/node2221/huckleberry_finn.txt
mv node3/node31/node313/node3133/5200-0.txt node3/node31/node313/node3133/metamorphosis.txt
mv node3/node31/node313/node3132/135-0.txt node3/node31/node313/node3132/les_miserables.txt
#4
cp node1/node11/node111/great_gatsby.txt node1/node11/great_gatsby.txt
cp node1/node12/alice_in_wonderland.txt node1/node13/node131/alice_in_wonderland.txt
cp node1/node13/node132/node1321/sherlock_holmes.txt node1/sherlock_holmes.txt
cp node2/node22/node222/node2221/huckleberry_finn.txt node2/node22/node223/node2231/huckleberry_finn.txt
cp node3/node31/node313/node3133/metamorphosis.txt node2/metamorphosis.txt
cp node3/node31/node313/node3132/les_miserables.txt node1/node13/node132/node1321/les_miserables.txt
#5
rm node1/node11/node111/great_gatsby.txt
rm node1/node12/alice_in_wonderland.txt
rm node1/node13/node132/node1321/sherlock_holmes.txt
rm node2/node22/node222/node2221/huckleberry_finn.txt
rm node3/node31/node313/node3133/metamorphosis.txt
rm node3/node31/node313/node3132/les_miserables.txt
# 6
chmod -R u=rwx node1
chmod -R og=r node1
chmod -R 400 node2
chmod -R og=r node3
chmod -R u=rw node3
# 7
mkdir wordcount
touch wordcount/money.txt
touch wordcount/strawberry.txt
touch wordcount/fields.txt
touch wordcount/black.txt
touch wordcount/dog.txt
touch wordcount/smooth.txt
touch wordcount/criminal.txt
chmod -R 700 node2
chmod -R 700 node3
find node1 node2 node3 -name '*.txt' -exec grep -n 'money' {} + >> wordcount/money.txt
find node1 node2 node3  -name '*.txt' -exec grep -o 'money' {} + | wc -l >> wordcount/money.txt
find node1 node2 node3  -name '*.txt' -exec grep -n 'strawberry' {} + >> wordcount/strawberry.txt
find node1 node2 node3  -name '*.txt' -exec grep -o 'strawberry' {} + | wc -l >> wordcount/strawberry.txt
find node1 node2 node3  -name '*.txt' -exec grep -n 'fields' {} + >> wordcount/fields.txt
find node1 node2 node3  -name '*.txt' -exec grep -o 'fields' {} + | wc -l >> wordcount/fields.txt
find node1 node2 node3  -name '*.txt' -exec grep -n 'black' {} + >> wordcount/black.txt
find node1 node2 node3  -name '*.txt' -exec grep -o 'black' {} + | wc -l >> wordcount/black.txt
find node1 node2 node3  -name '*.txt' -exec grep -n 'dog' {} + >> wordcount/dog.txt
find node1 node2 node3  -name '*.txt' -exec grep -o 'dog' {} + | wc -l >> wordcount/dog.txt
find node1 node2 node3  -name '*.txt' -exec grep -n 'smooth' {} + >> wordcount/smooth.txt
find node1 node2 node3  -name '*.txt' -exec grep -o 'smooth' {} + | wc -l >> wordcount/smooth.txt
find node1 node2 node3  -name '*.txt' -exec grep -n 'criminal' {} + >> wordcount/criminal.txt
find node1 node2 node3  -name '*.txt' -exec grep -o 'criminal' {} + | wc -l >> wordcount/criminal.txt
# 8
find node1 node2 node3 wordcount -name '*.txt' -exec tar -czvf texts.tar.gz {} \;
chmod -R 400 node2
chmod -R og=r node3
chmod -R u=rw node3