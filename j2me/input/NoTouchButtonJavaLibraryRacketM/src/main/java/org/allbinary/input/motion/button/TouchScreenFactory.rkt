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
  "../../../../../allbinary_java.rkt")
(lazy-require ["./TouchScreenTypesFactory.rkt" (TouchScreenTypesFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchScreenFactory%
  (class JObject%
    (super-new)
    (field [f_multiTouch #f])
    (field [f_touch #f])
    (field [f_touchScreenType JR.null])
    (define/public (jm_isMultiTouch_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_multiTouch this)))))
    (define/public (jm_setTouch_1 _touch)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isTouch_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_touch this)))))
    (define/public (jm_getTouchScreenType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_touchScreenType this)))))))
(define (TouchScreenFactory.jclassValue) TouchScreenFactory%)

(define TouchScreenFactory.jcell_SINGLETON 'jnone)
(define (TouchScreenFactory.jstatic_SINGLETON)
  (when (eq? TouchScreenFactory.jcell_SINGLETON 'jnone) (set! TouchScreenFactory.jcell_SINGLETON (TouchScreenFactory.jnew_0)))
  TouchScreenFactory.jcell_SINGLETON)
(define (TouchScreenFactory.jsetstatic_SINGLETON value) (set! TouchScreenFactory.jcell_SINGLETON value))

(define (TouchScreenFactory.jnew_0)
  (define this (new TouchScreenFactory% [jclass "TouchScreenFactory"]))
    
    
    (set-field! f_touchScreenType this (get-field f_NOTOUCH (TouchScreenTypesFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (TouchScreenFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchScreenFactory.jstatic_SINGLETON)))))



