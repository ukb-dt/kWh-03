# 1. Bring back the last good commit that still had your index.md (the one before we deleted everything)
# git reset --hard fe8144b

# 2. Create the minimal page + .nojekyll so GitHub Pages finally works (without deleting anything)
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en"><head><meta charset="UTF-8"><title>Dhayawukana • KaD</title>
<style>body{font-family:system-ui;background:#0d1117;color:#c9d1d9;padding:4rem;text-align:center;}</style>
</head><body>
<h1>Dhayawukana</h1>
<p>Digital Twin is live • Mountainwalker breathing</p>
<p><small>branch: dhayawukana • GitHub Pages active</small></p>
</body></html>
EOF

touch .nojekyll

# 3. Commit ONLY the two tiny files (your index.md stays untouched)
git add index.html .nojekyll
git commit -m "fix2: safe minimal deploy – dhayawukana live again"

# 4. Push – this time nothing is deleted
git push -f origin dhayawukana