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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(provide (all-defined-out))

(define AnimationEventHandler%
  (class BasicEventHandler%
    (super-new)))
(define (AnimationEventHandler.jclassValue) AnimationEventHandler%)

(define AnimationEventHandler.jcell_eventHandler 'jnone)
(define (AnimationEventHandler.jstatic_eventHandler)
  (when (eq? AnimationEventHandler.jcell_eventHandler 'jnone) (set! AnimationEventHandler.jcell_eventHandler (AnimationEventHandler.jnew_0)))
  AnimationEventHandler.jcell_eventHandler)
(define (AnimationEventHandler.jsetstatic_eventHandler value) (set! AnimationEventHandler.jcell_eventHandler value))

(define (AnimationEventHandler.jnew_0)
  (define this (new AnimationEventHandler% [jclass "AnimationEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AnimationEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AnimationEventHandler.jstatic_eventHandler)))))



