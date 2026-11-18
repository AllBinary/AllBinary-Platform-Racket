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

(define TouchButtonFireResource%
  (class TouchButtonResource%
    (super-new)))
(define (TouchButtonFireResource.jclassValue) TouchButtonFireResource%)

(define TouchButtonFireResource.jcell_instance 'jnone)
(define (TouchButtonFireResource.jstatic_instance)
  (when (eq? TouchButtonFireResource.jcell_instance 'jnone) (set! TouchButtonFireResource.jcell_instance (TouchButtonFireResource.jnew_0)))
  TouchButtonFireResource.jcell_instance)
(define (TouchButtonFireResource.jsetstatic_instance value) (set! TouchButtonFireResource.jcell_instance value))

(define (TouchButtonFireResource.jnew_0)
  (define this (new TouchButtonFireResource% [jclass "TouchButtonFireResource"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonFireResource.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonFireResource.jstatic_instance)))))



