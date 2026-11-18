#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.util

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./BasicArrayList.rkt")
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define BasicArrayListS%
  (class BasicArrayList%
    (super-new)))
(define (BasicArrayListS.jclassValue) BasicArrayListS%)

(define (BasicArrayListS.jnew_1 _size)
  (define this (new BasicArrayListS% [jclass "BasicArrayListS"]))
    (let ()
      (let/ec jreturn
        (void)
        (when (< _size 0)
            (begin
            (raise (JR.newException "IllegalArgumentException" (send (send (send (StringMaker.jnew_0) jm_append_1 "Init Size Exception: ") jm_appendint_1 _size) jm_toString_0)))))
        (set-field! f_objectArray this (JR.newArray JR.null _size))))
  this)



