%NUSI REST0%

predicates
  makanan(symbol,integer,long) - nondeterm (o,o,i)
  minuman(symbol,integer,long) - nondeterm (o,o,i)
  menu(symbol,integer,long) - nondeterm (o,o,i)

clauses
  makanan(satekambing,2,12000).
  makanan(ayam,4,25000).
  makanan(soto,1,30000).

  minuman(esjeruk,6,8000).
  minuman(esteh,5,20000).
  minuman(jus,2,25000).

  menu(Jenis,Jumlah,Harga):- makanan(Jenis,Jumlah,Harga); minuman(Jenis,Jumlah,Harga).
goal
  menu(Jenis,Jumlah,25000). 