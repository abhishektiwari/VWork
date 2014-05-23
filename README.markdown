# Virtual Workspace
My personal virtual workspace and coding playground. This is using Git submodule mainly for the Puppet modules and Projects.

## Requires
* Vagrant (1.3+)

## Directory structure
* Labs
* Projects
* Modules
* Manifests

## Git submodules

### Updating/Pulling the Git submodules

[Pulling or Updating Git submodules repositories](http://stackoverflow.com/questions/1030169/easy-way-pull-latest-of-all-submodules)

	git pull --recurse-submodules
	
### Pushing the change in the Git submudles
[Pushing change to Git submodules remote](http://stackoverflow.com/questions/5542910/how-do-i-commit-changes-in-a-git-submodule)

	cd path/to/submodule
	git add <stuff>
	git commit -m "comment"
	git push

## Cloning
With new version of Git

	git clone --recursive https://github.com/abhishektiwari/VWork.git

Old version of Git

	git clone https://github.com/abhishektiwari/VWork.git
	cd VWork
	git submodule init 
	git submodule update
