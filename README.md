# Config git

- configure the global ignore file
```
vim ~/.gitignore_global
```
and add the files you would like git to ignore, depending on the apps you use and what system you are on, you may have the following line added：
```
.DS_Store
._.DS_Store
**/.DS_Store
**/._.DS_Store
**/.vscode/
**/.texpadtmp/
```

- configure the global git setting:

```
git config --global core.excludesfile = ~/.gitignore_global
git config --global submodule.recurse = true
```

# Multi git users on same machine

- create ssh keys for different user name and email
```
ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa_<user1_name> -C <user1_email>
```

- upload public key of user to its binded github account following.

- configure the ssh authentication config
```
vim ~/.ssh/config
```
and add following item for each user

```
Host <user1_host_name>
	HostName github.com
	User git
	IdentityFile=~/.ssh/id_rsa_<user1_name>
```


- change in git clone SSH link, let's consider the following default ssh link:
```
git@github.com:<user1_name>/<repo1>.git
```
just change the github.com to the name after `Host` from the previous step, so we have:
```
git@<user1_host_name>:<user1_name>/<repo1>.git
```  


# Git-ACC

## We add `Git-ACC` as a submodule here:
```
git submodule add https://github.com/tw-yshuang/Git_SSH-Account_Switch.git 
```
remember to clone with `--recurse` option.


- You may also use `git-acc` to help you generate the ssh keys as instructed above.

- To add existing users to `git-acc`, simply type:
```
git-acc add <user1_name>
```
and remember to key in the idential `<user1_name>` and `<user1_email>` and type `n` when prompted `Overwrite?`

- Another convenience `git-acc` brings is that you can switch user effortlessly to avoid committing with a non-matching git user name, `git-acc` switches the global git user with 
```
git-acc <user1_name>
```



