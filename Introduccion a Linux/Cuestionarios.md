![[Pasted image 20230629192419.png]]
![[Pasted image 20230705194206.png]]

### ¿Cómo puedo listar por consola el último elemento de cada una de estas líneas?

![[Pasted image 20230706175533.png]]

cat data | awk 'NF{print $NF}'

awk 'NF{print $NF}' data

cat data | awk '{print $2}'

cat data | rev | awk '{print $1}'

cat data | rev | awk '{print $1}' FS=''

cat data | rev | awk '{print $1}' FS=' '

![[Pasted image 20230706175612.png]]
![[Pasted image 20230706175702.png]]

cat /etc/hosts | tail -n 1

cat /etc/hosts | tac | head -n 1
cat /etc/hosts | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}.*' | tail -n 1

cat /etc/hosts | grep -oP '19\d{1}\.\d{1,3}\.\d{1,3}\.\d{1,3}'

cat /etc/hosts | grep bicho

## ¿Cómo puedo listar los archivos ocultos existentes en el directorio actual de trabajo?
ls -a .

ls -a
ls -a $PWD

ls -a $(pwd)

ls -a /$(pwd)

ls -a //$(pwd)
![[Pasted image 20230706175816.png]]
![[Pasted image 20230706175831.png]]
whoami | head -c 3
whoami | tail -c 8 | head -c 3

whoami | tail -c 9 | head -c 3
whoami | sed 's/s4vitar/s4v/'

![[Pasted image 20230722072752.png]]
![[Pasted image 20230722072802.png]]
![[Pasted image 20230722072816.png]]
![[Pasted image 20230722072903.png]]
![[Pasted image 20230722072915.png]]
![[Pasted image 20230722072928.png]]
![[Pasted image 20230722072938.png]]
![[Pasted image 20230722072948.png]]
![[Pasted image 20230722073013.png]]
![[Pasted image 20230722073039.png]]
![[Pasted image 20230722073051.png]]
![[Pasted image 20230722073102.png]]
![[Pasted image 20230722073114.png]]
