predicates
  factorial(unsigned,real) - procedure (i,o)
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i)

/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):-  %2. rule pertama ternyata sesuaui dengan goal, maka dilakukan unifikasi dimana N=3 dan X=FactN. jika
	factorial(N,FactN,1,1.0). %3. dikarenakan pada subgoal tsb berisi argumen variabel, maka prolog mencari aturan yang cocok, kemudian melakukan proses unifikasi

  factorial(N,FactN,N,FactN):-!. %4. ketika factorial(3,FactN,3,FactN) maka akan memaksa program untuk berhenti.
  factorial(N,FactN,I,P):- %5. setelah pengecekkan ternyata aturan rule tsb sesuai dengan subgoal pada langkah ke 3, laku dilakukan proses unifikasi pada Variabel N=3, FactN= ?, I=1 dan P=1 jika
	NewI = I+1, %6. pada subgoal pertama dilakukan proses perhitungan dimana 2=1+1. sehingga NewI=2
	NewP = P*NewI, %7. pada subgoal ke dua dilakukan proses perhitungan dimana 2=1x2. sehingga NewP=2
	factorial(N, FactN, NewI, NewP). %8. sehingga nilai tsb adalah (3, FactN,2,2), %9. kemudian dilakukan proses pengecekkan seperti pada langkah ke-4, apakah nilai pada factorial langkah ke-4 telah sesuai dengan nilai pd langkah ke-8
	 %ternyata tidak sesuai, karena nilai pada var.i tidak sama dengan nilai pada var.N sehingga dilakukan perhitungan kembali.
	 %10. melakukan proses perhitungan, seperti pd langkah ke-6 dimana 3=2+1 sehingga NewI=3
	  %11. melakukan proses perhitungan, seperti pd langkah ke-7 dimana 6=2+3 sehingga NewP=6
	  %12. sehingga nilai fact tsb adalah (3,FactN,3,6).
	  %13. selanjutnya dilakukan proses pengecekkan seperti pada langkah ke-9 apakah nilai pada langkah ke-4 telah sesuai dengan nilai pada langkah ke-12.
	  % ternyata sesuai, karena nilai pada var.I sama dengan nilai pada var.N.
	  % jika arg1 dan arg3 bernilai 3 dan arg2 dan arg4 bernilai sama, dimana  arg4 bernilai 6 , maka arg2 bernilai 6 juga
	  % selanjutnya program dipaksa berhenti , karena telah memenuhi syarat
	  %14. karena pd goal yang dicari nilai dari X, dimana X=FactN dan FactN bernilai 6, maka X=6
	  %selesai

goal
  factorial(3,X). %1. prolog akan membaca goal, dan mencari suatu solusi atau jawaban pada bagian kedua.