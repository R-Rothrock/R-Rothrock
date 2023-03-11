#!/bin/bash
# just like the other one, but for the stat API

update_stats_api_github(){
  git init
  git pull

  rm -f "activity_stats.svg"

  curl "https://github-readme-stats.vercel.app/api?username=R-Rothrock&show_icons=true&theme=dark" > "activity_stats.svg"

  git add "activity_stats.svg"
  git commit -m "Updated \`activity_stats.svg\`"
}

update_stats_api_github
