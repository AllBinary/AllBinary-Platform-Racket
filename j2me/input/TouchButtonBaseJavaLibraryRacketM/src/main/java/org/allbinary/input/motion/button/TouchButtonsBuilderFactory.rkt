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
(lazy-require ["./NoButtonsTouchInputFactory.rkt" (NoButtonsTouchInputFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchButtonsBuilderFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoButtonsTouchInputFactory.jm_getInstance_0)))))))
(define (TouchButtonsBuilderFactory.jclassValue) TouchButtonsBuilderFactory%)

(define TouchButtonsBuilderFactory.jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY 'jnone)
(define (TouchButtonsBuilderFactory.jstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY)
  (when (eq? TouchButtonsBuilderFactory.jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY 'jnone) (set! TouchButtonsBuilderFactory.jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY (TouchButtonsBuilderFactory.jnew_0)))
  TouchButtonsBuilderFactory.jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY)
(define (TouchButtonsBuilderFactory.jsetstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY value) (set! TouchButtonsBuilderFactory.jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY value))

(define (TouchButtonsBuilderFactory.jnew_0)
  (define this (new TouchButtonsBuilderFactory% [jclass "TouchButtonsBuilderFactory"]))
  this)



