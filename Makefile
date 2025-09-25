sync:
	mdbook build
	rsync --delete -avz ./cbook ecole:/home/zxy/books