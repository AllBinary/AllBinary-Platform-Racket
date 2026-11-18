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
;; package org.allbinary.game.ag.layer.hud.basic.time

(require racket/class racket/lazy-require
  "../../../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../../../org/allbinary/logic/math/PrimitiveLongSingleton.rkt" (PrimitiveLongSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/logic/math/PrimitiveLongUtil.rkt" (PrimitiveLongUtil.jm_createPowerOfTen_1)])
(lazy-require ["../../../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define HudTimer%
  (class JObject%
    (super-new)
    (field [f_startTime 0])
    (field [f_hundredthTime 0])
    (field [f_maxTime 0])
    (field [f_modifier 0])
    (field [f_hundrethsString JR.null])
    (field [f_totalDigits 0])
    (field [f_primitiveLongUtil JR.null])
    (field [f_MAX JR.null])
    (field [f_gameTickTimeDelayHelper JR.null])
    (define/public (jm_start_0)
    (let ()
      (let/ec jreturn
        (set-field! f_hundredthTime this 0)
        (set-field! f_startTime this (get-field f_startTime (get-field f_gameTickTimeDelayHelper this))))))
    (define/public (jm_get_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_hundredthTime this)))))
    (define/public (jm_update_0)
    (let ([_lastLowerTime JR.null][_currentTime JR.null])
      (let/ec jreturn
        (set! _lastLowerTime (get-field f_hundredthTime this))
        (set! _currentTime (JR.i64 (- (JR.i64 (+ (get-field f_modifier this) (get-field f_startTime (get-field f_gameTickTimeDelayHelper this)))) (get-field f_startTime this))))
        (when (< _currentTime 0)
            (begin
            (set! _currentTime 0)))
        (set-field! f_hundredthTime this (JR.ldiv _currentTime 100))
        (if (>= (get-field f_hundredthTime this) (get-field f_maxTime this))
            (begin
            (when (> (get-field f_startTime this) 0)
                (begin
                (set-field! f_hundrethsString this (get-field f_MAX this)))))
            (when (not (= _lastLowerTime (get-field f_hundredthTime this)))
            (begin
            (set-field! f_hundrethsString this (send (get-field f_primitiveLongUtil this) jm_getCharArray_1 (JR.i32 (get-field f_hundredthTime this))))
            (set-field! f_totalDigits this (send (get-field f_primitiveLongUtil this) jm_getCurrentTotalDigits_0))))))))
    (define/public (jm_reduce_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_modifier this (JR.i64 (- (get-field f_modifier this) _value))))))
    (define/public (jm_add_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_modifier this (JR.i64 (+ (get-field f_modifier this) _value))))))
    (define/public (jm_getTimeChars_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_hundrethsString this)))))
    (define/public (jm_getCurrentTotalDigits_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_totalDigits this)))))))
(define (HudTimer.jclassValue) HudTimer%)

(define (HudTimer.jnew_1 _maxTime)
  (define this (new HudTimer% [jclass "HudTimer"]))
    (set-field! f_startTime this (JR.i32 (- 1)))
    
    
    
    (set-field! f_hundrethsString this (get-field f_ZERO (PrimitiveLongSingleton.jm_getInstance_0)))
    (set-field! f_totalDigits this 1)
    
    (set-field! f_MAX this (vector (char->integer #\L) (char->integer #\O) (char->integer #\L)))
    (set-field! f_gameTickTimeDelayHelper this (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_primitiveLongUtil this (PrimitiveLongUtil.jm_createPowerOfTen_1 _maxTime))
        (set-field! f_maxTime this _maxTime)))
  this)



