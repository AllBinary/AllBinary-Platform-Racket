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

(define TouchButtonStrafeLeftResource%
  (class TouchButtonResource%
    (super-new)))
(define (TouchButtonStrafeLeftResource.jclassValue) TouchButtonStrafeLeftResource%)

(define TouchButtonStrafeLeftResource.jcell_instance 'jnone)
(define (TouchButtonStrafeLeftResource.jstatic_instance)
  (when (eq? TouchButtonStrafeLeftResource.jcell_instance 'jnone) (set! TouchButtonStrafeLeftResource.jcell_instance (TouchButtonStrafeLeftResource.jnew_0)))
  TouchButtonStrafeLeftResource.jcell_instance)
(define (TouchButtonStrafeLeftResource.jsetstatic_instance value) (set! TouchButtonStrafeLeftResource.jcell_instance value))

(define (TouchButtonStrafeLeftResource.jnew_0)
  (define this (new TouchButtonStrafeLeftResource% [jclass "TouchButtonStrafeLeftResource"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonStrafeLeftResource.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonStrafeLeftResource.jstatic_instance)))))



