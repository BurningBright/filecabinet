echo ---------------------------------lower
sed -n '/[[:lower:]]/p' $1
echo ---------------------------------upper
sed -n '/[[:upper:]]/p' $1
echo ---------------------------------alpha
sed -n '/[[:alpha:]]/p' $1
echo ---------------------------------alnum
sed -n '/[[:alnum:]]/p' $1
echo ---------------------------------blank
sed -n '/[[:blank:]]/p' $1
echo ---------------------------------digit
sed -n '/[[:digit:]]/p' $1
echo ---------------------------------print
sed -n '/[[:print:]]/p' $1
echo ---------------------------------punct
sed -n '/[[:punct:]]/p' $1
echo ---------------------------------space
sed -n '/[[:space:]]/p' $1
echo ---------------------------------spcial 1
gawk --re-interval '/^[0-9]+[[:alpha:]]{1,}$/' $1
echo ---------------------------------spcial 2
gawk --re-interval '/[2-9][0-9]{2}(-|\.)[0-9]{3}\1[0-9]{4}/' $1

#(?'Open'\()[2-9][0-9]{2}(?'-Open'\))\s?[0-9]{3}-[0-9]{4}(?(Open)(?!))