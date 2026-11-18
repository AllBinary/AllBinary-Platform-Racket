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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./BaseSoundsFactory.rkt")
(lazy-require ["./SelectSound.rkt" (SelectSound.jm_getInstance_0)])
(lazy-require ["./ErrorSound.rkt" (ErrorSound.jm_getInstance_0)])
(provide (all-defined-out))

(define EarlySoundsFactory%
  (class BaseSoundsFactory%
    (super-new)
    (define/override (jm_getSoundInterfaceArray_0)
    (let ([_soundInterfaceArray JR.null][_index JR.null])
      (let/ec jreturn
        (set! _soundInterfaceArray (JR.newArray JR.null 2))
        (set! _index 0)
        (vector-set! _soundInterfaceArray (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue) (SelectSound.jm_getInstance_0))
        (vector-set! _soundInterfaceArray (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue) (ErrorSound.jm_getInstance_0))
        (jreturn _soundInterfaceArray))))))
(define (EarlySoundsFactory.jclassValue) EarlySoundsFactory%)

(define EarlySoundsFactory.jcell_instance 'jnone)
(define (EarlySoundsFactory.jstatic_instance)
  (when (eq? EarlySoundsFactory.jcell_instance 'jnone) (set! EarlySoundsFactory.jcell_instance (EarlySoundsFactory.jnew_0)))
  EarlySoundsFactory.jcell_instance)
(define (EarlySoundsFactory.jsetstatic_instance value) (set! EarlySoundsFactory.jcell_instance value))

(define (EarlySoundsFactory.jnew_0)
  (define this (new EarlySoundsFactory% [jclass "EarlySoundsFactory"]))
  this)

(define (EarlySoundsFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (EarlySoundsFactory.jstatic_instance)))))



