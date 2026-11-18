#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary.graphics.displayable.screen

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define DisplayPointScalar%
  (class JObject%
    (super-new)
    (define/public (jm_processX_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn _value))))
    (define/public (jm_processY_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn _value))))
    (define/public (jm_process_1 _point)
    (let ()
      (let/ec jreturn
        (jreturn _point))))))
(define (DisplayPointScalar.jclassValue) DisplayPointScalar%)

(define DisplayPointScalar.jcell_instance 'jnone)
(define (DisplayPointScalar.jstatic_instance)
  (when (eq? DisplayPointScalar.jcell_instance 'jnone) (set! DisplayPointScalar.jcell_instance (DisplayPointScalar.jnew_0)))
  DisplayPointScalar.jcell_instance)
(define (DisplayPointScalar.jsetstatic_instance value) (set! DisplayPointScalar.jcell_instance value))

(define (DisplayPointScalar.jnew_0)
  (define this (new DisplayPointScalar% [jclass "DisplayPointScalar"]))
  this)

(define (DisplayPointScalar.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DisplayPointScalar.jstatic_instance)))))



