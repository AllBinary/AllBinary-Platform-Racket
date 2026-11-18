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
;; package org.allbinary.midlet

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./AllBinaryMidlet.rkt" (AllBinaryMidlet.jm_getNullInstance_0)])
(provide (all-defined-out))

(define MidletFactoryInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinaryMidlet.jm_getNullInstance_0)))))))
(define (MidletFactoryInterface.jclassValue) MidletFactoryInterface%)

(define (MidletFactoryInterface.jnew_0)
  (define this (new MidletFactoryInterface% [jclass "MidletFactoryInterface"]))
  this)



