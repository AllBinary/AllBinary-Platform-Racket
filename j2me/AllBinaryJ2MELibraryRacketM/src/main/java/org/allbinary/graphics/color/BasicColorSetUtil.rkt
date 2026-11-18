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
(provide (all-defined-out))

(define BasicColorSetUtil%
  (class JObject%
    (super-new)
    (define/public (jm_setBasicColorP_2 _graphics _basicColor)
    (let ()
      (let/ec jreturn
        (send _graphics jm_setColor_1 (send _basicColor jm_intValue_0)))))
    (define/public (jm_setBasicColorP3_3 _graphics _basicColor _value)
    (let ()
      (let/ec jreturn
        (send _graphics jm_setColor_1 _value))))))
(define (BasicColorSetUtil.jclassValue) BasicColorSetUtil%)

(define BasicColorSetUtil.jcell_instance 'jnone)
(define (BasicColorSetUtil.jstatic_instance)
  (when (eq? BasicColorSetUtil.jcell_instance 'jnone) (set! BasicColorSetUtil.jcell_instance (BasicColorSetUtil.jnew_0)))
  BasicColorSetUtil.jcell_instance)
(define (BasicColorSetUtil.jsetstatic_instance value) (set! BasicColorSetUtil.jcell_instance value))

(define (BasicColorSetUtil.jnew_0)
  (define this (new BasicColorSetUtil% [jclass "BasicColorSetUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (BasicColorSetUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicColorSetUtil.jstatic_instance)))))



