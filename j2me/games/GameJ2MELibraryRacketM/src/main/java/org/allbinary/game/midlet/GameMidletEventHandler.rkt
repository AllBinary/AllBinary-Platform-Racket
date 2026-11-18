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
;; package org.allbinary.game.midlet

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(provide (all-defined-out))

(define GameMidletEventHandler%
  (class BasicEventHandler%
    (super-new)
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_gameMidletEventListener JR.null])
      (let/ec jreturn
        (set! _gameMidletEventListener _eventListenerInterface)
        (send _gameMidletEventListener jm_onGameEnd_1 _eventObject))))))
(define (GameMidletEventHandler.jclassValue) GameMidletEventHandler%)

(define GameMidletEventHandler.jcell_gameKeyEventHandler 'jnone)
(define (GameMidletEventHandler.jstatic_gameKeyEventHandler)
  (when (eq? GameMidletEventHandler.jcell_gameKeyEventHandler 'jnone) (set! GameMidletEventHandler.jcell_gameKeyEventHandler (GameMidletEventHandler.jnew_0)))
  GameMidletEventHandler.jcell_gameKeyEventHandler)
(define (GameMidletEventHandler.jsetstatic_gameKeyEventHandler value) (set! GameMidletEventHandler.jcell_gameKeyEventHandler value))

(define (GameMidletEventHandler.jnew_0)
  (define this (new GameMidletEventHandler% [jclass "GameMidletEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameMidletEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameMidletEventHandler.jstatic_gameKeyEventHandler)))))



