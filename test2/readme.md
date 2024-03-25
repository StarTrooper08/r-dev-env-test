#### Test Case 2(Medium):


#### Bash Script to Build R using r revision version as argurment/input

```bash
#!/bin/bash

read -p "Enter version number : " ver
echo "version number $ver"

svn checkout -r "$ver" "https://svn.r-project.org/R/trunk" "$TOP_SRCDIR"

mkdir -p "$BUILDDIR"

cd "$BUILDDIR" || exit 1

"$TOP_SRCDIR/configure" --enable-R-shlib --without-recommended-packages

make
sudo make install
```

#### Script Explaination:
- The first two lines(from read -p) takes input(r rev version) and substitutes in svn checkout line as a variable. The svn checkouts trunk directory from R revision version 86123. 
- After that `mkdir -p $BUILDDIR` creates a empty parent directory using the ENV var BUILDDIR. And changes directory to $BUILDDIR which is `/workspaces/r-dev-env/build` and also exit 1 is mentioned using || which exits program if parent directory is not created before changing directory(just for exceptional handling).
- The $TOP_SRCDIR/configure script inside svn checkout directory($TOP_SRCDIR) which is `/workspaces/r-dev-env/svn` is used to build R inside Build directory($BUILDDIR). And make and sudo make install does the installation and configuration of R using configure script inside build directory($BUILDDIR).

#### ScreenShot R Build
![SS1](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/19233200-d9ca-4d8d-9888-46f38293487d)
![SS2](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/d165cd33-9e75-4cd1-a86e-af81dae97acf)

![SS3](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/0d9aa185-7ee7-4edd-8cfd-61afa9fc4b34)

![SS4](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/30587eca-8732-4fe0-a16d-14efeccf25de)

#### Testing R Build R Rev (ver 86123)
![SS5](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/d991392c-ee66-4b01-931d-05f33604ab3c)

![SS6](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/b4c7052c-7345-491f-b937-8355f6bbf57a)

