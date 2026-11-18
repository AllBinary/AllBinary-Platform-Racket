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
  "../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_UP Canvas.jstatic_DOWN Canvas.jstatic_LEFT Canvas.jstatic_RIGHT Canvas.jstatic_KEY_NUM7 Canvas.jstatic_KEY_NUM9 Canvas.jstatic_KEY_NUM1)])
(lazy-require ["../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/NoTimeDelayHelper.rkt" (NoTimeDelayHelper.jstatic_SINGLETON)])
(lazy-require ["./InputProbability.rkt" (InputProbability.jnew_4)])
(provide (all-defined-out))

(define BasicProbabilityAIDataFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ([_likelyhoodIntegerArray JR.null][_smallIntegerSingletonFactory JR.null][_repeatLikelyhoodIntegerArray JR.null][_inputProbability JR.null])
      (let/ec jreturn
        (set! _likelyhoodIntegerArray (JR.newArray JR.null (JR.i32 (+ (Canvas.jstatic_KEY_NUM9) 1)) 2))
        (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_UP)) 0 (send _smallIntegerSingletonFactory jm_getAt_1 0))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_UP)) 1 (send _smallIntegerSingletonFactory jm_getAt_1 10))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_DOWN)) 0 (send _smallIntegerSingletonFactory jm_getAt_1 10))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_DOWN)) 1 (send _smallIntegerSingletonFactory jm_getAt_1 14))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_LEFT)) 0 (send _smallIntegerSingletonFactory jm_getAt_1 14))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_LEFT)) 1 (send _smallIntegerSingletonFactory jm_getAt_1 18))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_RIGHT)) 0 (send _smallIntegerSingletonFactory jm_getAt_1 18))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_RIGHT)) 1 (send _smallIntegerSingletonFactory jm_getAt_1 22))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM7)) 0 (send _smallIntegerSingletonFactory jm_getAt_1 22))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM7)) 1 (send _smallIntegerSingletonFactory jm_getAt_1 26))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM9)) 0 (send _smallIntegerSingletonFactory jm_getAt_1 26))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM9)) 1 (send _smallIntegerSingletonFactory jm_getAt_1 30))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM1)) 0 (send _smallIntegerSingletonFactory jm_getAt_1 30))
        (vector-set! (vector-ref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM1)) 1 (send _smallIntegerSingletonFactory jm_getAt_1 40))
        (set! _repeatLikelyhoodIntegerArray (JR.newArray JR.null (JR.i32 (+ (Canvas.jstatic_KEY_NUM9) 1))))
        (vector-set! _repeatLikelyhoodIntegerArray (Canvas.jstatic_UP) (send _smallIntegerSingletonFactory jm_getAt_1 0))
        (vector-set! _repeatLikelyhoodIntegerArray (Canvas.jstatic_DOWN) (send _smallIntegerSingletonFactory jm_getAt_1 0))
        (vector-set! _repeatLikelyhoodIntegerArray (Canvas.jstatic_LEFT) (send _smallIntegerSingletonFactory jm_getAt_1 0))
        (vector-set! _repeatLikelyhoodIntegerArray (Canvas.jstatic_RIGHT) (send _smallIntegerSingletonFactory jm_getAt_1 0))
        (vector-set! _repeatLikelyhoodIntegerArray (Canvas.jstatic_KEY_NUM7) (send _smallIntegerSingletonFactory jm_getAt_1 0))
        (vector-set! _repeatLikelyhoodIntegerArray (Canvas.jstatic_KEY_NUM9) (send _smallIntegerSingletonFactory jm_getAt_1 0))
        (vector-set! _repeatLikelyhoodIntegerArray (Canvas.jstatic_KEY_NUM1) (send _smallIntegerSingletonFactory jm_getAt_1 10))
        (set! _inputProbability (InputProbability.jnew_4 _likelyhoodIntegerArray _repeatLikelyhoodIntegerArray 42 (NoTimeDelayHelper.jstatic_SINGLETON)))
        (jreturn (send _inputProbability jm_toHashtable_0)))))))
(define (BasicProbabilityAIDataFactory.jclassValue) BasicProbabilityAIDataFactory%)

(define (BasicProbabilityAIDataFactory.jnew_0)
  (define this (new BasicProbabilityAIDataFactory% [jclass "BasicProbabilityAIDataFactory"]))
  this)



