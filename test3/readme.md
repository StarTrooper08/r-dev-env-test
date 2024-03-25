### Test Case 3 Hard:  

#### Gitpod Yml config file for creating MKDocs Dev Env 

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

