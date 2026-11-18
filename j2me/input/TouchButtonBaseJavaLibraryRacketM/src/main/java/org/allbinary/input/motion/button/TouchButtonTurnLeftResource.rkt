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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./TouchButtonResource.rkt")
(provide (all-defined-out))

(define TouchButtonTurnLeftResource%
  (class TouchButtonResource%
    (super-new)))
(define (TouchButtonTurnLeftResource.jclassValue) TouchButtonTurnLeftResource%)

(define TouchButtonTurnLeftResource.jcell_instance 'jnone)
(define (TouchButtonTurnLeftResource.jstatic_instance)
  (when (eq? TouchButtonTurnLeftResource.jcell_instance 'jnone) (set! TouchButtonTurnLeftResource.jcell_instance (TouchButtonTurnLeftResource.jnew_0)))
  TouchButtonTurnLeftResource.jcell_instance)
(define (TouchButtonTurnLeftResource.jsetstatic_instance value) (set! TouchButtonTurnLeftResource.jcell_instance value))

(define (TouchButtonTurnLeftResource.jnew_0)
  (define this (new TouchButtonTurnLeftResource% [jclass "TouchButtonTurnLeftResource"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonTurnLeftResource.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonTurnLeftResource.jstatic_instance)))))



