# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

# Buchanan
# Georgia
# ghb23
# cs205_final

#!/bin/bash

#while read -r line; do
#	hpTotal=$6
#done < $FILE

awk 'BEGIN{FS="\t"}
{
if(NR!=1){
hp+=1
hpTotal+=$6
attack+=$7
sum+=1
}
mean1=hpTotal/sum
mean2=attack/sum
}
END {
print "Total Pokemon: "sum
print "Average HP: "mean1
print "Average Attack: "mean2
}' pokemon.dat
