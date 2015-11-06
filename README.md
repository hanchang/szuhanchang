# [www.szuhanchang.com](http://www.szuhanchang.com)

Professional Portfolio and Programming Blog of Szu Han Chang

## Deployment
Basically, I take the lazy way out and use wget to generate static HTML.

First run the site locally via `bundle exec ruby app.rb`.

Then run `sh deploy.sh` which uses wget and spiders the site into static HTML.

Finally, rsync the site directory to the host:
`rsync -r site/ pillarofeden@pillarofeden.com:webapps/szuhanchang`

Note: The `coursework/` data is all on the host.
