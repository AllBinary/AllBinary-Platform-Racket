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
;; package org.allbinary.android.input.motion

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(lazy-require ["./AnalogControllerConfigurationFactory.rkt" (AnalogControllerConfigurationFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define AnalogControllerHelper%
  (class JObject%
    (super-new)
    (field [f_reduceTimeFactor 0])
    (field [f_SCALE_VALUE 0])
    (field [f_rightTimeElapsedHelper JR.null])
    (field [f_leftTimeElapsedHelper JR.null])
    (field [f_downTimeElapsedHelper JR.null])
    (field [f_upTimeElapsedHelper JR.null])
    (define/public (jm_right_2 _collidableDestroyableDamageableLayer _xAnalogValue)
    (let ()
      (let/ec jreturn
        (set-field! f_delay (get-field f_rightTimeElapsedHelper this) (arithmetic-shift (JR.i32 (- (get-field f_SCALE_VALUE this) _xAnalogValue)) (- (bitwise-and (get-field f_reduceTimeFactor this) 31))))
        (when (send (get-field f_rightTimeElapsedHelper this) jm_isTimeTNT_0)
            (begin
            (send _collidableDestroyableDamageableLayer jm_right_0))))))
    (define/public (jm_left_2 _collidableDestroyableDamageableLayer _xAnalogValue)
    (let ()
      (let/ec jreturn
        (set-field! f_delay (get-field f_leftTimeElapsedHelper this) (arithmetic-shift (JR.i32 (+ (get-field f_SCALE_VALUE this) _xAnalogValue)) (- (bitwise-and (get-field f_reduceTimeFactor this) 31))))
        (when (send (get-field f_leftTimeElapsedHelper this) jm_isTimeTNT_0)
            (begin
            (send _collidableDestroyableDamageableLayer jm_left_0))))))
    (define/public (jm_up_2 _collidableDestroyableDamageableLayer _xAnalogValue)
    (let ()
      (let/ec jreturn
        (set-field! f_delay (get-field f_upTimeElapsedHelper this) (arithmetic-shift (JR.i32 (- (get-field f_SCALE_VALUE this) _xAnalogValue)) (- (bitwise-and (get-field f_reduceTimeFactor this) 31))))
        (when (send (get-field f_upTimeElapsedHelper this) jm_isTimeTNT_0)
            (begin
            (send _collidableDestroyableDamageableLayer jm_up_0))))))
    (define/public (jm_down_2 _collidableDestroyableDamageableLayer _xAnalogValue)
    (let ()
      (let/ec jreturn
        (set-field! f_delay (get-field f_downTimeElapsedHelper this) (arithmetic-shift (JR.i32 (+ (get-field f_SCALE_VALUE this) _xAnalogValue)) (- (bitwise-and (get-field f_reduceTimeFactor this) 31))))
        (when (send (get-field f_downTimeElapsedHelper this) jm_isTimeTNT_0)
            (begin
            (send _collidableDestroyableDamageableLayer jm_down_0))))))))
(define (AnalogControllerHelper.jclassValue) AnalogControllerHelper%)

(define (AnalogControllerHelper.jnew_1 _reduceTimeFactor)
  (define this (new AnalogControllerHelper% [jclass "AnalogControllerHelper"]))
    
    (set-field! f_SCALE_VALUE this (get-field f_SCALE_VALUE (AnalogControllerConfigurationFactory.jm_getInstance_0)))
    (set-field! f_rightTimeElapsedHelper this (TimeDelayHelper.jnew_1 0))
    (set-field! f_leftTimeElapsedHelper this (TimeDelayHelper.jnew_1 0))
    (set-field! f_downTimeElapsedHelper this (TimeDelayHelper.jnew_1 0))
    (set-field! f_upTimeElapsedHelper this (TimeDelayHelper.jnew_1 0))
    (let ()
      (let/ec jreturn
        (set-field! f_reduceTimeFactor this _reduceTimeFactor)))
  this)



