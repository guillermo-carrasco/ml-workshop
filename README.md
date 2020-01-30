# Introduction to Machine Learning Workshop
Contents of the workshop "Introduction to Machine Learning" 

## Running in Docker
If you don't want to install all packages and dependencies required to run the exercises in this
workshop, I have created a Docker image that you can pull and run. Do the following:

1. Clone this repository and navigate into it. This step is important since some files in the repository are mounted into
the image

        git clone https://github.com/guillermo-carrasco/ml-workshop.git
        cd ml-workshop

2. Pull the docker image and run it:  

        docker pull gcarrasco/ml:intro-workshop
        docker run -p 8888:8888 -v $(pwd)/notebooks:/home/jovyan/notebooks_local gcarrasco/ml:intro-workshop
        
    _NOTE: If in Windows, replace `$(pwd)` with `%cd%` for Windows Command Line, or with `${PWD}` for PowerShell_

3. When you run the image, you will see a link to open a jupyter notebook, something like this:

        ...
        [I 09:57:17.737 NotebookApp]  or http://127.0.0.1:8888/?token=62726225bf2401da1f0c35a3bcfc7cecb8a952fc27836d86
        ...

    open it and enjoy the content :)

## Building and publishing the docker image
_NOTE: To be build an pushed into **my** Dokcer hub. Edit accordingly to use your hub._
 
* Build: `docker build . -t gcarrasco/ml:intro-workshop`
* Push: `docker push gcarrasco/ml:intro-workshop`
* Pull: `docker pull gcarrasco/ml:intro-workshop`