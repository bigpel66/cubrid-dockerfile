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

### To Flush the Cache of the Image
Must type y to prune the cache.
> make prune

<br/>

### To Attach the Existing Container
> make attach

# 2. How to Handle the Container
### 1) At the first time
> su - $USER

> cd && . run.sh

(A blank between `dot` and `run.sh` should be existed!)

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
