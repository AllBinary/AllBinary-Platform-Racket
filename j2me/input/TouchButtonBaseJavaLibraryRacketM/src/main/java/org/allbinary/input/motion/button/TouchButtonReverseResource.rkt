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

(define TouchButtonReverseResource%
  (class TouchButtonResource%
    (super-new)))
(define (TouchButtonReverseResource.jclassValue) TouchButtonReverseResource%)

(define TouchButtonReverseResource.jcell_instance 'jnone)
(define (TouchButtonReverseResource.jstatic_instance)
  (when (eq? TouchButtonReverseResource.jcell_instance 'jnone) (set! TouchButtonReverseResource.jcell_instance (TouchButtonReverseResource.jnew_0)))
  TouchButtonReverseResource.jcell_instance)
(define (TouchButtonReverseResource.jsetstatic_instance value) (set! TouchButtonReverseResource.jcell_instance value))

(define (TouchButtonReverseResource.jnew_0)
  (define this (new TouchButtonReverseResource% [jclass "TouchButtonReverseResource"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonReverseResource.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonReverseResource.jstatic_instance)))))



