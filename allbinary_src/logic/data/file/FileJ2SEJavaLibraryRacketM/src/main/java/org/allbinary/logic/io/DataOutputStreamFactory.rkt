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
(lazy-require ["./AbFileOutputStream.rkt" (AbFileOutputStream.jm_createFromAbFile_1)])
(lazy-require ["./AbDataOutputStream.rkt" (AbDataOutputStream.jnew_1)])
(lazy-require ["./FileStreamFactory.rkt" (FileStreamFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define DataOutputStreamFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstanceForAbFile_1 _file)
    (let ([_idFileOutputStream JR.null][_idOutData JR.null])
      (let/ec jreturn
        (set! _idFileOutputStream (AbFileOutputStream.jm_createFromAbFile_1 _file))
        (set! _idOutData (AbDataOutputStream.jnew_1 _idFileOutputStream))
        (jreturn _idOutData))))
    (define/public (jm_getInstance_2 _filePath _fileName)
    (let ([_fileStreamFactory JR.null][_fileOutputStream JR.null][_idOutData JR.null])
      (let/ec jreturn
        (set! _fileStreamFactory (FileStreamFactory.jm_getInstance_0))
        (set! _fileOutputStream (send _fileStreamFactory jm_getFileOutputStreamInstance_2 _filePath _fileName))
        (set! _idOutData (AbDataOutputStream.jnew_1 _fileOutputStream))
        (jreturn _idOutData))))))
(define (DataOutputStreamFactory.jclassValue) DataOutputStreamFactory%)

(define DataOutputStreamFactory.jcell_instance 'jnone)
(define (DataOutputStreamFactory.jstatic_instance)
  (when (eq? DataOutputStreamFactory.jcell_instance 'jnone) (set! DataOutputStreamFactory.jcell_instance (DataOutputStreamFactory.jnew_0)))
  DataOutputStreamFactory.jcell_instance)
(define (DataOutputStreamFactory.jsetstatic_instance value) (set! DataOutputStreamFactory.jcell_instance value))

(define (DataOutputStreamFactory.jnew_0)
  (define this (new DataOutputStreamFactory% [jclass "DataOutputStreamFactory"]))
  this)

(define (DataOutputStreamFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DataOutputStreamFactory.jstatic_instance)))))



