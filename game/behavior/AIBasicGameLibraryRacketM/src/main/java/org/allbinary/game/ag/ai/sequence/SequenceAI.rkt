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
  "../../../../../../org/allbinary/game/ag/ai/ArrayAI.rkt")
(lazy-require ["../../../../../../org/allbinary/ai/ArtificialIntelligence.rkt" (ArtificialIntelligence.jstatic_AI_ID)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define SequenceAI%
  (class ArrayAI%
    (super-new)
    (field [f_index 0])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (send this jm_getArtificialIntelligenceInterface_0) (get-field f_index this))))))
    (define/public (jm_next_0)
    (let ([_artificialIntelligenceInterface JR.null][_artificialIntelligenceTransitionInterface JR.null])
      (let/ec jreturn
        (set-field! f_index this (JR.i32 (+ (get-field f_index this) 1)))
        (set! _artificialIntelligenceInterface (send this jm_getSelectedArtificialIntelligenceInterface_0))
        (when (= (send _artificialIntelligenceInterface jm_getId_0) (ArtificialIntelligence.jstatic_AI_ID))
            (begin
            (set! _artificialIntelligenceTransitionInterface _artificialIntelligenceInterface)
            (send _artificialIntelligenceTransitionInterface jm_transition_0))))))
    (define/public (jm_getIndex_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_index this)))))
    (define/public (jm_setIndex_1 _index)
    (let ()
      (let/ec jreturn
        (set-field! f_index this _index))))
    (define/public (jm_getSelectedArtificialIntelligenceInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (send this jm_getArtificialIntelligenceInterface_0) (get-field f_index this))))))
    (define/override (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (SequenceAI.jstatic_SEQUENCE_AI)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (super jm_toString_0))
        (send _stringBuffer jm_append_1 " Selected AI: ")
        (send _stringBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (send this jm_getSelectedArtificialIntelligenceInterface_0)))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (SequenceAI.jclassValue) SequenceAI%)

(define SequenceAI.jcell_SEQUENCE_AI 'jnone)
(define (SequenceAI.jstatic_SEQUENCE_AI)
  (when (eq? SequenceAI.jcell_SEQUENCE_AI 'jnone) (set! SequenceAI.jcell_SEQUENCE_AI "Sequence AI"))
  SequenceAI.jcell_SEQUENCE_AI)
(define (SequenceAI.jsetstatic_SEQUENCE_AI value) (set! SequenceAI.jcell_SEQUENCE_AI value))

(define (SequenceAI.jnew_3 _artificialIntelligenceInterfaceArray _ownerLayerInterface _gameInput)
  (define this (new SequenceAI% [jclass "SequenceAI"]))
    
    (let ()
      (let/ec jreturn
        (void)))
  this)



