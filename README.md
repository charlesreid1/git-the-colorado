# Git the Colorado

*(Currently a work in progress!)*

Inspired by [@yangshun's](https://github.com/yangshun) [smrt-git](https://github.com/yangshun/smrt-git) repository, 
a git-based visualization of Singapore train lines, which in turn was inspired by [MetroGit](https://github.com/vbarbaresi/MetroGit), 
a visualization of the Paris metro in the form of a git commit history.

Also (mainly) inspired by Wisconsin-based cartographer Daniel Huffman, whose 
[river system subway maps](https://somethingaboutmaps.wordpress.com/river-maps/)
seem to accomplish the impossible - turning some of the wildest, uncontrolled natural systems
into an understandable whole in a single glance. Huffman maintains a blog called
[Something About Maps](https://somethingaboutmaps.wordpress.com/) that's well worth your time.

## About the Colorado

The Colorado River is an incredible river system that powers its way from the massive Colorado Rockies 
down to the Gulf of Mexico. All along the way, it is a life-creating force, sustaining plants and animals
and creating ecosystems in environments ranging from mountain forests to low deserts.

Oh yeah, it also carved out this little thing called **THE GRAND CANYON**.

Daniel Huffman has kindly provided a high-resolution PDF of this map 
[on his website](https://somethingaboutmaps.files.wordpress.com/2011/11/colorado-distribution.pdf).

## Visualization

Visualization in Github network view: [https://github.com/charlesreid1/git-the-colorado/network](https://github.com/charlesreid1/git-the-colorado/network)

(Insert image here...)

Visualization in GitKraken:

(Insert image here...)

Visualization with `gitk`: 

(Insert image here...)

Visualization with `git log --all --graph`: 

(Insert image here...)

## Generating the Commits

(Credit goes to [@yangshun](https://github.com/yangshun) for the ingenious approach.)

When the script `doit.sh` is run, it will:
* Wipe out any commits in the current git repository
* Add itself and `README.md` to the master branch
* Generate branches and commits necessary to recreate the structure of the Colorado River system

```
$ ./doit.sh
```

Pass the argument "push" to push to a remote repository:

```
$ ./doit.sh push
```

## Contributing

All credit goes to [@yangshun](https://github.com/yangshun) 
for the original idea. If you find problems or inconsistencies
please send a pull request or open an issue. 

Thanks!

