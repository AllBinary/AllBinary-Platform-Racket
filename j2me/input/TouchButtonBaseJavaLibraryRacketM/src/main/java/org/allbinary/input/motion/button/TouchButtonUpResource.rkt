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

(define TouchButtonUpResource%
  (class TouchButtonResource%
    (super-new)))
(define (TouchButtonUpResource.jclassValue) TouchButtonUpResource%)

(define TouchButtonUpResource.jcell_instance 'jnone)
(define (TouchButtonUpResource.jstatic_instance)
  (when (eq? TouchButtonUpResource.jcell_instance 'jnone) (set! TouchButtonUpResource.jcell_instance (TouchButtonUpResource.jnew_0)))
  TouchButtonUpResource.jcell_instance)
(define (TouchButtonUpResource.jsetstatic_instance value) (set! TouchButtonUpResource.jcell_instance value))

(define (TouchButtonUpResource.jnew_0)
  (define this (new TouchButtonUpResource% [jclass "TouchButtonUpResource"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonUpResource.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonUpResource.jstatic_instance)))))



