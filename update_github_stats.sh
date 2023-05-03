#!/bin/bash

update_apis_github(){
  git init
  git pull

  rm "activity_stats.svg"
  curl "https://github-readme-stats.vercel.app/api?username=R-Rothrock&show_icons=true&theme=react" > "activity_stats.svg"
  git add "activity_stats.svg"

  rm "language_stats.svg"
  curl "https://github-readme-stats-sigma-five.vercel.app/api/top-langs/?username=R-Rothrock&theme=react&line_height=40" > "language_stats.svg"
  git add "language_stats.svg"

  git commit -m "Updated stats"
  git push
}

update_apis_github
