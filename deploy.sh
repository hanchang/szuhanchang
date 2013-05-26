wget --convert-links --recursive --level=inf --no-host-directories --no-remove-listing --html-extension --directory-prefix=site http://localhost:4567
#sed -i 's|http://szuhanchang.herokuapp.com/bucs/cs\([0-9]\+\)|/bucs/cs\1|g' coursework.html
sed -i 's|bucs/cs\([0-9]\+\).1.html|/bucs/cs\1|g' coursework.html
