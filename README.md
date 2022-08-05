CSE1001 Ubuntu Docker with novnc
===================

Docker image to provide HTML5 VNC interface to access a Ubuntu 20.04 XFCE desktop environment.

Available on [Dockerhub](https://hub.docker.com/r/kourtnee/cse1001-novnc)

The source files are available on [GitHub](https://github.com/kourtnee/cse1001-novnc.git)

Based on the work by [Doro Wu](https://github.com/fcwu), see on [Docker](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc/) and [Frederic Boulanger](https://github.com/Frederic-Boulanger-UPS), see on [Docker](https://hub.docker.com/r/fredblgr/ubuntu-novnc)

Typical usage is:

```
docker build . -t kourtnee/cse1001-novnc
docker run -d -p 6080:80 --name cse1001 kourtnee/cse1001-novnc
```

Browse http://127.0.0.1:6080/


Windows Run Instructions
----------------
You will have Ubuntu 20.04 in your browser, with the current working directory mounted on /workspace. The container will not be removed when it stops, but you should save your work in /workspace if you want to access to it outside the docker.

There is a ```startUbuntu.ps1``` for the PowerShell of Windows. You may have to allow the execution of scripts. 
Open PowerShell as Administrator (Start menu > PowerShell > right-click > Run as Administrator) and enter this command:

```Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser```.


If you want the container to be fresh upon every use, edit the .ps1 file and add ```-rm``` before the -d flag to remove the container automatically when stopped (be careful about where you save your work in this instance).  
If you want someone on the same network to be able to connect to your workspace, remove ```127.0.0.1``` from the run command in the .ps1 file.


Screen Resolution (in the event the browser desktop doesn't fit your screen correctly)
------------------

The Resolution of virtual desktop adapts browser window size when first connecting the server. You may choose a fixed resolution by passing `RESOLUTION` environment variable, for example

```
docker run -p 6080:80 -e RESOLUTION=1920x1080 kourtnee/cse1001-novnc
```

Default Desktop User 
--------------------

The default user is `cse1001`. You may change the user and password respectively by `USERNAME` and `PASSWORD` environment variables, for example,

```
docker run -p 6080:80 -e USERNAME=bob -e PASSWORD=password kourtnee/cse1001-novnc
```

Additional Functionalities 
--------------------

If you're interested in some of the more intricate functionalities of this container, please see the repo this project is forked from. This project has a very specific use-case and as such was simplified for it's purpose. A lot of the functionality from the original project is still available in the source code for those who want to use it. 

License
==================

Apache License Version 2.0, January 2004 http://www.apache.org/licenses/LICENSE-2.0

Original work by [Doro Wu](https://github.com/fcwu)

Adapted by [Frédéric Boulanger](https://github.com/Frederic-Boulanger-UPS)

Then adapted by [Kourtnee Fernalld](https://github.com/kourtnee)
