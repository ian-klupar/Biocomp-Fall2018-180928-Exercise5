# Script outputs statistics based on input csv file
# bash fullScript.sh "File of interest"

echo "Highest Earner:"
cat "$1" | cut -d ',' -f 1,2,4 | grep -v "gender" | sed 's/\,/\ /g'| sort -k 3n | tail -n 1
echo "----------------------"
echo "Lowest Earner:" 
cat "$1" | cut -d ',' -f 1,2,4 | grep -v "gender" | sed 's/\,/\ /g'| sort -k 3n | head -n 1
echo "----------------------"
echo "Number of Women in Top 10:"
cat "$1" | cut -d ',' -f 1,2,4 | grep -v "gender" | sed 's/\,/\ /g'| sort -k 3n | tail -n 10 | grep -c "female"
echo "----------------------"
echo "Highest Earner:"
cat "$1" | cut -d ',' -f 1,2,4 | grep -v "gender" | sed 's/\,/\ /g'| sort -k 3n | tail -n 1
echo "----------------------"
echo "Lowest Earner:" 
cat "$1" | cut -d ',' -f 1,2,4 | grep -v "gender" | sed 's/\,/\ /g'| sort -k 3n | head -n 1
echo "----------------------"
echo "Number of Women in Top 10:"
cat "$1" | cut -d ',' -f 1,2,4 | grep -v "gender" | sed 's/\,/\ /g'| sort -k 3n | tail -n 10 | grep -c "female"
echo "----------------------"
echo "Wage difference with college education:"
#val1 = '$(cat "$1" | cut -d , -f 3,4 | grep 12, | sort -k3 -n | head -n 1 | cut -d , -f 2)'
#val2 = '$(cat "$1" | cut -d , -f 3,4 | grep 16, | sort -k3 -n | head -n 1 | cut -d , -f 2)'
#echo "$val1 - $val2" | bc

echo "$(cat "$1" | cut -d , -f 3,4 | grep 16, | sort -k3 -n | head -n 1 | cut -d , -f 2)-$(cat "$1" | cut -d , -f 3,4 | grep 12, | sort -k3 -n | head -n 1 | cut -d , -f 2)" | bc


