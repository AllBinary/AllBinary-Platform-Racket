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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Integer.rkt")
(provide (all-defined-out))

(define GameInputProcessor%
  (class JObject%
    (super-new)
    (define/public (jm_processEvent_2 _allbinaryLayerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processReleasedEvent_2 _allbinaryLayerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processAnalog_3 _allbinaryLayerManager _gameKeyEvent _analogValue)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_process_2 _allbinaryLayerManager _keyAsInteger)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processReleased_2 _allbinaryLayerManager _keyAsInteger)
    (let ()
      (let/ec jreturn (void))))))
(define (GameInputProcessor.jclassValue) GameInputProcessor%)

(define GameInputProcessor.jcell_instance 'jnone)
(define (GameInputProcessor.jstatic_instance)
  (when (eq? GameInputProcessor.jcell_instance 'jnone) (set! GameInputProcessor.jcell_instance (GameInputProcessor.jnew_0)))
  GameInputProcessor.jcell_instance)
(define (GameInputProcessor.jsetstatic_instance value) (set! GameInputProcessor.jcell_instance value))

(define (GameInputProcessor.jnew_0)
  (define this (new GameInputProcessor% [jclass "GameInputProcessor"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameInputProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameInputProcessor.jstatic_instance)))))



