#! /bin/sh

set -e

git clone "https://github.com/zkrew-red/svg-path-editor.git" .svg-path-editor-main
cd .svg-path-editor-main
pnpm install
pnpm run build-prod
git checkout gh-pages
rm -rf *.ico *.html *.js *.css *.txt assets
mv dist/pathedit/* .
git add --all
git commit -m "Refreshed gh-pages from main"
git show --stat

# read -p "Confirm publication? [yn] " -r
# if [[ $REPLY =~ ^[Yy]$ ]]
# then
    echo
    git push origin gh-pages

# fi
# echo

cd ..
rm -rf .svg-path-editor-main
