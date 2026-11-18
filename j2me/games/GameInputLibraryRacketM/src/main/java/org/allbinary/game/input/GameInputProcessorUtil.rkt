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
  "../../../../allbinary_java.rkt")
(lazy-require ["./GameInputProcessor.rkt" (GameInputProcessor.jm_getInstance_0)])
(lazy-require ["./InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define GameInputProcessorUtil%
  (class JObject%
    (super-new)))
(define (GameInputProcessorUtil.jclassValue) GameInputProcessorUtil%)

(define (GameInputProcessorUtil.jnew_0)
  (define this (new GameInputProcessorUtil% [jclass "GameInputProcessorUtil"]))
  this)

(define (GameInputProcessorUtil.jm_init_1 _inputProcessorArray)
    (let ([_noInputProcessor JR.null][_total JR.null][_inputProcessorCanBeNull JR.null][_index JR.null])
      (let/ec jreturn
        (set! _noInputProcessor (GameInputProcessor.jm_getInstance_0))
        (set! _total (get-field f_MAX (InputFactory.jm_getInstance_0)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _total)
                (let/ec jcontinue
            (set! _inputProcessorCanBeNull (vector-ref _inputProcessorArray _index))
            (when (JR.null? _inputProcessorCanBeNull)
                (begin
                (vector-set! _inputProcessorArray _index _noInputProcessor))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))



