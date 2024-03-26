### Test Case 3 Hard:  

#### Demo 
[![Gitpod](https://img.shields.io/badge/gitpod-f06611.svg?style=for-the-badge&logo=gitpod&logoColor=white)](https://gitpod.io/#github.com/StarTrooper08/r-dev-env-test)

#### Building Gitpod Workspace using Gitpod/workspace-full base image

1. Starting Gitpod Workspace using Gitpod/Workspace-full base image
![ss1rdev](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/edbac796-3d79-4850-9d9b-91ce05e328f0)

2. Building Image using .gitpod.Dockerfile
![ss2rdev](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/ca7cee24-0602-415a-9378-4e6ad4acee07)

3. Testing additional installed packages like subversion and printing ENV Var BUILDDIR and TOP_SRCDIR
![ss5rdev](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/692073f0-510c-4f06-abe4-33cb1ec37c1f)

![ss6rdev](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/092ddf94-ebbd-4d52-808a-cd7e65fa7236)

#### Gitpod Dockerfile and Gitpod yml config

**Dockerfile**
```Dockerfile
FROM gitpod/workspace-full:latest

ENV BUILDDIR='/workspaces/r-dev-env/build'
ENV TOP_SRCDIR='/workspaces/r-dev-env/svn'

RUN sudo apt update
RUN sudo apt -y install subversion
```
**Gitpod.yml**
```yml
image: 
  file: .gitpod.Dockerfile

vscode:
   extensions:
     - REditorSupport.r
     - johnstoncode.svn-scm
```

**Changes Explaination :**
The Gitpod Workspace is config to use gitpod/workspace image and upon it I've installed subversion and mentioned 2 env var to test whether the env var are created in gitpod workspace image properly or not.
Additionally I've also added VSCode Extension like R Editor and SVN extension.




#### Gitpod Yml config file for creating MKDocs Dev Env (without using dockerfile)

```yml
image: gitpod/workspace-full:latest

tasks:
  - init: |
      python -m pip install --upgrade pip
      python -m pip install mkdocs
      mkdocs new mkdocs-demo

    command: |
        cd mkdocs-demo
        mkdocs serve
  
ports:
  - port: 8000
    onOpen: open-preview
    
vscode:
   extensions:
     - REditorSupport.r


```

The Gitpod workspace is setup to install and build mkdocs and preview it in browser
![image](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/c82d93e6-ae1d-4b3d-9641-adecf92bbf52)

Also Added R extension in gitpod config for testing purpose
![image](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/40738b57-3d32-4466-9468-f9a52fb504f9)
![image](https://github.com/StarTrooper08/r-dev-env-test/assets/72031540/80a82a05-4277-430d-b0f9-9430f1209390)

**Changes Explaination :**
Here I've tried to use directly the base image in gitpod yml instead of mentioning it in Dockerfile and used the tasks argument to install mkdocs and also opened port 8000 using ports argument in gitpod yml.
