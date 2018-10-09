#task 1
#!/bin/bash
cd /Desktop/Advanced-Bioinf
mkdir bash_HandsOn
cd /bash_handsOn
mkdir bin
mkdir input
mkdir output
mkdir logs
mkdir trash
ls -l
mkdir trash2
cp -r trash trash2
mv trash trash1
rm -rf trash2

#task 2
wget https://raw.githubusercontent.com/dgarrimar/teaching/master/uvic/AdvBI_201$
mv sample-groups.tsv input.tsv
mv input.tsv /input
cd input
ln -s ../input/input.tsv ../trash1
cd ..
cd trash1
mv input.tsv input_symlink
cd ..
cd input
cp input.tsv ../trash1
cd ..
cd trash1
mv input.tsv input_copy
touch IAmLearningSomeBash
cd ..
rm -rf trash1

#task 3
cd Desktop/Advanced-Bioinf/bash_HandsOn/output/
mkdir task_3
cd ../input
head input.tsv -n 100 > ../output/task_3/top100.tsv
tail input.tsv -n 50 > ../output/task_3/last100.tsv
cd ../output/task_3
wc top100.tsv
wc last50.tsv
paste top100.tsv last100.tsv > 150together.tsv
cut -f1 top100.tsv > 1aColumna.tsv
paste 1aColumna.tsv  1aColumna.tsv > 150Firstcx2.tsv

#task 4
cd Desktop/Advanced_Bioinf/bash_handsOn/output
mkdir task_4
cd ../input
cut -f2 input.tsv | sort -r | grep -v Adipose | grep -v Artery | uniq > unique.tissues2.txt
cut -f3 input.tsv | sort -r | grep -v Adipose | grep -v Artery | uniq > unique.tissues3.txt
 #task5
cd bash_HandsOn/output/task_5
wget https://github.com/dgarrimar/teaching/raw/master/uvic/AdvBI_2018/data/hands-on/bash/scripts.tar.gz
gunzip scripts.tar.gz
tar -xf scripts.tar
mv usage.sh ../../bin
nano ../../bin/usage.sh
PATH="$PATH:/home/bash_HandsOn/bin"
cd ../../bin
chmod +x bin/usage.sh
./usage.sh Hola Adios
#task6
cd bash_HandsOn/output/task_6
wget https://github.com/dgarrimar/teaching/raw/master/uvic/AdvBI_2018/data/hands-on/bash/unknown.samples.tsv
sort unknown.samples.tsv > unknown.samples_sorted.tsv
sort ../../input/input.tsv > ../../input/input_sorted.tsv
join -t $'\t' -1 1 -2 1 ../../input/input_sorted.tsv unknown.samples_sorted.tsv > joint.tsv
sort -r join.tsv | sed 's/_/ /g' join.tsv > join.tsv
#task 7
script=$1
argu=$2
script=$(echo $script | tr a-z A-Z)
argu=$(echo $argu | tr a-z A-Z)
if [$argu != " "]; then
        counter=0
        while [ $counter -lt 5]; do
                echo "The script $script has received the argument $argu"
                let counter=counter+1
        done
else
        echo "the script $script has recived the argumet $argu"
fi


