rm -rf site
wget --convert-links --recursive --level=inf --no-host-directories --no-remove-listing --html-extension --directory-prefix=site http://localhost:4567
# This replaces the .html extension with just the directory since on the shared host there is no HTML file.
sed -i 's|bucs/cs\([0-9]\+\).html|/bucs/cs\1|g' site/coursework.html

# The BUCS content is located directly on the shared host and is not part of the szuhanchang repository.
rm -rf site/bucs

rsync -r --progress site/* pillarofeden@pillarofeden.com:webapps/szuhanchang
