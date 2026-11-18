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
  "../../../../../allbinary_java.rkt"
  "./AnalogControllerVisitor.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/analog/AnalogLocationInputFactory.rkt" (AnalogLocationInputFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define SingleAnalogControllerVisitor%
  (class AnalogControllerVisitor%
    (super-new)
    (field [f_playerInputId 0])
    (define/override (jm_process_2 _allbinaryLayerManager _analogLocationInputProcessor)
    (let ([_analogLocationInput JR.null])
      (let/ec jreturn
        (set! _analogLocationInput (send (AnalogLocationInputFactory.jm_getInstance_0) jm_getInstanceForPlayer_1 (get-field f_playerInputId this)))
        (send _analogLocationInputProcessor jm_process_2 _allbinaryLayerManager _analogLocationInput))))))
(define (SingleAnalogControllerVisitor.jclassValue) SingleAnalogControllerVisitor%)

(define (SingleAnalogControllerVisitor.jnew_1 _playerInputId)
  (define this (new SingleAnalogControllerVisitor% [jclass "SingleAnalogControllerVisitor"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_playerInputId this _playerInputId)))
  this)



