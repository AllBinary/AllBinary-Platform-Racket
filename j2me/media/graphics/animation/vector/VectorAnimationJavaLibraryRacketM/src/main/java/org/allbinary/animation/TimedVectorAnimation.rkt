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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./VectorAnimation.rkt")
(lazy-require ["../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define TimedVectorAnimation%
  (class VectorAnimation%
    (super-new)
    (field [f_timeElapsedHelper JR.null])
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_timeElapsedHelper this) jm_isTime_1 (get-field f_startTime (GameTickTimeDelayHelperFactory.jm_getInstance_0)))
            (begin
            (super jm_nextFrame_0))))))))
(define (TimedVectorAnimation.jclassValue) TimedVectorAnimation%)

(define (TimedVectorAnimation.jnew_3 _currentPoints _basicColor _animationBehavior)
  (define this (new TimedVectorAnimation% [jclass "TimedVectorAnimation"]))
    (set-field! f_timeElapsedHelper this (TimeDelayHelper.jnew_1 200))
    (let ()
      (let/ec jreturn
        (void)))
  this)



