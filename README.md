## Application in dotnet for containerize
for construct image: 
``bash build.sh <dotnet-version> <app-version>``

### how to works: 
the script build.sh receive arguments the python-version for construct image of app and dotnet-version and copy this arguments for Dockerfile.template and create Dockerfile 

example:
``bash build.sh 5.0 1.0.0``

OR just: 

``docker build . -t felipeschirmann/conversao-peso:v1.0.0``

``docker run -d -p 8083:80 felipeschirmann/conversao-peso:v1.0.0``

![doc](https://raw.githubusercontent.com/felipeschirmann/conversao-peso/main/imgs/conversao-doc.drawio.svg)