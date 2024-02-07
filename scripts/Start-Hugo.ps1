<#

 This file simply runs the site locally.

 On the other hand, the production build and deployment happens 
 like this.

 1. Push to *GitHub*.
 2. That triggers build and deployment with *CloudFlare* pages.

CloudFlare very simply builds with this command:

    hugo

Make sure to set the CloudFlare HUGO_VERSION = 0.122.0

#>

git submodule init
git submodule update

choco upgrade hugo --version 0.122.0

Start-Process "http://localhost:1313/";

hugo server --buildDrafts --source $PSScriptRoot\..\my-hugo-blog;
