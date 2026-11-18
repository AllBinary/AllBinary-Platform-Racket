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
  "../../../../allbinary_java.rkt"
  "../../../../java/io/FileNotFoundException.rkt"
  "../../../../java/io/FileOutputStream.rkt")
(provide (all-defined-out))

(define AbFileOutputStream%
  (class FileOutputStream%
    (super-new)))
(define (AbFileOutputStream.jclassValue) AbFileOutputStream%)

(define (AbFileOutputStream.jnew_2 _name _append)
  (define this (new AbFileOutputStream% [jclass "AbFileOutputStream"]))
    (let ()
      (let/ec jreturn
        (JR.superInit this 'jsuper_2 _name _append)))
  this)

(define (AbFileOutputStream.jm_createFromAbFile_1 _file)
    (let ()
      (let/ec jreturn
        (jreturn (AbFileOutputStream.jnew_2 (send _file jm_getPath_0) #f)))))

(define (AbFileOutputStream.jm_createFromAbFileAppend_2 _file _append)
    (let ()
      (let/ec jreturn
        (jreturn (AbFileOutputStream.jnew_2 (send _file jm_getPath_0) _append)))))

(define (AbFileOutputStream.jm_createFromFilePath_1 _name)
    (let ()
      (let/ec jreturn
        (jreturn (AbFileOutputStream.jnew_2 _name #f)))))

(define (AbFileOutputStream.jm_createFromFilePathAppend_2 _name _append)
    (let ()
      (let/ec jreturn
        (jreturn (AbFileOutputStream.jnew_2 _name _append)))))



