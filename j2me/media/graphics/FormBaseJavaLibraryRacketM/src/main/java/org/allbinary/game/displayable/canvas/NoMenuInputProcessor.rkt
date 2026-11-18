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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./BasicMenuInputProcessor.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/NullCanvas.rkt" (NullCanvas.jstatic_NULL_CANVAS)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define NoMenuInputProcessor%
  (class BasicMenuInputProcessor%
    (super-new)
    (define/override (jm_onDownGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_onUpGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_onMotionGestureEvent_1 _motionGestureEvent)
    (let ()
      (let/ec jreturn (void))))))
(define (NoMenuInputProcessor.jclassValue) NoMenuInputProcessor%)

(define NoMenuInputProcessor.jcell_SINGLETON 'jnone)
(define (NoMenuInputProcessor.jstatic_SINGLETON)
  (when (eq? NoMenuInputProcessor.jcell_SINGLETON 'jnone) (set! NoMenuInputProcessor.jcell_SINGLETON (NoMenuInputProcessor.jnew_0)))
  NoMenuInputProcessor.jcell_SINGLETON)
(define (NoMenuInputProcessor.jsetstatic_SINGLETON value) (set! NoMenuInputProcessor.jcell_SINGLETON value))

(define (NoMenuInputProcessor.jnew_0)
  (define this (new NoMenuInputProcessor% [jclass "NoMenuInputProcessor"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (NoMenuInputProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoMenuInputProcessor.jstatic_SINGLETON)))))



