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
;; package org.allbinary.game.ag.ai.sequence

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "./SequenceAI.rkt")
(provide (all-defined-out))

(define NumberLayersSequenceAI%
  (class SequenceAI%
    (super-new)
    (field [f_numberOfLayersLeft 0])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (when (= (send this jm_getIndex_0) 0)
            (begin
            (when (< (send _allBinaryLayerManager jm_getSize_0) (get-field f_numberOfLayersLeft this))
                (begin
                (send this jm_setIndex_1 1)))))
        (super jm_processAI_1 _allBinaryLayerManager))))))
(define (NumberLayersSequenceAI.jclassValue) NumberLayersSequenceAI%)

(define (NumberLayersSequenceAI.jnew_4 _numberOfEnemiesLeft _artificialIntelligenceInterface _ownerLayerInterface _gameInput)
  (define this (new NumberLayersSequenceAI% [jclass "NumberLayersSequenceAI"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_numberOfLayersLeft this _numberOfEnemiesLeft)))
  this)



