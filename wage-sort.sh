#Outputs the gender, years of experience and wage of the highest earner, lowest earner and number of females in the top 10 highest earners
#Usage: bash wage-sort.sh "Filename"

echo "Highest Earner:"
cat "$1" | cut -d ',' -f 1,2,4 | grep -v "gender" | sed 's/\,/\ /g'| sort -k 3n | tail -n 1
echo "----------------------"
echo "Lowest Earner:" 
cat "$1" | cut -d ',' -f 1,2,4 | grep -v "gender" | sed 's/\,/\ /g'| sort -k 3n | head -n 1
echo "----------------------"
echo "Number of Women in Top 10:"
cat "$1" | cut -d ',' -f 1,2,4 | grep -v "gender" | sed 's/\,/\ /g'| sort -k 3n | tail -n 10 | grep -c "female"

