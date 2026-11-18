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
;; package org.allbinary.game

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/business/advertisement/GameAdStateBase.rkt"
  "../../../org/allbinary/input/event/VirtualKeyboardEventListenerInterface.rkt")
(lazy-require ["../../../org/allbinary/input/event/VirtualKeyboardEventHandler.rkt" (VirtualKeyboardEventHandler.jm_getInstance_0)])
(provide (all-defined-out))

(define GameAdState%
  (class GameAdStateBase%
    (super-new)
    (define/public (jm_onVirtualKeyboardEvent_1 _virtualKeyboardEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (super jm_onEvent_1 _eventObject))))))
(define (GameAdState.jclassValue) GameAdState%)

(define (GameAdState.jnew_1 _adConfiguration)
  (define this (new GameAdState% [jclass "GameAdState"]))
    (let ()
      (let/ec jreturn
        (void)
        (send (VirtualKeyboardEventHandler.jm_getInstance_0) jm_addListenerInterface_1 this)))
  this)



