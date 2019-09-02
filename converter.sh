for FILE in *.fastq
do
	# the command between $() is for removing .fastq file extension from filename	
	awk 'FNR%4' $FILE | awk 'FNR%3' | sed 's/@/>/g' > $(basename $FILE. fastq).fasta
done


