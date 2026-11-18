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
  "./BasePatrolAI.rkt")
(lazy-require ["../../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_KEY_NUM1)])
(lazy-require ["../../../../../../org/allbinary/game/rand/MyRandomFactory.rkt" (MyRandomFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define RandomPatrolAI%
  (class BasePatrolAI%
    (super-new)
    (inherit/super jm_update_0 jm_processKeyAI_1)
    (field [f_changedDirection #f])
    (define/public (jm_updateRandomDistance_0)
    (let ()
      (let/ec jreturn
        (set-field! f_currentDistance this (send (MyRandomFactory.jm_getInstance_0) jm_getAbsoluteNextInt_1 (JR.className (get-field f_maxDistance this)))))))
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (super jm_update_0)
        (super jm_processKeyAI_1 (get-field f_keyDirection this))
        (when (get-field f_changedDirection this)
            (begin
            (super jm_processKeyAI_1 (Canvas.jstatic_KEY_NUM1))
            (send this jm_updateRandomDistance_0)
            (set-field! f_changedDirection this #f))))))
    (define/override (jm_nextDirection_0)
    (let ()
      (let/ec jreturn
        (super jm_nextDirection_0)
        (set-field! f_changedDirection this #t))))))
(define (RandomPatrolAI.jclassValue) RandomPatrolAI%)

(define (RandomPatrolAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)
  (define this (new RandomPatrolAI% [jclass "RandomPatrolAI"]))
    (set-field! f_changedDirection this #t)
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_updateRandomDistance_0)))
  this)



