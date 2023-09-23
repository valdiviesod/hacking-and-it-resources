https://overthewire.org/wargames/bandit/
## Level 0 
*ssh -p 2220 bandit0@bandit.labs.overthewire.org * 
#Bandit0Password **bandit0

## Level 0 -1
Flag: NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL

**Acceso rapido
`sshpass -p 'aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG' ssh -p 2220 bandit3@bandit.labs.overthewire.org /
`/ssh -i sshkey.private -p 2220 bandit14@bandit.labs.overthewire.org (La key debe tener permisos 600)` 


## Level 1 - 2
``` 
bandit1@bandit:~$ cat ./-
rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi #Flag2
```
## Level 2 -3 
``` 
bandit2@bandit:~$ cat "spaces in this filename" / cat spaces\ in\ this\ filename / cat s*
aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG #Flag3
```
## Level 3 -4
``` 
bandit3@bandit:~$ cd inhere/
bandit3@bandit:~/inhere$ ls -la
total 12
drwxr-xr-x 2 root    root    4096 Apr 23 18:04 .
drwxr-xr-x 3 root    root    4096 Apr 23 18:04 ..
-rw-r----- 1 bandit4 bandit3   33 Apr 23 18:04 .hidden
bandit3@bandit:~/inhere$ cat .hidden
2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe
```

## Level 4 - 5
``` 
bandit4@bandit:~/inhere$ file ./-*
./-file00: data
./-file01: data
./-file02: data
./-file03: data
./-file04: data
./-file05: data
./-file06: data
./-file07: ASCII text
./-file08: data
./-file09: Non-ISO extended-ASCII text, with no line terminators
bandit4@bandit:~/inhere$ cat ./-file07
lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR
bandit4@bandit:~/inhere$
```
## Level 5 -6
``` 
#Based in the tips provided by the level  
bandit5@bandit:~/inhere$ find ./ -size 1033c
./maybehere07/.file2
bandit5@bandit:~/inhere$ cat ./maybehere07/.file2
P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU
```
## Level 6-7
``` 
bandit6@bandit:~$ find / -user bandit7 -group bandit6 -type f 2>/dev/null
/var/lib/dpkg/info/bandit7.password
bandit6@bandit:~$ cat /var/lib/dpkg/info/bandit7.password
z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S
```
## Level 7-8
``` 
bandit7@bandit:~$ cat data.txt | grep "millionth"
millionth	TESKZC0XvTetK0S9xNwm25STk5iWrBvP
bandit7@bandit:~$
```

## Level 8 - 9
``` 
bandit8@bandit:~$ cat data.txt | sort | uniq -u
EN632PlfYiZbn3PhVK3XOGSlNInNE00t #Usando uniq --help 
```

## Level 9 - 10
``` 
bandit9@bandit:~$ strings data.txt | grep -E "==+"
4========== the#
========== password
========== is
========== G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s
```
## Level 10 - 11
``` 
bandit10@bandit:~$ base64 -d data.txt
The password is 6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM
```
## Level 11 - 12
``` 
#Descifrado con https://rot13.com/
bandit11@bandit:~$ cat data.txt
Gur cnffjbeq vf WIAOOSFzMjXXBC0KoSKBbJ8puQm5lIEi
#The password is JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv
#Alias para hacerlo a mano
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias rot5="tr '0-9' '5-90-4'
```
## Level 12 - 13
wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw #Flag12 

## Level 13 - 14
``` 
  666   scp -r -P 2220 bandit13@bandit.labs.overthewire.org:/home/bandit13/sshkey.private ~/hacking-and-it-path/OverTheWire\ Machines/bandit
  667  chmod 600 sshkey.private
  668  ssh -i sshkey.private -p 2220 bandit14@bandit.labs.overthewire.org
  bandit14@bandit:~$ cat /etc/bandit_pass/bandit14
fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq
bandit14@bandit:~$

```
## Level 14 - 15
``` 
bandit14@bandit:~/.ssh$ nc localhost 30000
fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq
Correct!
jN2kgmIXJ6fShzhT2avhotn4Zcka6tnt
```
## Level 15 - 16
``` 
bandit15@bandit:~$ ncat --help | grep "ssl"
bandit15@bandit:~$ ncat --ssl localhost 30001
jN2kgmIXJ6fShzhT2avhotn4Zcka6tnt
Correct!
JQttfApK4SeyHwDlI9SXGR50qclOAil1
```
## Level 16 - 17
/tmp/tmp.Yy0pc5aZ4o
(`nmap --open -T5 -n -n -p 31000-32000 127.0.0.1 /
`nmap -p <puertos> --script ssl-enum-ciphers <dirección-IP>
`ncat --ssl 127.0.0.1 31790)
## Level 17 -18 
```bash
bandit17@bandit:~$ diff passwords.old passwords.new
42c42
< glZreTEH1V3cGKL6g4conYqZqaEj0mte
---
> hga5tuuCLF6fFzUpnagiMN8ssu9LFrdg
```
## Level 18 -19
```bash
#Acceder al nivel con una shell diferente
sshpass -p 'hga5tuuCLF6fFzUpnagiMN8ssu9LFrdg' ssh -p 2220 bandit18@bandit.labs.overthewire.org -t "/bin/bash"
$ cat readme
awhqfNnAbc1naukrpqDYcF95h7HoMTrC

```
## Level 19 -20
````
bandit19@bandit:~$ ./bandit20-do cat /etc/bandit_pass/bandit20
	VxCazJaVykI6W36BkBU0mJTCM8rR95XT
````
## Level 20 - 21
```bash
echo "awhqfNnAbc1naukrpqDYcF95h7HoMTrC" | nc -l localhost -p 1234 & #Seteo un servidor TCP que envie la contraseña actual por un puerto especifico
bandit20@bandit:~$ echo "VxCazJaVykI6W36BkBU0mJTCM8rR95XT" | nc -l localhost 1234 &
[1] 1321552
bandit20@bandit:~$ ./suconnect 1234
Read: VxCazJaVykI6W36BkBU0mJTCM8rR95XT
Password matches, sending next password
NvEJF7oVjkddltPSrdKEFOllh9V1IBcq
bandit20@bandit:~$
```
## Level 21 - 22
```bash 
bandit21@bandit:/etc/cron.d$ cat cronjob_bandit22
@reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
* * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
bandit21@bandit:/etc/cron.d$ cat /usr/bin/cronjob_bandit22.sh
#!/bin/bash
chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
bandit21@bandit:/etc/cron.d$ file /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
/tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv: ASCII text
bandit21@bandit:/etc/cron.d$ cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
WdDozAdTM2z9DiFEQ2mGlwngMfj4EZff
bandit21@bandit:/etc/cron.d$
```
## Level 22 - 23
```
bandit22@bandit:/etc/cron.d$ cat cronjob_bandit23
@reboot bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
* * * * * bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
bandit22@bandit:/etc/cron.d$ cat /usr/bin/cronjob_bandit23.sh
#!/bin/bash

myname=$(whoami)
mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)

echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"

cat /etc/bandit_pass/$myname > /tmp/$mytarget
bandit22@bandit:/etc/cron.d$ cat /tmp/$(echo I am user bandit23 | md5sum | cut -d ' ' -f 1)
QYw0Y2aiA672PsMmh9puTQuhoz8SyR2G
bandit22@bandit:/etc/cron.d$
```
## Level 23 - 24
```zsh
bandit23@bandit:/var/spool/bandit24/foo$ cat /usr/bin/cronjob_bandit24.sh
#!/bin/bash

myname=$(whoami)

cd /var/spool/$myname/foo || exit 1
echo "Executing and deleting all scripts in /var/spool/$myname/foo:"
for file in * .*;
do
#Comprueba si el nombre del archivo actual (`$file`) no es `"."` ni `".."`
    if [ "$i" != "." -a "$i" != ".." ]; # -a -> and
    then
        echo "Handling $file"
        #Utiliza el comando `stat` para obtener el propietario del archivo actual y lo asigna a la variable `owner`. El parámetro `--format "%U"` especifica que solo se debe mostrar el nombre de usuario del propietario.
        owner="$(stat --format "%U" ./$file)"
        if [ "${owner}" = "bandit23" ]; then
        #Si el propietario del archivo es "bandit23", se ejecuta el archivo utilizando el comando `timeout`. El archivo se ejecuta con un límite de tiempo de 60 segundos y si excede ese límite, se envía una señal SIGKILL (9) para finalizarlo.
            timeout -s 9 60 ./$i
        fi
        rm -rf ./$i
    fi
done
bandit23@bandit:/var/spool/bandit24/foo$ mkdir /tmp/scriptB24
bandit23@bandit:/var/spool/bandit24/foo$ cd /tmp/scriptB24
bandit23@bandit:/tmp/scriptB24$ touch passwd24
bandit23@bandit:/tmp/scriptB24$ cat getPass.sh
#!/bin/bash
cat /etc/bandit_pass/bandit24 > /tmp/scriptB24/passwd24
bandit23@bandit:/tmp/scriptB24$ chmod 777 -R /tmp/scriptB24
bandit23@bandit:/tmp/scriptB24$ cp ./getPass.sh /var/spool/bandit24/foo
bandit23@bandit:/tmp/scriptB24$ cat passwd24
	VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar
bandit23@bandit:/tmp/scriptB24$
```
## Level 24 - 25
```bash 
bandit24@bandit:/tmp/v4ld1$ bash bruteForce.sh > output
bandit24@bandit:/tmp/v4ld1$ cat output | grep bandit25
I am the pincode checker for user bandit25. Please enter the password for user bandit24 and the secret pincode on a single line, separated by a space.
The password of user bandit25 is p7TaowMYrmu23Ol8hiZh9UvD0O9hpx8d
bandit24@bandit:/tmp/v4ld1$
```
## Level 25 - 26
```bash
bandit25@bandit:/home/bandit26$ cat /etc/passwd | grep bandit26
bandit26:x:11026:11026:bandit level 26:/home/bandit26:/usr/bin/showtext
#Si resizeo la consola a lo mas pequeño puedo ejecutar el comando more, y con "v" modificar mi login en vim
bandit25@bandit:~$ ssh -i bandit26.sshkey -p 2220 bandit26@localhost       
#Dentro de vim en modo comandos, asigno :set shell=/bin/bash y luego otra vez en modo comando ejecuto :shell

```
## Level 26 - 27
```zsh
26@bandit:~$ file bandit27-do 
bandit27-do: setuid ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux.so.2, BuildID[sha1]=c148b21f7eb7e816998f07490c8007567e51953f, for GNU/Linux 3.2.0, not stripped
bandit26@bandit:~$ ./bandit27-do 
Run a command as another user.
  Example: ./bandit27-do id
bandit26@bandit:~$ ./bandit27-do cat /etc/bandit_pass/bandit27
YnQpBuifNMas1hcUFk70ZmqkhUU2EuaS
bandit26@bandit:~$ 
```
## Level 27 - 28
```bash
bandit27@bandit:/tmp$ git clone ssh://bandit27-git@localhost:2220/home/bandit27-git/repo
Cloning into 'repo'...
The authenticity of host '[localhost]:2220 ([127.0.0.1]:2220)' can't be established.
ED25519 key fingerprint is SHA256:C2ihUBV7ihnV1wUXRb4RrEcLfXC5CXlhmAAM/urerLY.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Could not create directory '/home/bandit27/.ssh' (Permission denied).
Failed to add the host to the list of known hosts (/home/bandit27/.ssh/known_hosts).
                         _                     _ _ _
                        | |__   __ _ _ __   __| (_) |_
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_
                        |_.__/ \__,_|_| |_|\__,_|_|\__|


                      This is an OverTheWire game server.
            More information on http://www.overthewire.org/wargames

bandit27-git@localhost's password:
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.
bandit27@bandit:/tmp/repo$ cd /tmp/repo
bandit27@bandit:/tmp/repo$ ls
README
bandit27@bandit:/tmp/repo$ cat README
The password to the next level is: AVanL161y9rsbcJIsFHuw35rjaOM19nR
#Se puede realizar el clone a una carpeta custom pero debe estar vacia
```
## Level 28 - 29
```bash
bandit28@bandit:/tmp/tmp.5NO66Mhw9x$ cd repo/
bandit28@bandit:/tmp/tmp.5NO66Mhw9x/repo$ ls
README.md
bandit28@bandit:/tmp/tmp.5NO66Mhw9x/repo$ cat README.md
# Bandit Notes
Some notes for level29 of bandit.

## credentials

- username: bandit29
- password: xxxxxxxxxx

bandit28@bandit:/tmp/tmp.5NO66Mhw9x/repo$ git log
commit 899ba88df296331cc01f30d022c006775d467f28 (HEAD -> master, origin/master, origin/HEAD)
Author: Morla Porla <morla@overthewire.org>
Date:   Sun Apr 23 18:04:39 2023 +0000

    fix info leak

commit abcff758fa6343a0d002a1c0add1ad8c71b88534
Author: Morla Porla <morla@overthewire.org>
Date:   Sun Apr 23 18:04:39 2023 +0000

    add missing data

commit c0a8c3cf093fba65f4ee0e1fe2a530b799508c78
Author: Ben Dover <noone@overthewire.org>
Date:   Sun Apr 23 18:04:39 2023 +0000

    initial commit of README.md
bandit28@bandit:/tmp/tmp.5NO66Mhw9x/repo$ git show 899ba88df296331cc01f30d022c006775d467f28
commit 899ba88df296331cc01f30d022c006775d467f28 (HEAD -> master, origin/master, origin/HEAD)
Author: Morla Porla <morla@overthewire.org>
Date:   Sun Apr 23 18:04:39 2023 +0000

    fix info leak

diff --git a/README.md b/README.md
index b302105..5c6457b 100644
--- a/README.md
+++ b/README.md
@@ -4,5 +4,5 @@ Some notes for level29 of bandit.
 ## credentials

 - username: bandit29
-- password: tQKvmcwNYcFS6vmPHIUSI3ShmsrQZK8S
+- password: xxxxxxxxxx

bandit28@bandit:/tmp/tmp.5NO66Mhw9x/repo$
```
## Level 29 - 30
```bash
bandit29@bandit:/tmp/tmp.lazR1AGcj8/repo$ git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/dev
  remotes/origin/master
  remotes/origin/sploits-dev
bandit29@bandit:/tmp/tmp.lazR1AGcj8/repo$ git checkout dev
Branch 'dev' set up to track remote branch 'dev' from 'origin'.
Switched to a new branch 'dev'
bandit29@bandit:/tmp/tmp.lazR1AGcj8/repo$ ls
code  README.md
bandit29@bandit:/tmp/tmp.lazR1AGcj8/repo$ cat README.md
# Bandit Notes
Some notes for bandit30 of bandit.

## credentials

- username: bandit30
- password: xbhV3HpNGlTIdnjUrdAlPzc2L6y9EOnS

bandit29@bandit:/tmp/tmp.lazR1AGcj8/repo$
```
## Level 30 - 31
```bash
bandit30@bandit:/tmp/tmp.XSrRaBHi9L/repo$ git tag
secret
bandit30@bandit:/tmp/tmp.XSrRaBHi9L/repo$ git show secret
OoffzGDlzhAlerFJ2cAiz1D41JW1Mhmt
bandit30@bandit:/tmp/tmp.XSrRaBHi9L/repo$

```
## Level 31 - 32
```bash
bandit31@bandit:/tmp/tmp.QsZBzcITay/repo$ git add -f key.txt
bandit31@bandit:/tmp/tmp.QsZBzcITay/repo$ git commit -m "Hackiao"
[master e218e7a] Hackiao
 1 file changed, 1 insertion(+)
 create mode 100644 key.txt
bandit31@bandit:/tmp/tmp.QsZBzcITay/repo$ git push -u origin master
The authenticity of host '[localhost]:2220 ([127.0.0.1]:2220)' can't be established.
ED25519 key fingerprint is SHA256:C2ihUBV7ihnV1wUXRb4RrEcLfXC5CXlhmAAM/urerLY.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Could not create directory '/home/bandit31/.ssh' (Permission denied).
Failed to add the host to the list of known hosts (/home/bandit31/.ssh/known_hosts).
                         _                     _ _ _
                        | |__   __ _ _ __   __| (_) |_
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_
                        |_.__/ \__,_|_| |_|\__,_|_|\__|


                      This is an OverTheWire game server.
            More information on http://www.overthewire.org/wargames

bandit31-git@localhost's password:
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 2 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 321 bytes | 321.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
remote: ### Attempting to validate files... ####
remote:
remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
remote:
remote: Well done! Here is the password for the next level:
remote: rmCBvG56y58BXzv98yZGdO7ATVL5dW8y
remote:
remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
remote:
To ssh://localhost:2220/home/bandit31-git/repo
 ! [remote rejected] master -> master (pre-receive hook declined)
error: failed to push some refs to 'ssh://localhost:2220/home/bandit31-git/repo'
bandit31@bandit:/tmp/tmp.QsZBzcITay/repo$
```
## Level 32 - 33
```bash
#$0 refiere al script o shell donde estoy ejecutando comandos, si en este caso llamo a $0 ingreso a una sh, pues esta es quien esta procesando mi entrada y modifica las mayusculas
$ $0
$ bash
#Finish
```
