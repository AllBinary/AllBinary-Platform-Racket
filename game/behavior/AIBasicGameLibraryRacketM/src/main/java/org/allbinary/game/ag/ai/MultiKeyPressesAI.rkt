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
;; package org.allbinary.game.ag.ai

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/lang/Integer.rkt"
  "./KeyPressesAI.rkt")
(lazy-require ["../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define MultiKeyPressesAI%
  (class KeyPressesAI%
    (super-new)
    (field [f_toggleTimeHelper JR.null])
    (field [f_gameTickTimeDelayHelper JR.null])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_update_0)
    (let ([_gameInput JR.null][_keys JR.null][_size JR.null][_key JR.null][_index JR.null])
      (let/ec jreturn
        (set! _gameInput (send this jm_getGameInput_0))
        (set! _keys (get-field f_keys this))
        (set! _size (vector-length _keys))
        (if (send this jm_isOn_0)
            (begin
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _key (JR.className (vector-ref _keys _index)))
                (when (not (= _key (JR.i32 (- 1))))
                    (begin
                    (send _gameInput jm_add_1 (JR.className (get-field f_gameKeyEventFactory this))))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop))))))
            (begin
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _key (JR.className (vector-ref _keys _index)))
                (when (not (= _key (JR.i32 (- 1))))
                    (begin
                    (send _gameInput jm_addForRemoval_1 (JR.className (get-field f_gameKeyEventFactory this))))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
    (define/override (jm_toggle_0)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_toggleTimeHelper this) jm_isTime_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this)))
            (begin
            (super jm_toggle_0)
            (send this jm_update_0))))))
    (define/override (jm_disable_0)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_toggleTimeHelper this) jm_isTime_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this)))
            (begin
            (super jm_disable_0)
            (send this jm_update_0))))))
    (define/override (jm_enable_0)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_toggleTimeHelper this) jm_isTime_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this)))
            (begin
            (super jm_enable_0)
            (send this jm_update_0))))))))
(define (MultiKeyPressesAI.jclassValue) MultiKeyPressesAI%)

(define (MultiKeyPressesAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)
  (define this (new MultiKeyPressesAI% [jclass "MultiKeyPressesAI"]))
    (set-field! f_toggleTimeHelper this (TimeDelayHelper.jnew_1 600))
    (set-field! f_gameTickTimeDelayHelper this (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_update_0)))
  this)



