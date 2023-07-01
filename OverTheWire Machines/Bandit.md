https://overthewire.org/wargames/bandit/
## Level 0 
*ssh -p 2220 bandit0@bandit.labs.overthewire.org * 
#Bandit0Password **bandit0

## Level 0 -1
Flag: NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL

**Acceso rapido
`sshpass -p 'aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG' ssh -p 2220 bandit3@bandit.labs.overthewire.org`


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
``` 

```