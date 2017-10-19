#!/bin/bash

# Start from a clean slate of Git
rm -rf .git
git init

git add *
git commit -m 'Add generation script and README'



# ---------------------------
# Git Stuff:
#
# The general process looks like this:
# - Create branches and commit for each location on the branch
# - Do this by making empty commits
# - Merge two or more branches together when you're ready
# - To merge, check out the main branch, then git merge the merging branch

# Merge commands:
GM="git merge" # merge two branches with shared history
GMU="git merge --allow-unrelated-histories" # merge two unrelated branches

# Branch commands:
GB="git branch"

# Checkout commands:
GCO="git checkout" # Check out a branch (prepare to merge)
GCOO="git checkout --orphan" # Check out an orphan branch to start a new branch

# Commit commands
GC="git commit --allow-empty -m" # Commits are always empty



# ---------------------------
# Colorado River Stuff:

# Little Snake branch
echo "CREATING LITTLE SNAKE RIVER"
$GCOO little-snake-river-wy
$GC 'dixon, wy'
$GC 'baggs, wy'

# Yampa branch
echo "CREATING YAMPA RIVER"
$GCOO yampa-river-co
$GC 'steamboat springs, co'
$GC 'hayden, co'
$GC 'craig, co'

# Green River branch
echo "CREATING GREEN RIVER"
$GCOO green-river-wy
$GC 'daniel, wy'
$GC 'la barge, wy'
$GC 'fontenelle, wy'
$GC 'green river, wy'
$GC 'dutch john, ut'

# After baggs, wy and craig, co,
# Little Snake converges with Yampa
echo "MERGING LITTLE SNAKE RIVER WITH YAMPA RIVER"
$GCO yampa-river-co 
$GMU -m='Little Snake River converges with Yampa River' little-snake-river-wy

# After Little Snake converges with Yampa, 
# Yampa converge with Green River
echo "MERGING YAMPA RIVER WITH GREEN RIVER"
$GCO green-river-wy
$GMU -m='Yampa River converges with Green River' yampa-river-co

$GC 'jensen, ut'

$GCOO white-river-co
$GC 'meeker, co'
$GC 'rangely, co'

echo "MERGING WHITE RIVER WITH GREEN RIVER"
$GCO green-river-wy
$GMU -m='White River converges with Green River' white-river-co



# Colorado headwaters
echo "CREATING COLORADO RIVER"
$GCOO colorado-river
$GC 'grand lake, co'
$GC 'granby, co'
$GC 'hot sulphur springs, co'
$GC 'kremmling, co'
$GC 'glenwood springs, co'
$GC 'new castle, co'
$GC 'silt, co'
$GC 'rifle, co'
$GC 'parachute, co'
$GC 'battlement mesa, co'
$GC 'de beque, co'
$GC 'palisade'



echo "CREATING GUNNISON AND TAYLOR RIVER"
$GCOO gunnison-and-taylor-river-co
$GC 'almont, co'
$GC 'gunnison, co'
$GC 'austin, co'
$GC 'delta, co'
$GC 'whitewater, co'

echo "MERGING GUNNISON AND TAYLOR WITH COLORADO"
$GCO colorado-river
$GMU -m='grand junction, co' gunnison-and-taylor-river-co

$GC 'fruita, co'



echo "CREATING DOLORES RIVER"
$GCOO dolores-river-co
$GC 'rico, co'
$GC 'dolores, co'
$GC 'gateway, co'

echo "MERGING DOLORES RIVER WITH COLORADO RIVER"
$GCO colorado-river
$GMU -m='Dolores River merges with Colorado River' dolores-river-co



$GC 'moab, ut'



echo "MERGING GREEN RIVER WITH COLORADO RIVER"
$GMU -m='Green River merges with Colorado River' green-river-wy



echo "CREATING MUDDY RIVER"
$GCOO muddy-river-ut
$GC 'emery, ut'

echo "CREATING DIRTY DEVIL AND FREMONT RIVER"
$GCOO dirty-devil-and-fremont-river-ut
$GC 'loa, ut'
$GC 'lyman, ut'
$GC 'bicknell, ut'
$GC 'torrey, ut'
$GC 'hanksville, ut'

echo "MERGING MUDDY WITH DIRTY DEVIL AND FREMONT RIVER"
$GCO dirty-devil-and-fremont-river-ut
$GMU -m='Muddy River merges with Dirty Devil and Fremont River' muddy-river-ut



echo "MERGING DIRTY DEVIL AND FREMONT RIVER WITH COLORADO RIVER"
$GCO colorado-river
$GMU -m='Dirty Devil and Fremont River merges with Colorado River' dirty-devil-and-fremont-river-ut



echo "CREATING SAN JUAN RIVER"
$GCOO san-juan-river-co
$GC 'pagosa springs, co'
$GC 'arboles, co'
$GC 'bloomfield, nm'

echo "CREATING ANIMAS RIVER"
$GCOO animas-river-co
$GC 'durango, co'
$GC 'aztec, nm'
$GC 'flora vista, nm'



echo "MERGING ANIMAS RIVER WITH SAN JUAN RIVER"
$GCO san-juan-river-co
$GMU -m='farmington, nm' animas-river-co

$GC 'kirtland, nm'
$GC 'shiprock, nm'
$GC 'aneth, ut'
$GC 'montezuma creek, ut'
$GC 'bluff, ut'

echo "CREATING CHINLE RIVER"
$GCOO chinle-river-az
$GC 'chinle, az'
$GC 'many farms, az'
$GC 'rock point, az'

echo "MERGING CHINLE RIVER WITH SAN JUAN RIVER"
$GCO san-juan-river-co
$GMU -m='Chinle River merges with San Juan River' chinle-river-az

$GC 'mexican hat, ut'

echo "MERGING CHINLE RIVER WITH SAN JUAN RIVER"
$GCO colorado-river
$GMU -m='San Juan River merges with Colorado River' san-juan-river-co

$GC 'page, az'



echo "CREATING LITTLE COLORADO RIVER"
$GCOO little-colorado-river-az
$GC 'eagar, az'
$GC 'springerville, az'
$GC 'st. johns, az'

echo "CREATING PUERCO RIVER"
$GCOO puerco-river-nm
$GC 'gallup, nm'
$GC 'sanders, az'

echo "MERGING PUERCO RIVER WITH LITTLE COLORADO RIVER"
$GCO little-colorado-river-az
$GMU -m='Puerco River merges with Little Colorado River' puerco-river-nm

$GC 'holbrook, az'
$GC 'joseph city, az'
$GC 'winslow, az'
$GC 'leupp, az'
$GC 'cameron, az'



echo "MERGING LITTLE COLORADO RIVER WITH COLORADO RIVER"
$GCO colorado-river
$GMU -m='Little Colorado River merges with Colorado River' little-colorado-river-az

$GC 'grand canyon village, az'
$GC 'meadview, az'



echo "CREATING VIRGIN RIVER"
$GCOO virgin-river-ut
$GC 'glendale, ut'
$GC 'orderville, ut'
$GC 'rockville, ut'
$GC 'virgin, ut'
$GC 'la verkin, ut'
$GC 'hurricane, ut'
$GC 'washington, ut'
$GC 'st. george, ut'
$GC 'littlefield, az'
$GC 'mesquite, nv'
$GC 'bunkerville, nv'



echo "CREATING MEADOW VALLEY RIVER"
$GCOO meadow-valley-river-nv
$GC 'panaca, nv'
$GC 'caliente, nv'

echo "CREATING WHITE PAHRANAGAT AND MUDDY RIVER"
$GCOO white-pahranagat-and-muddy-river-nv
$GC 'alamo, nv'

echo "MERGING MEADOW VALLEY RIVER WITH WHITE PAHRANAGAT AND MUDDY RIVER"
$GCO white-pahranagat-and-muddy-river-nv 
$GMU -m='moapa, nv' meadow-valley-river-nv

$GC 'logandale, nv'
$GC 'overton, nv'

echo "MERGING VIRGIN RIVER WITH WHITE PAHRANAGAT AND MUDDY RIVER"
$GCO white-pahranagat-and-muddy-river-nv
$GMU -m='Virgin River merges with White Pahranagat and Muddy River' virgin-river-ut

echo "MERGING WHITE PAHRANAGAT AND MUDDY RIVER WITH COLORADO RIVER"
$GCO colorado-river
$GMU -m='White Pahranagat and Muddy River merges with Colorado River' white-pahranagat-and-muddy-river-nv

$GC 'laughlin, nv'
$GC 'bullhead city, az'
$GC 'mohave valley, az'
$GC 'needles, ca'
$GC 'lake havasu city, az'
$GC 'parker dam'
$GC 'big river, ca'
$GC 'parker, az'
$GC 'blythe, ca'
$GC 'ehrenberg, az'
$GC 'cibola, az'



echo "CREATING GILA RIVER"
$GCOO gila-river-nm
$GC 'gila, nm'
$GC 'cliff, nm'
$GC 'duncan, az'

echo "CREATING SAN SIMON RIVER"
$GCOO san-simon-river-az
$GC 'san simon, az'

echo "MERGING SAN SIMON RIVER WITH GILA RIVER"
$GCO gila-river-nm
$GMU -m='San Simon River merges with Gila River' san-simon-river-az

$GC 'safford, az'
$GC 'thatcher, az'
$GC 'pima, az'



echo "CREATING SAN PEDRO RIVER"
$GCOO san-pedro-river-mexico
$GC 'st. david, az'
$GC 'benson, az'
$GC 'mammoth, az'

echo "MERGING SAN PEDRO RIVER WITH GILA RIVER"
$GCO gila-river-nm
$GMU -m='winkelman, az' san-pedro-river-mexico

$GC 'kearny, az'
$GC 'florence, az'



echo "CREATING SANTA CRUZ RIVER"
$GCOO santa-cruz-river-mexico
$GC 'rio rico, az'
$GC 'tumaccacori, az'
$GC 'carmen, az'
$GC 'tubac, az'
$GC 'amado, az'
$GC 'green valley, az'
$GC 'sahuarita, az'
$GC 'tucson, az'
$GC 'marana, az'
$GC 'arizona city, az'
$GC 'casa grande, az'
$GC 'maricopa, az'

echo "MERGING SANTA CRUZ RIVER WITH GILA RIVER"
$GCO gila-river-nm
$GMU -m='Santa Cruz River merges with Gila River' santa-cruz-river-mexico

echo "CREATING SALT RIVER"
$GCOO salt-river-az
$GC 'salt river, az'

echo "CREATING VERDE RIVER"
$GCOO verde-river-az
$GC 'paulden, az'
$GC 'clarkdale, az'
$GC 'cottonwood, az'
$GC 'camp verde, az'
$GC 'rio verde, az'

echo "MERGING VERDE RIVER WITH SALT RIVER"
$GCO salt-river-az
$GMU -m='Verde River merges with Salt River' verde-river-az

$GC 'mesa, az'
$GC 'tempe, az'
$GC 'phoenix, az'

echo "MERGING SALT RIVER WITH GILA RIVER"
$GCO gila-river-nm
$GMU -m='Salt River merges with Gila River' salt-river-az

$GC 'buckeye, az'

echo "CREATING HASSAYAMPA RIVER"
$GCOO hassayampa-river-az
$GC 'wickenburg, az'

echo "MERGING HASSAYAMPA RIVER WITH GILA RIVER"
$GCO gila-river-nm
$GMU -m='Hassayampa River merges with Gila River' hassayampa-river-az

echo "CREATING CENTENNIAL RIVER"
$GCOO centennial-river-az
$GC 'wenden, az'
$GC 'salome, az'

echo "MERGING CENTENNIAL RIVER WITH GILA RIVER"
$GCO gila-river-nm
$GMU -m='Centennial River merges with Gila River' centennial-river-az



$GC 'gila bend, az'
$GC 'tacna, az'
$GC 'welton, az'

echo "MERGING GILA RIVER WITH COLORADO RIVER"
$GCO colorado-river
$GMU -m='Gila River merges with Colorado River' gila-river-nm

$GC 'yuma, az'
$GC 'winterhaven, ca'
$GC 'gadsden, az'
$GC 'san luis, az'
$GC 'san luis, mexico'
$GC 'rio colorado, mexico'
$GC 'gulf of california'



