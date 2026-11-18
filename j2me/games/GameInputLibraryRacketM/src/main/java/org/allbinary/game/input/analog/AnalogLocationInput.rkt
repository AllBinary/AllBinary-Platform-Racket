#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.input.analog

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/CustomGPoint.rkt" (CustomGPoint.jnew_3)])
(provide (all-defined-out))

(define AnalogLocationInput%
  (class JObject%
    (super-new)
    (field [f_playerId 0])
    (field [f_customGPoint JR.null])
    (field [f_rz 0])
    (field [f_rightTrigger 0])
    (field [f_leftTrigger 0])
    (define/public (jm_getPlayerId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_playerId this)))))
    (define/public (jm_getCustomGPoint_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_customGPoint this)))))
    (define/public (jm_getRz_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_rz this)))))
    (define/public (jm_setRz_1 _rz)
    (let ()
      (let/ec jreturn
        (set-field! f_rz this _rz))))
    (define/public (jm_getRightTrigger_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_rightTrigger this)))))
    (define/public (jm_setRightTrigger_1 _rightTrigger)
    (let ()
      (let/ec jreturn
        (set-field! f_rightTrigger this _rightTrigger))))
    (define/public (jm_getLeftTrigger_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_leftTrigger this)))))
    (define/public (jm_setLeftTrigger_1 _leftTrigger)
    (let ()
      (let/ec jreturn
        (set-field! f_leftTrigger this _leftTrigger))))))
(define (AnalogLocationInput.jclassValue) AnalogLocationInput%)

(define AnalogLocationInput.jcell_NULL_ANALOG_LOCATION_INPUT 'jnone)
(define (AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT)
  (when (eq? AnalogLocationInput.jcell_NULL_ANALOG_LOCATION_INPUT 'jnone) (set! AnalogLocationInput.jcell_NULL_ANALOG_LOCATION_INPUT (AnalogLocationInput.jnew_1 (JR.i32 (- 1)))))
  AnalogLocationInput.jcell_NULL_ANALOG_LOCATION_INPUT)
(define (AnalogLocationInput.jsetstatic_NULL_ANALOG_LOCATION_INPUT value) (set! AnalogLocationInput.jcell_NULL_ANALOG_LOCATION_INPUT value))

(define (AnalogLocationInput.jnew_1 _playerId)
  (define this (new AnalogLocationInput% [jclass "AnalogLocationInput"]))
    
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_playerId this _playerId)
        (set-field! f_customGPoint this (CustomGPoint.jnew_3 0 0 0))))
  this)



