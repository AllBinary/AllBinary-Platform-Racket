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

(define J2MEUtil%
  (class JObject%
    (super-new)))

(define (J2MEUtil.jnew_0)
  (define this (new J2MEUtil% [jclass "J2MEUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (J2MEUtil.jm_isJ2ME_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))

(define (J2MEUtil.jm_isJ2SE_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))

(define (J2MEUtil.jm_isHTML_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))



