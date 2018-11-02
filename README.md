<h1>NASM CODE<h1>
<h3>How to run</h3>

<h5>For 64bit architecture</h5>
pucsd-$nasm -felf32 filename.asm </br>
pucsd-$gcc -m32 filename.o </br>
pucsd-$./a.out</br>

<h3>How to create lst file</h3>
pucsd-$nasm -felf32 filename.asm -l p1.lst</br>
pucsd-$cat p1.lst</br>
