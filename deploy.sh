wget --convert-links --recursive --level=inf --no-host-directories --no-remove-listing --html-extension http://szuhanchang.herokuapp.com
#sed -i 's|http://szuhanchang.herokuapp.com/bucs/cs\([0-9]\+\)|/bucs/cs\1|g' coursework.html
sed -i 's|bucs/cs\([0-9]\+\).1.html|/bucs/cs\1|g' coursework.html
