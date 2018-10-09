wget https://github.com/dgarrimar/teaching/raw/master/uvic/AdvBI_2018/data/exercises/bash/TAIR9_mRNA.bed
nano TAIR9_mRNA.bed #per veure el contingut
tar -tf "archiu" #per veure el contingut d'un archiu comprimit
gunzip  "archiu" #per descomprimirlo
sort TAIR9_mRNA.bed > TAIR9_mRNA_sorted.bed
wc <(grep + <(grep chr1 TAIR9_mRNA.bed)) #surten 4366 chr1 amb "+" en el strand
#obtenim la llista del tamany dels primers 10 exons i utilitzant el sort ordenem per el tamany.
awk '{print$NF}' <(sed 's/,/ /g' <(head -n 10 <(awk '{print$11}' TAIR_mRNA.bed)))
uniq <(sort -nr <(awk '{print$NF}' <(sed 's/,/ /g' <(head -n 10 <(awk '{print$11}' TAIR_mRNA.bed)))))
#to get the 10 longest exons del cromosoma 1:
grep chr1 TAIR9_mRNA.bed | awk '{print$11}' | tr , "\n" | sort -nr | head
#
awk '{print$4"\t"$10}' TAIR_mRNA.bed | sort -nr -k2,2 | uniq | head 

