printf "\n"
printf "U L T I M A T E  G - I N D E X  T H E M E  B U I L D E R"
printf "\n"
printf "\n"
printf "\n"
printf "Please Ensure Correct CDN in the .env"
printf "\n"
printf "Starting the Script Now."
printf "\n"
printf "Currently Building for Following Themes:"
themes=("carnation" "curious-blue" "emerald" "ice-cold" "konifer" "netflix-red" "kournikova" "mona-lisa" "persian-rose" "purple-heart" "purple-mountains-majesty" "salmon" "selective-yellow" "shamrock" "witch-haze")
i=0
for theme in ${themes[@]}; do
  i=i+1
  printf "${i}. ${theme}"
done
for theme in ${themes[@]}; do
  printf "\n"
  rm -rf outputs/*
  export VUE_APP_THEME=${theme}
  printf "Currently Building for ${theme}"
  printf "\n"
  yarn build
  cp -r dist/. outputs/${theme}/.
done
printf "\n"
printf "Built Assets for Every Theme. Please find the Themes in Outputs Folder"
