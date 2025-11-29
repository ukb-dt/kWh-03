# 1. Delete the lame HTML page
rm -f index.html

# 2. Convert your real index.md into a beautiful readable page automatically
cat > README.md index.md > temp.md
mv temp.md README.md
# (GitHub Pages will now display README.md perfectly)

# 3. Keep .nojekyll so nothing gets mangled
touch .nojekyll

# 4. Commit the change
git add README.md .nojekyll
git commit -m "feat: show full conversation as homepage – this is the real twin log"

# 5. Push
git push -f origin dhayawukana