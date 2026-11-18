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
;; package org.allbinary.game.configuration.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(provide (all-defined-out))

(define GameInitializedEventHandler%
  (class BasicEventHandler%
    (super-new)
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_gameInitializedListenerInterface JR.null])
      (let/ec jreturn
        (set! _gameInitializedListenerInterface _eventListenerInterface)
        (send _gameInitializedListenerInterface jm_onGameInitialized_1 _eventObject))))))
(define (GameInitializedEventHandler.jclassValue) GameInitializedEventHandler%)

(define GameInitializedEventHandler.jcell_gameKeyEventHandler 'jnone)
(define (GameInitializedEventHandler.jstatic_gameKeyEventHandler)
  (when (eq? GameInitializedEventHandler.jcell_gameKeyEventHandler 'jnone) (set! GameInitializedEventHandler.jcell_gameKeyEventHandler (GameInitializedEventHandler.jnew_0)))
  GameInitializedEventHandler.jcell_gameKeyEventHandler)
(define (GameInitializedEventHandler.jsetstatic_gameKeyEventHandler value) (set! GameInitializedEventHandler.jcell_gameKeyEventHandler value))

(define (GameInitializedEventHandler.jnew_0)
  (define this (new GameInitializedEventHandler% [jclass "GameInitializedEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameInitializedEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameInitializedEventHandler.jstatic_gameKeyEventHandler)))))



