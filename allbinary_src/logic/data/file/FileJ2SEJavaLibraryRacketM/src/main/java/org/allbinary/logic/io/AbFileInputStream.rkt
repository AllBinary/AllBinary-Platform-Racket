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
  "../../../../java/io/File.rkt"
  "../../../../java/io/FileInputStream.rkt"
  "../../../../java/io/FileNotFoundException.rkt")
(lazy-require ["../../../../org/allbinary/logic/io/file/AbFileNativeUtil.rkt" (AbFileNativeUtil.jm_get_1)])
(provide (all-defined-out))

(define AbFileInputStream%
  (class FileInputStream%
    (super-new)))
(define (AbFileInputStream.jclassValue) AbFileInputStream%)

(define (AbFileInputStream.jnew_1 _name)
  (define this (new AbFileInputStream% [jclass "AbFileInputStream"]))
    (let ()
      (let/ec jreturn
        (JR.superInit this 'jsuper_1 _name)))
  this)

(define (AbFileInputStream.jm_createFromAbFile_1 _file)
    (let ()
      (let/ec jreturn
        (jreturn (AbFileInputStream.jnew_1 (JR.className (AbFileNativeUtil.jm_get_1 _file)))))))

(define (AbFileInputStream.jm_createFromFile_1 _file)
    (let ()
      (let/ec jreturn
        (jreturn (AbFileInputStream.jnew_1 (send _file jm_getPath_0))))))



