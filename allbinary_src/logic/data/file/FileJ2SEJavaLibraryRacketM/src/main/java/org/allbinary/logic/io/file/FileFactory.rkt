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
;; package org.allbinary.logic.io.file

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./AbFile.rkt" (AbFile.jm_createAbFileFromRawPath_1 AbFile.jm_createAbFileWithChild_2 AbFile.jm_createAbFile_1)])
(provide (all-defined-out))

(define FileFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_1 _filePath)
    (let ()
      (let/ec jreturn
        (jreturn (AbFile.jm_createAbFileFromRawPath_1 _filePath)))))
    (define/public (jm_getInstance_2 _file _childFilePath)
    (let ()
      (let/ec jreturn
        (jreturn (AbFile.jm_createAbFileWithChild_2 _file _childFilePath)))))
    (define/public (jm_isFile_1 _path)
    (let ([_file JR.null])
      (let/ec jreturn
        (set! _file (AbFile.jm_createAbFile_1 _path))
        (if (send _file jm_exists_0)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))))
(define (FileFactory.jclassValue) FileFactory%)

(define FileFactory.jcell_instance 'jnone)
(define (FileFactory.jstatic_instance)
  (when (eq? FileFactory.jcell_instance 'jnone) (set! FileFactory.jcell_instance (FileFactory.jnew_0)))
  FileFactory.jcell_instance)
(define (FileFactory.jsetstatic_instance value) (set! FileFactory.jcell_instance value))

(define (FileFactory.jnew_0)
  (define this (new FileFactory% [jclass "FileFactory"]))
  this)

(define (FileFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FileFactory.jstatic_instance)))))



