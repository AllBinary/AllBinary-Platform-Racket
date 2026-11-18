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
  "./AbFileInputStream.rkt")
(lazy-require ["../../../../org/allbinary/logic/io/file/AbFileNativeUtil.rkt" (AbFileNativeUtil.jm_get_1)])
(provide (all-defined-out))

(define AbFileLocalInputStream%
  (class AbFileInputStream%
    (super-new)))
(define (AbFileLocalInputStream.jclassValue) AbFileLocalInputStream%)

(define (AbFileLocalInputStream.jnew_1 _file)
  (define this (new AbFileLocalInputStream% [jclass "AbFileLocalInputStream"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



