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

(define TouchButtonTurnRightResource%
  (class TouchButtonResource%
    (super-new)))
(define (TouchButtonTurnRightResource.jclassValue) TouchButtonTurnRightResource%)

(define TouchButtonTurnRightResource.jcell_instance 'jnone)
(define (TouchButtonTurnRightResource.jstatic_instance)
  (when (eq? TouchButtonTurnRightResource.jcell_instance 'jnone) (set! TouchButtonTurnRightResource.jcell_instance (TouchButtonTurnRightResource.jnew_0)))
  TouchButtonTurnRightResource.jcell_instance)
(define (TouchButtonTurnRightResource.jsetstatic_instance value) (set! TouchButtonTurnRightResource.jcell_instance value))

(define (TouchButtonTurnRightResource.jnew_0)
  (define this (new TouchButtonTurnRightResource% [jclass "TouchButtonTurnRightResource"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonTurnRightResource.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonTurnRightResource.jstatic_instance)))))



