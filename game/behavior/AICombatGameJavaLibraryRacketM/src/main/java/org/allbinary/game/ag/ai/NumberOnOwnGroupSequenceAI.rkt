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
  "../../../../../org/allbinary/game/ag/ai/sequence/SequenceAI.rkt"
  "../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../org/allbinary/game/layer/identification/GroupLayerManagerListener.rkt" (GroupLayerManagerListener.jm_getInstance_0)])
(provide (all-defined-out))

(define NumberOnOwnGroupSequenceAI%
  (class SequenceAI%
    (super-new)
    (field [f_numberOnSameTeam JR.null])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_layerInterface JR.null][_index JR.null][_size JR.null])
      (let/ec jreturn
        (set! _layerInterface (send this jm_getOwnerLayerInterface_0))
        (set! _index (send this jm_getIndex_0))
        (when (> (vector-length (get-field f_numberOnSameTeam this)) _index)
            (begin
            (set! _size (send (GroupLayerManagerListener.jm_getInstance_0) jm_getGroupSizeFromInterface_1 _layerInterface))
            (when (> (JR.className (vector-ref (get-field f_numberOnSameTeam this) _index)) _size)
                (begin
                (send this jm_next_0)))))
        (super jm_processAI_1 _allBinaryLayerManager))))))
(define (NumberOnOwnGroupSequenceAI.jclassValue) NumberOnOwnGroupSequenceAI%)

(define (NumberOnOwnGroupSequenceAI.jnew_4 _numberOnSameTeam _artificialIntelligenceInterface _ownerLayerInterface _gameInput)
  (define this (new NumberOnOwnGroupSequenceAI% [jclass "NumberOnOwnGroupSequenceAI"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_numberOnSameTeam this _numberOnSameTeam)))
  this)



