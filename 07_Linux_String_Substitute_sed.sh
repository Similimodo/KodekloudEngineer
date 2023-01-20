#Linux String Substitute (sed)

ssh steve@stapp02

#removed the line that has the word "code"
 sed -e '/code/d' BSD.txt > /home/BSD_DELETE.txt

#changed the word "and" to "is"
 sed -e 's/and/is/g' BSD.txt > /home/BSD_REPLACE.txt
