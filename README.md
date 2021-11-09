# 1. Makefile of the Cubrid on Dockerfile

### To Make Image of Cubrid
If you are not using Apple Silicon Chipset, remove the `--platform` option on the `build` rule.
> make build

<br/>

### To Create the Container of Cubrid
If you are not using Apple Silicon Chipset, remove the `--platform` option on the `build` rules.
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

### To flush the Cache of the Image
Must type y to prune the cache.
> make prune

<br/>

# 2. At the Initial Container

### 1) su - $USER
In the default option via this file, $USER is cubrid

<br/>

### 2) sh CUBRID-$CUBRID_BUILD_VERSION-linux.x86_64.sh
Type the default answer on the interaction. In my case, q -> yes -> yes -> yes -> yes.

<br/>

### 3) . /home/$USER/.cubrid.sh
Execute the generated config file. The blank in front of the path is necessary.

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
