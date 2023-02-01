The first step in this project is to write the docker compose file to setup wordpress on docker container I am assuming that you have docker installed already on the local machine or server and I am referring to the developer server 

setup git on the server for the repo 

once done go to the git repo Github actions < create new action workflos < simple workflow < use the aws.yml file from .github/workflows withing this directory 

once done go to settings < actions < runners < follow the steps to integrate the server with git for autodeployment 

Also setup secrets from settings < actions 

Port 
value 80 

also setup the docker compose file that is present within this directory and you are all done everything will work smooth 


as to make it working and test go to actions directory on the server and execute ./run.sh to test if it builds successfully then all you need to do is automate the task to do that run 

    sudo ./svc.sh install 
    sudo ./svc.sh start
    sudo ./svc.sh status
    
    this will automate and whenever something is pushed or commit to the to repo it will automatically deploy it to the server 
