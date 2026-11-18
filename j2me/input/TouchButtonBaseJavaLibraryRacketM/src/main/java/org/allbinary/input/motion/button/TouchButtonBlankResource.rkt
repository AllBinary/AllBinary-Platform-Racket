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

(define TouchButtonBlankResource%
  (class TouchButtonResource%
    (super-new)))
(define (TouchButtonBlankResource.jclassValue) TouchButtonBlankResource%)

(define TouchButtonBlankResource.jcell_instance 'jnone)
(define (TouchButtonBlankResource.jstatic_instance)
  (when (eq? TouchButtonBlankResource.jcell_instance 'jnone) (set! TouchButtonBlankResource.jcell_instance (TouchButtonBlankResource.jnew_0)))
  TouchButtonBlankResource.jcell_instance)
(define (TouchButtonBlankResource.jsetstatic_instance value) (set! TouchButtonBlankResource.jcell_instance value))

(define (TouchButtonBlankResource.jnew_0)
  (define this (new TouchButtonBlankResource% [jclass "TouchButtonBlankResource"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonBlankResource.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonBlankResource.jstatic_instance)))))



