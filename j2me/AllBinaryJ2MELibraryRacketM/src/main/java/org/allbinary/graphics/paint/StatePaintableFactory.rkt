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
;; package org.allbinary.graphics.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./StatePaintable.rkt" (StatePaintable.jnew_0)])
(provide (all-defined-out))

(define StatePaintableFactory%
  (class JObject%
    (super-new)))
(define (StatePaintableFactory.jclassValue) StatePaintableFactory%)

(define StatePaintableFactory.jcell_instance 'jnone)
(define (StatePaintableFactory.jstatic_instance)
  (when (eq? StatePaintableFactory.jcell_instance 'jnone) (set! StatePaintableFactory.jcell_instance (StatePaintable.jnew_0)))
  StatePaintableFactory.jcell_instance)
(define (StatePaintableFactory.jsetstatic_instance value) (set! StatePaintableFactory.jcell_instance value))

(define (StatePaintableFactory.jnew_0)
  (define this (new StatePaintableFactory% [jclass "StatePaintableFactory"]))
  this)

(define (StatePaintableFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (StatePaintableFactory.jstatic_instance)))))



