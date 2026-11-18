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
(lazy-require ["../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define NumberInSameGroupSequence%
  (class JObject%
    (super-new)
    (field [f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO JR.null])
    (field [f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE JR.null])
    (field [f_NUMBER_ON_SAME_TEAM_SEQUENCE_TWO JR.null])
    (field [f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE JR.null])
    (field [f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR JR.null])
    (field [f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE JR.null])
    (field [f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX JR.null])
    (field [f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN JR.null])
    (field [f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT JR.null])
    (field [f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE JR.null])
    (field [f_NUMBER_ON_SAME_TEAM_SEQUENCE JR.null])))
(define (NumberInSameGroupSequence.jclassValue) NumberInSameGroupSequence%)

(define (NumberInSameGroupSequence.jnew_0)
  (define this (new NumberInSameGroupSequence% [jclass "NumberInSameGroupSequence"]))
    
    
    
    
    
    
    
    
    
    
    
    (let ([_smallIntegerSingletonFactory JR.null])
      (let/ec jreturn
        (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (set-field! f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO this (send _smallIntegerSingletonFactory jm_getAt_1 100))
        (set-field! f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE this (send _smallIntegerSingletonFactory jm_getAt_1 101))
        (set-field! f_NUMBER_ON_SAME_TEAM_SEQUENCE_TWO this (send _smallIntegerSingletonFactory jm_getAt_1 102))
        (set-field! f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE this (send _smallIntegerSingletonFactory jm_getAt_1 103))
        (set-field! f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR this (send _smallIntegerSingletonFactory jm_getAt_1 104))
        (set-field! f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE this (send _smallIntegerSingletonFactory jm_getAt_1 105))
        (set-field! f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX this (send _smallIntegerSingletonFactory jm_getAt_1 106))
        (set-field! f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN this (send _smallIntegerSingletonFactory jm_getAt_1 107))
        (set-field! f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT this (send _smallIntegerSingletonFactory jm_getAt_1 108))
        (set-field! f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE this (send _smallIntegerSingletonFactory jm_getAt_1 109))
        (set-field! f_NUMBER_ON_SAME_TEAM_SEQUENCE this (vector (get-field f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO this) (get-field f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE this) (get-field f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE this) (get-field f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR this) (get-field f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE this) (get-field f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX this) (get-field f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN this) (get-field f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT this) (get-field f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE this)))))
  this)

(define (NumberInSameGroupSequence.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NumberInSameGroupSequence.jnew_0)))))



