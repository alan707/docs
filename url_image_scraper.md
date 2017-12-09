# Website Scraping 101
If you want to recursively copy a bunch of images from a URL (website) where the images are stored as `/IMG_0232.jpg`, here's how to do it.

## Open up a terminal and type the following:
```
$ mkdir ~/website_pics
$ cd ~/website_pics
$ wget -nd -r -l 2 -A jpeg,jpg,png -e robots=off http://example.com/images/
```
Here is what `wget` is doing:
- `-r -l 2` will recursively go down to the second depth level, e.g. `images/IMG_0001.jpg` 
- `-nd` all files will get saved to the current directory
- `-A jpeg,jpg,png` will only select those files.  You can add other extensions or limit to one e.g. `gif`
- `-e robots=off` will ignore robots.txt file (by default wget always checks that file)

Source: https://stackoverflow.com/a/7843316
