#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.input.analog

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./AnalogLocationInput.rkt" (AnalogLocationInput.jnew_1 AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT)])
(provide (all-defined-out))

(define AnalogLocationInputFactory%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_addPlayer_1 _playerInputId)
    (let ([_analogLocationInput JR.null])
      (let/ec jreturn
        (set! _analogLocationInput (AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT))
        (when (< _playerInputId (send (get-field f_list this) jm_size_0))
            (begin
            (set! _analogLocationInput (send (get-field f_list this) jm_get_1 _playerInputId))))
        (when (eq? _analogLocationInput (AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT))
            (begin
            (set! _analogLocationInput (AnalogLocationInput.jnew_1 _playerInputId))
            (send (get-field f_list this) jm_add_1 _analogLocationInput))))))
    (define/public (jm_getInstanceForPlayer_1 _playerInputId)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_list this) jm_get_1 _playerInputId)))))
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))))
(define (AnalogLocationInputFactory.jclassValue) AnalogLocationInputFactory%)

(define AnalogLocationInputFactory.jcell_instance 'jnone)
(define (AnalogLocationInputFactory.jstatic_instance)
  (when (eq? AnalogLocationInputFactory.jcell_instance 'jnone) (set! AnalogLocationInputFactory.jcell_instance (AnalogLocationInputFactory.jnew_0)))
  AnalogLocationInputFactory.jcell_instance)
(define (AnalogLocationInputFactory.jsetstatic_instance value) (set! AnalogLocationInputFactory.jcell_instance value))

(define (AnalogLocationInputFactory.jnew_0)
  (define this (new AnalogLocationInputFactory% [jclass "AnalogLocationInputFactory"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AnalogLocationInputFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AnalogLocationInputFactory.jstatic_instance)))))



