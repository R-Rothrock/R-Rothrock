#!/bin/bash
# update_language_api_github.sh
# updates SVG on my Github account with one from API
# this is so the API isn't overloaded, cause I'm
# not the one whose paying for the hosting /:

update_language_api(){

  git init

  rm -f "languages_used.svg"

  curl "https://github-readme-stats-sigma-five.vercel.app/api/top-langs/?username=R-Rothrock&theme=react&line_height=40&hide=makefile,javascript,html&layout=compact" > languages_used.svg

  git add *

  git commit -m "Update \`README.md\`"
  git push
}

update_language_api
