# [www.szuhanchang.com](http://www.szuhanchang.com)

Professional Portfolio and Programming Blog of Szu Han Chang

## Deployment
Basically, I take the lazy way out and use wget to generate static HTML.

The site is first hosted on Heroku as a Sinatra app.  
Then I run `wget` which spiders the site as static HTML.

To kick off this process, run the `deploy.sh` script on the host.

Note: The `coursework/` data is all on the host.
