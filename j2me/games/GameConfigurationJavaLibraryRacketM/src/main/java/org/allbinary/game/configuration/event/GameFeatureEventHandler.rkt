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

(define GameFeatureEventHandler%
  (class BasicEventHandler%
    (super-new)
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_gameFeatureListenerInterface JR.null])
      (let/ec jreturn
        (set! _gameFeatureListenerInterface _eventListenerInterface)
        (send _gameFeatureListenerInterface jm_onGameFeatureChange_1 _eventObject))))))
(define (GameFeatureEventHandler.jclassValue) GameFeatureEventHandler%)

(define GameFeatureEventHandler.jcell_gameKeyEventHandler 'jnone)
(define (GameFeatureEventHandler.jstatic_gameKeyEventHandler)
  (when (eq? GameFeatureEventHandler.jcell_gameKeyEventHandler 'jnone) (set! GameFeatureEventHandler.jcell_gameKeyEventHandler (GameFeatureEventHandler.jnew_0)))
  GameFeatureEventHandler.jcell_gameKeyEventHandler)
(define (GameFeatureEventHandler.jsetstatic_gameKeyEventHandler value) (set! GameFeatureEventHandler.jcell_gameKeyEventHandler value))

(define (GameFeatureEventHandler.jnew_0)
  (define this (new GameFeatureEventHandler% [jclass "GameFeatureEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameFeatureEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameFeatureEventHandler.jstatic_gameKeyEventHandler)))))



