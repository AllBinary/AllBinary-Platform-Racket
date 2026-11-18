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
  "../../../../../org/allbinary/game/ai/BasicAI.rkt")
(provide (all-defined-out))

(define ArrayAI%
  (class BasicAI%
    (super-new)
    (field [f_artificialIntelligenceInterfaceArray JR.null])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length (get-field f_artificialIntelligenceInterfaceArray this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_artificialIntelligenceInterfaceArray this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_getArtificialIntelligenceInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_artificialIntelligenceInterfaceArray this)))))))
(define (ArrayAI.jclassValue) ArrayAI%)

(define (ArrayAI.jnew_3 _artificialIntelligenceInterface _ownerLayerInterface _gameInput)
  (define this (new ArrayAI% [jclass "ArrayAI"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_artificialIntelligenceInterfaceArray this _artificialIntelligenceInterface)))
  this)



