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
  "../../../../../allbinary_java.rkt"
  "./AbstractArrayListPool.rkt")
(provide (all-defined-out))

(define BasicArrayListResetablePool%
  (class AbstractArrayListPool%
    (super-new)
    (define/override (jm_clear_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_remove_1 _key)
    (let ([_size JR.null])
      (let/ec jreturn
        (set! _size (JR.className (get-field f_buffers this)))
        (if (> _size 0)
            (begin
            (jreturn (JR.className (get-field f_buffers this))))
            (begin
            (jreturn (send (get-field f_cacheableInterfaceFactoryInterface this) jm_getInstance_1 _key)))))))))
(define (BasicArrayListResetablePool.jclassValue) BasicArrayListResetablePool%)

(define (BasicArrayListResetablePool.jnew_1 _cacheableInterfaceFactoryInterface)
  (define this (new BasicArrayListResetablePool% [jclass "BasicArrayListResetablePool"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



