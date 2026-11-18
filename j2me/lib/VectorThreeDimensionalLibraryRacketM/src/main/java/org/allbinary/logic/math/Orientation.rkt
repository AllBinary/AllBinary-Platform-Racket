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
;; package org.allbinary.logic.math

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["./BasicDecimal.rkt" (BasicDecimal.jnew_1)])
(provide (all-defined-out))

(define Orientation%
  (class JObject%
    (super-new)
    (field [f_yaw JR.null])
    (field [f_pitch JR.null])
    (field [f_roll JR.null])
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Y: ")
        (send _stringBuffer jm_append_1 (send (get-field f_yaw this) jm_toString_0))
        (send _stringBuffer jm_append_1 " P: ")
        (send _stringBuffer jm_append_1 (send (get-field f_pitch this) jm_toString_0))
        (send _stringBuffer jm_append_1 " R: ")
        (send _stringBuffer jm_append_1 (send (get-field f_roll this) jm_toString_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (Orientation.jclassValue) Orientation%)

(define Orientation.jcell_NONE 'jnone)
(define (Orientation.jstatic_NONE)
  (when (eq? Orientation.jcell_NONE 'jnone) (set! Orientation.jcell_NONE (Orientation.jnew_3 0 0 0)))
  Orientation.jcell_NONE)
(define (Orientation.jsetstatic_NONE value) (set! Orientation.jcell_NONE value))

(define Orientation.jcell_SINGLETON 'jnone)
(define (Orientation.jstatic_SINGLETON)
  (when (eq? Orientation.jcell_SINGLETON 'jnone) (set! Orientation.jcell_SINGLETON (Orientation.jnew_3 0 0 0)))
  Orientation.jcell_SINGLETON)
(define (Orientation.jsetstatic_SINGLETON value) (set! Orientation.jcell_SINGLETON value))

(define (Orientation.jnew_3 _yaw _pitch _roll)
  (define this (new Orientation% [jclass "Orientation"]))
    (set-field! f_yaw this (BasicDecimal.jnew_1 0))
    (set-field! f_pitch this (BasicDecimal.jnew_1 0))
    (set-field! f_roll this (BasicDecimal.jnew_1 0))
    (let ()
      (let/ec jreturn
        (send (get-field f_yaw this) jm_setint_1 _yaw)
        (send (get-field f_pitch this) jm_setint_1 _pitch)
        (send (get-field f_roll this) jm_setint_1 _roll)))
  this)

(define (Orientation.jm_getInstance_3 _yaw _pitch _roll)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_yaw (Orientation.jstatic_SINGLETON)))
        (JR.className (get-field f_pitch (Orientation.jstatic_SINGLETON)))
        (JR.className (get-field f_roll (Orientation.jstatic_SINGLETON)))
        (jreturn (Orientation.jstatic_SINGLETON)))))



