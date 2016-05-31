echo "Get ready, we're pushing to gh-pages!"

rm -rf _site
jekyll build
cd _site
echo 'www.ipos.me' > CNAME
git init
git config user.name "Automated-build"
git config user.email "info@iposolutions.org"
git add .
git commit -m "Auto deploy to gh-pages"
git push --force git@github.com:iposolutions/iposolutions.github.io.git master
