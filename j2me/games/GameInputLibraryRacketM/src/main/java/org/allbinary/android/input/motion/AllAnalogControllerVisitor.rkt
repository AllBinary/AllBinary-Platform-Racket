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

(define AllAnalogControllerVisitor%
  (class AnalogControllerVisitor%
    (super-new)
    (define/override (jm_process_2 _allbinaryLayerManager _analogLocationInputProcessor)
    (let ([_analogLocationInputList JR.null][_analogLocationInput JR.null][_index JR.null])
      (let/ec jreturn
        (set! _analogLocationInputList (send (AnalogLocationInputFactory.jm_getInstance_0) jm_getList_0))
        (set! _analogLocationInput JR.null)
        (begin
            (set! _index (JR.i32 (- (send _analogLocationInputList jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _analogLocationInput (send _analogLocationInputList jm_get_1 _index))
            (send _analogLocationInputProcessor jm_process_2 _allbinaryLayerManager _analogLocationInput))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (AllAnalogControllerVisitor.jclassValue) AllAnalogControllerVisitor%)

(define (AllAnalogControllerVisitor.jnew_0)
  (define this (new AllAnalogControllerVisitor% [jclass "AllAnalogControllerVisitor"]))
  this)



