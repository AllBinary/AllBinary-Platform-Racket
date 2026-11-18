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

(define TouchButtonGenericActionResource%
  (class TouchButtonResource%
    (super-new)))
(define (TouchButtonGenericActionResource.jclassValue) TouchButtonGenericActionResource%)

(define TouchButtonGenericActionResource.jcell_instance 'jnone)
(define (TouchButtonGenericActionResource.jstatic_instance)
  (when (eq? TouchButtonGenericActionResource.jcell_instance 'jnone) (set! TouchButtonGenericActionResource.jcell_instance (TouchButtonGenericActionResource.jnew_0)))
  TouchButtonGenericActionResource.jcell_instance)
(define (TouchButtonGenericActionResource.jsetstatic_instance value) (set! TouchButtonGenericActionResource.jcell_instance value))

(define (TouchButtonGenericActionResource.jnew_0)
  (define this (new TouchButtonGenericActionResource% [jclass "TouchButtonGenericActionResource"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonGenericActionResource.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonGenericActionResource.jstatic_instance)))))



