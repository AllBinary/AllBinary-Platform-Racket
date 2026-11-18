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

(define TouchButtonStartResource%
  (class TouchButtonResource%
    (super-new)))
(define (TouchButtonStartResource.jclassValue) TouchButtonStartResource%)

(define TouchButtonStartResource.jcell_instance 'jnone)
(define (TouchButtonStartResource.jstatic_instance)
  (when (eq? TouchButtonStartResource.jcell_instance 'jnone) (set! TouchButtonStartResource.jcell_instance (TouchButtonStartResource.jnew_0)))
  TouchButtonStartResource.jcell_instance)
(define (TouchButtonStartResource.jsetstatic_instance value) (set! TouchButtonStartResource.jcell_instance value))

(define (TouchButtonStartResource.jnew_0)
  (define this (new TouchButtonStartResource% [jclass "TouchButtonStartResource"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonStartResource.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonStartResource.jstatic_instance)))))



