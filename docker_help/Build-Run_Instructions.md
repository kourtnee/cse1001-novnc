Docker technically only runs on Linux. Docker desktop for other operating systems is running docker inside of a Linux VM. Therefore, docker desktop is necessary for every operating system outside of Linux ones. 

In the case of the containers these instructions are for I would suggest running the docker Auto Run scripts 

Building from source does NOT work for:
* Windows -> the novnc session doesn’t connect in the browser so gui won’t function
* Macbook M1 -> the project fails to build, likely something to do with the fact that it’s an ARM processor unlike the others

Building from source seems to consistently work for:
* Linux distros
* Macbook Intel

Of course there’s the possibility that a resource referenced in the Dockerfile might be down or unavailable and then the build will fail. Error messages usually tell why it may have failed. 

Actual Build and Run instructions are on the github page for the images. As well as the Auto Run scripts.

[CSE1001](https://github.com/FITSEC/docker_images/tree/main/cse1001_vnc)  
[CSE4001-VNC](https://github.com/FITSEC/docker_images/tree/main/cse4001_vnc)  
[CSE4001](https://github.com/FITSEC/docker_images/tree/main/cse4001)  
[CSE3801-VNC](https://github.com/FITSEC/docker_images/tree/main/cyber_ops_vnc)  
[CSE3801](https://github.com/FITSEC/docker_images/tree/main/cyber_ops)  

Related docker hub repos:  
[CSE1001](https://hub.docker.com/r/kourtnee/cse1001-novnc)  
[CSE4001-VNC](https://hub.docker.com/r/tjoconnor/cse4001-vnc)  
[CSE4001](https://hub.docker.com/r/tjoconnor/cse4001)    
[CSE3801](https://hub.docker.com/r/tjoconnor/cyber_ops)  
[CSE3801-VNC](https://hub.docker.com/r/tjoconnor/cyber_ops_vnc)  
