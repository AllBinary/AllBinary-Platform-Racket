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

(define TouchButtonStrafeRightResource%
  (class TouchButtonResource%
    (super-new)))
(define (TouchButtonStrafeRightResource.jclassValue) TouchButtonStrafeRightResource%)

(define TouchButtonStrafeRightResource.jcell_instance 'jnone)
(define (TouchButtonStrafeRightResource.jstatic_instance)
  (when (eq? TouchButtonStrafeRightResource.jcell_instance 'jnone) (set! TouchButtonStrafeRightResource.jcell_instance (TouchButtonStrafeRightResource.jnew_0)))
  TouchButtonStrafeRightResource.jcell_instance)
(define (TouchButtonStrafeRightResource.jsetstatic_instance value) (set! TouchButtonStrafeRightResource.jcell_instance value))

(define (TouchButtonStrafeRightResource.jnew_0)
  (define this (new TouchButtonStrafeRightResource% [jclass "TouchButtonStrafeRightResource"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonStrafeRightResource.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonStrafeRightResource.jstatic_instance)))))



