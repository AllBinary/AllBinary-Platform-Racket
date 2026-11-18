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
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define InputProbability%
  (class JObject%
    (super-new)
    (field [f_likelyhoodIntegerArray JR.null])
    (field [f_repeatLikelyhoodIntegerArray JR.null])
    (field [f_max 0])
    (field [f_timeDelayHelper JR.null])
    (define/public (jm_getLikelyhoodIntegerArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_likelyhoodIntegerArray this)))))
    (define/public (jm_getRepeatLikelyhoodIntegerArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_repeatLikelyhoodIntegerArray this)))))
    (define/public (jm_getMax_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_max this)))))
    (define/public (jm_getTimeDelayHelper_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_timeDelayHelper this)))))
    (define/public (jm_toHashtable_0)
    (let ([_hashtable JR.null])
      (let/ec jreturn
        (set! _hashtable (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
        (send _hashtable jm_put_2 (InputProbability.jstatic_INPUT_PROBABILITY) this)
        (jreturn _hashtable))))))
(define (InputProbability.jclassValue) InputProbability%)

(define InputProbability.jcell_INPUT_PROBABILITY 'jnone)
(define (InputProbability.jstatic_INPUT_PROBABILITY)
  (when (eq? InputProbability.jcell_INPUT_PROBABILITY 'jnone) (set! InputProbability.jcell_INPUT_PROBABILITY (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 0)))
  InputProbability.jcell_INPUT_PROBABILITY)
(define (InputProbability.jsetstatic_INPUT_PROBABILITY value) (set! InputProbability.jcell_INPUT_PROBABILITY value))

(define (InputProbability.jnew_4 _likelyhoodIntegerArray _repeatLikelyhoodIntegerArray _max _timeDelayHelper)
  (define this (new InputProbability% [jclass "InputProbability"]))
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_likelyhoodIntegerArray this _likelyhoodIntegerArray)
        (set-field! f_repeatLikelyhoodIntegerArray this _repeatLikelyhoodIntegerArray)
        (set-field! f_max this _max)
        (set-field! f_timeDelayHelper this _timeDelayHelper)))
  this)



