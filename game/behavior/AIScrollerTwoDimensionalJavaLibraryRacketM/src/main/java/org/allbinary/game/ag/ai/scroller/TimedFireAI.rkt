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
;; package org.allbinary.game.ag.ai.scroller

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/game/ai/BasicAI.rkt"
  "../../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_KEY_NUM1)])
(lazy-require ["../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define TimedFireAI%
  (class BasicAI%
    (super-new)
    (inherit/super jm_processKeyAI_1)
    (field [f_maxFireDelayTimeHelper JR.null])
    (field [f_delay 0])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_timeFiredInterface JR.null])
      (let/ec jreturn
        (set! _timeFiredInterface (send this jm_getOwnerLayerInterface_0))
        (when (and (send (get-field f_maxFireDelayTimeHelper this) jm_isTime_1 (get-field f_startTime (GameTickTimeDelayHelperFactory.jm_getInstance_0))) (< (JR.i64 (+ (send _timeFiredInterface jm_getLastFireTime_0) (get-field f_delay (get-field f_maxFireDelayTimeHelper this)))) (send (get-field f_maxFireDelayTimeHelper this) jm_getStartTime_0)))
            (begin
            (super jm_processKeyAI_1 (Canvas.jstatic_KEY_NUM1))
            (set-field! f_delay (get-field f_maxFireDelayTimeHelper this) (get-field f_delay this)))))))))
(define (TimedFireAI.jclassValue) TimedFireAI%)

(define TimedFireAI.jcell_TIME 'jnone)
(define (TimedFireAI.jstatic_TIME)
  (when (eq? TimedFireAI.jcell_TIME 'jnone) (set! TimedFireAI.jcell_TIME (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 1)))
  TimedFireAI.jcell_TIME)
(define (TimedFireAI.jsetstatic_TIME value) (set! TimedFireAI.jcell_TIME value))

(define (TimedFireAI.jnew_3 _delay _ownerLayerInterface _gameInput)
  (define this (new TimedFireAI% [jclass "TimedFireAI"]))
    (set-field! f_maxFireDelayTimeHelper this (TimeDelayHelper.jnew_1 0))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_delay this _delay)))
  this)



