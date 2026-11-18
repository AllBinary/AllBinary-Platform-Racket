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
;; package org.allbinary.graphics.color

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define BasicColorArrayIndexer%
  (class JObject%
    (super-new)
    (field [f_basicColorArray JR.null])
    (field [f_circularIndexUtil JR.null])
    (define/public (jm_next_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_next_0))))
    (define/public (jm_get_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_basicColorArray this) (send (get-field f_circularIndexUtil this) jm_getIndex_0))))))
    (define/public (jm_getBasicColorArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColorArray this)))))))
(define (BasicColorArrayIndexer.jclassValue) BasicColorArrayIndexer%)

(define (BasicColorArrayIndexer.jnew_1 _basicColorArray)
  (define this (new BasicColorArrayIndexer% [jclass "BasicColorArrayIndexer"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_basicColorArray this _basicColorArray)
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (vector-length (get-field f_basicColorArray this))))))
  this)



