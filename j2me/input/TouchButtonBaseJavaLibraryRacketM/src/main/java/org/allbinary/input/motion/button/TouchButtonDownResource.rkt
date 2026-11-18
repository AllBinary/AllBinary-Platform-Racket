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

(define TouchButtonDownResource%
  (class TouchButtonResource%
    (super-new)))
(define (TouchButtonDownResource.jclassValue) TouchButtonDownResource%)

(define TouchButtonDownResource.jcell_instance 'jnone)
(define (TouchButtonDownResource.jstatic_instance)
  (when (eq? TouchButtonDownResource.jcell_instance 'jnone) (set! TouchButtonDownResource.jcell_instance (TouchButtonDownResource.jnew_0)))
  TouchButtonDownResource.jcell_instance)
(define (TouchButtonDownResource.jsetstatic_instance value) (set! TouchButtonDownResource.jcell_instance value))

(define (TouchButtonDownResource.jnew_0)
  (define this (new TouchButtonDownResource% [jclass "TouchButtonDownResource"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonDownResource.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonDownResource.jstatic_instance)))))



