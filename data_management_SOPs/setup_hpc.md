# Logging into the HPC

### Log in
This command will let you log in HPCC
```
ssh your_id@hpcc.msu.edu
```

After log-in, you need to inter one of the dev node. such as:
```
ssh dev-intel16
```
Now you are able to use shortcut on your PC, like
```
ssh hpc
```


### setup ssh short cut
https://wiki.hpcc.msu.edu/display/hpccdocs/SSH+Key-Based+Authentication
creat key file, then you will have your keyfile (id_rsa) and publick file(id_rsa.pub)
```
ssh-keygen -t rsa
```
in the folder, ~/.ssh, you need config file (filename = config)
```
Host hpc
User your_id
Hostname rsync.hpcc.msu.edu
IdentityFile path_to_your_key_file
```
in, HPC, make directory (.ssh) in the home folder
```
mkdir ~/.ssh
```

now, in your PC, copy your pub file into HPC
```
scp id_rsa.pub your_id@hpcc.msu.edu:~/.ssh
```

back to HPC, rename file
```
mv ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys
```
change permission
```
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```


## before use screen
https://wiki.hpcc.msu.edu/display/hpccdocs/Virtual+Terminals
```
echo 'shell -$SHELL' >> ~/.screenrc
```
