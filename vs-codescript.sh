#!/bin/bash
EXTENSIONS=(
  HookyQR.beautify
  Zignd.html-css-class-completion
  abusaidm.html-snippets
  dbankier.vscode-instant-markdown
  donjayamanne.python
  dustinsanders.an-old-hope-theme-vscode
  gerane.Theme-Brogrammer
  lukehoban.Go
  mauve.terraform
  ms-vscode.PowerShell
  wcwhitehead.bootstrap-3-snippets
  Pendrica.Chef
  TwentyChung.go
  bialikover.theme-seti
  donjayamanne.python
  dougdoan.theme-argonaut
  dustinsanders.an-old-hope-theme-vscode
  gerane.Theme-3024Night
  gerane.Theme-Brogrammer
  jdinhlife.theme-gruvbox-dark-medium
  ms-vscode.csharp
  ms-vscode.PowerShell
  oderwat.indent-rainbow
  qinjia.view-in-browser
  rubbersheep.gi
  tht13.python
)

for VARIANT in "code" \
               "code-insiders"
do
  if hash $VARIANT 2>/dev/null; then
    echo "Installing extensions for $VARIANT"
    for EXTENSION in ${EXTENSIONS[@]}
    do
      $VARIANT --install-extension $EXTENSION
    done
  fi
done