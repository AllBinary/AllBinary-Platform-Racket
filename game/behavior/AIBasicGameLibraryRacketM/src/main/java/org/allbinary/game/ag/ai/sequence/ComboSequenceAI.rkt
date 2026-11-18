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

(define ComboSequenceAI%
  (class SequenceAI%
    (super-new)
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_artificialIntelligenceInterfaceArray JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _artificialIntelligenceInterfaceArray (send this jm_getArtificialIntelligenceInterface_0))
        (set! _size (vector-length _artificialIntelligenceInterfaceArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send this jm_setIndex_1 _index)
            (super jm_processAI_1 _allBinaryLayerManager))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (ComboSequenceAI.jclassValue) ComboSequenceAI%)

(define (ComboSequenceAI.jnew_3 _artificialIntelligenceInterface _ownerLayerInterface _gameInput)
  (define this (new ComboSequenceAI% [jclass "ComboSequenceAI"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



