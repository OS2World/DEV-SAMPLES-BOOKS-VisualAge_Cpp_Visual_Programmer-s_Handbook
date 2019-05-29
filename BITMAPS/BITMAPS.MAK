bitmaps.dll: bitmaps.obj bitmaps.def bitmaps.res
  icc bitmaps.obj /Febitmaps.dll bitmaps.def
  rc bitmaps.res bitmaps.dll

bitmaps.obj: bitmaps.c
  icc -c+ bitmaps.c

bitmaps.res: bitmaps.rc  plus.bmp minus.bmp times.bmp divide.bmp train.ico notebook.ico flatfile.ico
  rc -r bitmaps.rc
