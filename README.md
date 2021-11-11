# 1. Makefile of the Cubrid on Dockerfile

### To Make Image of Cubrid
If you are not using Apple Silicon Chipset, remove the `--platform` option on the `build` rule.
> make build

<br/>

### To Create the Container of Cubrid
If you are not using Apple Silicon Chipset, remove the `--platform` option on the `build` rule.
> make create

<br/>

### To Do the Both Works with a Command
> make run

<br/>

### To Delete the Container of Cubrid
> make rmf

<br/>

### To Delete the Image of Cubrid
> make clean

<br/>

### To Do the Both Works with a Command
> make fclean

<br/>

### To Re-Make the Container
> make re

<br/>

### To Flush the Cache of the Image
Must type `y` to prune the cache.
> make prune

<br/>

### To Attach the Existing Container
Attaching container can be done when you get out of the container with detach status by `Ctrl + p, q`.
> make attach

<br/>

# 2. How to Initialize after Creating Container
> . run.sh

(A blank between `dot` and `run.sh` should be existed! If not, the setting values will be applied on the subshell.)

<br/>

# 3. Using Service on Cubrid

### 1) Start
> cubrid service start

<br/>

### 2) Stop
> cubrid service stop

<br/>

### 3) Status
> cubrid service status

<br/>

# 4. Using Manager of Cubrid

### 1) Install DMG File on the Cubrid Website
https://www.cubrid.com/downloads

<br/>

### 2) Install JDK with Recommended Version
> brew tap adoptopenjdk/openjdk

> brew install --cask adoptopenjdk8

<br/>

### 3) Export the JDK Path on the `.*_rc` File
Open the shell setting file, and add the following commands.
> export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

> export PATH=$PATH:$JAVA_HOME/bin

<br/>

### 4) Symbolic Link to the JDK
> sudo ln -s "/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/jre/lib/server/libjvm.dylib" "/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/lib/libserver.dylib"

<br/>

### 5) Prevent TLS Server Error
> sudo vi /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/jre/lib/security/java.security

<br/>

Before
```
jdk.tls.disabledAlgorithms=SSLv3, TLSv1, TLSv1.1, RC4, DES, MD5withRSA, \
    DH keySize < 1024, EC keySize < 224, 3DES_EDE_CBC, anon, NULL, \
    include jdk.disabled.namedCurves
```

After
```
jdk.tls.disabledAlgorithms=SSLv3, RC4, DES, MD5withRSA, \
    DH keySize < 1024, EC keySize < 224, 3DES_EDE_CBC, anon, NULL, \
    include jdk.disabled.namedCurves
```

<br/>

### 6) Open the Cubrid Manager
The ID, Password on initial login is both `admin`.

<br/>

### 7) Update JDBC Driver
Press the button on the end of the Driver Version row. Click the JDBC Driver Update.

<br/>

### 8) Connection Completed
