Start-Process "http://localhost:1313/";

hugo server --buildDrafts --source $PSScriptRoot\..\my-hugo-blog;
