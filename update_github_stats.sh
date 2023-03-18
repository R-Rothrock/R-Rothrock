#!/bin/bash
# just like the other one, but for the stat API

update_apis_github(){
  git init
  git pull

  rm -f "activity_stats.svg"
  curl "https://github-readme-stats.vercel.app/api?username=R-Rothrock&show_icons=true&theme=dark" > "activity_stats.svg"
  git add "activity_stats.svg"

  rm -f "language_stats.svg"
  curl "https://github-readme-stats-sigma-five.vercel.app/api/top-langs/?username=R-Rothrock&theme=react&line_height=40&hide=makefile,javascript,html,rust" > "language_stats.svg"
  git add "language_stats.svg"

  git commit -m "Updated \`activity_stats.svg\`"
  git push
}

update_apis_github
