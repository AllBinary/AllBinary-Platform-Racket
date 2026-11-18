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
;; package org.allbinary.logic.util.cache

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define CachePolicy%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (field [f_maxTime 0])
    (field [f_maxSize 0])
    (define/public (jm_getMaxTime_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_maxTime this)))))
    (define/public (jm_setMaxTime_1 _maxTime)
    (let ()
      (let/ec jreturn
        (set-field! f_maxTime this _maxTime))))
    (define/public (jm_getMaxSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_maxSize this)))))
    (define/public (jm_setMaxSize_1 _maxSize)
    (let ()
      (let/ec jreturn
        (set-field! f_maxSize this _maxSize))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))))
(define (CachePolicy.jclassValue) CachePolicy%)

(define (CachePolicy.jnew_3 _name _maxTime _maxSize)
  (define this (new CachePolicy% [jclass "CachePolicy"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name)
        (send this jm_setMaxTime_1 _maxTime)
        (send this jm_setMaxSize_1 _maxSize)))
  this)



