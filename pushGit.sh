#!/bin/bash


git config --local user.email "yusuf.luai01@gmail.com"
git config --local user.name "Yusuf Luai"

echo "[+] Enter your commit message:"
read message
git add .
git commit -m "${message}"
if [ -n "$(git status --porcelain)" ]
then

  echo "[+] Git Status: Clean"
else
  git status
  echo "[+] Pushing data to github..."
  git branch -M main
  git push -u origin main
  sleep 3
  echo "[+] Push done."
fi
