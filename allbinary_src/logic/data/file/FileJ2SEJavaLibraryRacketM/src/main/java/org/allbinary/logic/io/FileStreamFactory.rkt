#lang racket/base
;;
;; AllBinary Open License Version 1
;; Copyright (c) 2011 AllBinary
;; 
;; By agreeing to this license you and any business entity you represent are
;; legally bound to the AllBinary Open License Version 1 legal agreement.
;; 
;; You may obtain the AllBinary Open License Version 1 legal agreement from
;; AllBinary or the root directory of AllBinary's AllBinary Platform repository.
;; 
;; Created By: Travis Berthelot
;;  
;; Generated Code Do Not Modify
;; package org.allbinary.logic.io

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/io/file/AbFile.rkt" (AbFile.jm_createAbFileFromAbPath_1)])
(lazy-require ["../../../../org/allbinary/logic/io/path/AbPath.rkt" (AbPath.jnew_2)])
(lazy-require ["./AbFileInputStream.rkt" (AbFileInputStream.jm_createFromAbFile_1)])
(lazy-require ["./AbFileOutputStream.rkt" (AbFileOutputStream.jm_createFromAbFile_1)])
(provide (all-defined-out))

(define FileStreamFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getFileInputStreamInstance_2 _path _fileName)
    (let ([_FILEABPATH JR.null][_file JR.null])
      (let/ec jreturn
        (set! _FILEABPATH (AbPath.jnew_2 _path _fileName))
        (set! _file (AbFile.jm_createAbFileFromAbPath_1 _FILEABPATH))
        (jreturn (AbFileInputStream.jm_createFromAbFile_1 _file)))))
    (define/public (jm_getFileOutputStreamInstance_2 _path _fileName)
    (let ([_FILEABPATH JR.null][_file JR.null])
      (let/ec jreturn
        (set! _FILEABPATH (AbPath.jnew_2 _path _fileName))
        (set! _file (AbFile.jm_createAbFileFromAbPath_1 _FILEABPATH))
        (when (send _file jm_exists_0)
            (begin
            (send _file jm_delete_0)
            (send _file jm_createNewFile_0)))
        (jreturn (AbFileOutputStream.jm_createFromAbFile_1 _file)))))
    (define/public (jm_delete_2 _path _fileName)
    (let ([_FILEABPATH JR.null][_file JR.null])
      (let/ec jreturn
        (set! _FILEABPATH (AbPath.jnew_2 _path _fileName))
        (set! _file (AbFile.jm_createAbFileFromAbPath_1 _FILEABPATH))
        (send _file jm_delete_0))))))
(define (FileStreamFactory.jclassValue) FileStreamFactory%)

(define FileStreamFactory.jcell_SINGLETON 'jnone)
(define (FileStreamFactory.jstatic_SINGLETON)
  (when (eq? FileStreamFactory.jcell_SINGLETON 'jnone) (set! FileStreamFactory.jcell_SINGLETON (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  FileStreamFactory.jcell_SINGLETON)
(define (FileStreamFactory.jsetstatic_SINGLETON value) (set! FileStreamFactory.jcell_SINGLETON value))

(define (FileStreamFactory.jnew_0)
  (define this (new FileStreamFactory% [jclass "FileStreamFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (FileStreamFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (FileStreamFactory.jstatic_SINGLETON) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! FileStreamFactory.jcell_SINGLETON (FileStreamFactory.jnew_0))))
        (jreturn (FileStreamFactory.jstatic_SINGLETON)))))



