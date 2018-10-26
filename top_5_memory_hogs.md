# Which Are The Top 5 Largest Files - Linux

Run:
```
sudo find -type f -exec du -Sh {} + | sort -rh | head -n 5
```

e.g. if you want to see the top 10 largest files, just replace `-n 5` with `-n 10`
