#!/bin/bash
# update_language_api_github.sh
# updates SVG on my Github account with one from API
# this is so the API isn't overloaded, cause I'm
# not the one whose paying for the hosting /:

update_language_api(){
  git init
  git pull

  rm -f "language_stats.svg"

  curl "https://github-readme-stats-sigma-five.vercel.app/api/top-langs/?username=R-Rothrock&theme=react&line_height=40&hide=makefile,javascript,html&layout=compact" > "language_stats.svg"

  git add "language_stats.svg"

  git commit -m "Update \`language_stats.svg\`"
  git push
}

update_language_api
