#Out puts years of school and minimum wage earned
#Usage: bash school-sort.sh "Filename"

cat "$1" | cut -d "," -f 3,4 | sed 's/\,/\ /g'|sort -k 1n

