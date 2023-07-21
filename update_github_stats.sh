#!/bin/bash

update_apis_github(){
  git pull

  rm "language_stats.svg"
  curl "https://github-readme-stats-sigma-five.vercel.app/api/top-langs/?username=R-Rothrock&theme=react&line_height=40" > "language_stats.svg"

  git add *

  git commit -m "Updated stats"
  git push
}

update_apis_github
