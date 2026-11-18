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
;; package org.allbinary

(require racket/class racket/lazy-require
  "../../allbinary_java.rkt")
(provide (all-defined-out))

(define AndroidUtil%
  (class JObject%
    (super-new)))
(define (AndroidUtil.jclassValue) AndroidUtil%)

(define (AndroidUtil.jnew_0)
  (define this (new AndroidUtil% [jclass "AndroidUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AndroidUtil.jm_isMemoryRestrictive_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))

(define (AndroidUtil.jm_isAndroid_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))



