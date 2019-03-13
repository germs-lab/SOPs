#usage:
#bash get_blast_database.sh "nr" "Apr072017"

blastdb=$1
current=$2

mkdir nr_"$current"
cd nr_"$current"

mkdir db FASTA
cd db
wget ftp://ftp.ncbi.nlm.nih.gov/blast/db/"$blastdb".*.gz

cd ../FASTA
wget ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/"$blastdb".gz
python ~/repos/code/tiedje-scripts/create-descr.py $blastdb.gz "$blastdb"_"$current"_desc.txt

