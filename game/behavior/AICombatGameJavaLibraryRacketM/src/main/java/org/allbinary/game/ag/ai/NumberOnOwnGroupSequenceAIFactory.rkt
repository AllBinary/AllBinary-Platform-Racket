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
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./NumberInSameGroupSequence.rkt" (NumberInSameGroupSequence.jm_getInstance_0)])
(lazy-require ["./NumberOnOwnGroupSequenceAI.rkt" (NumberOnOwnGroupSequenceAI.jnew_4)])
(provide (all-defined-out))

(define NumberOnOwnGroupSequenceAIFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_getInstance_4 _hashtable _artificialIntelligenceInterface _ownerLayerInterface _gameInput)
    (let ([_integerArray JR.null][_list JR.null][_integerCanBeNull JR.null][_index JR.null][_stringBuffer JR.null][_commonStrings JR.null][_numberOnSameTeam JR.null])
      (let/ec jreturn
        (set! _integerArray (get-field f_NUMBER_ON_SAME_TEAM_SEQUENCE (NumberInSameGroupSequence.jm_getInstance_0)))
        (set! _list (BasicArrayListD.jnew_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _integerArray))
                (let/ec jcontinue
            (set! _integerCanBeNull (send _hashtable jm_get_1 (vector-ref _integerArray _index)))
            (when (JR.null? _integerCanBeNull)
                (begin
                (jbreak (void))))
            (send _list jm_add_1 _integerCanBeNull))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Total AI Properties: ")
        (send _stringBuffer jm_appendint_1 (send _list jm_size_0))
        (send _stringBuffer jm_append_1 " == Total AI: ")
        (send _stringBuffer jm_appendint_1 (vector-length _artificialIntelligenceInterface))
        (send _stringBuffer jm_append_1 " + 1")
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_GET_INSTANCE _commonStrings))
        (when (> (JR.i32 (- (vector-length _artificialIntelligenceInterface) 1)) (send _list jm_size_0))
            (begin
            (raise (JR.newException "Exception" "Not enough AI properties."))))
        (when (< (JR.i32 (- (vector-length _artificialIntelligenceInterface) 1)) (send _list jm_size_0))
            (begin
            (raise (JR.newException "Exception" "Too Many AI properties."))))
        (set! _numberOnSameTeam (JR.newArray JR.null (send _list jm_size_0)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _numberOnSameTeam))
                (let/ec jcontinue
            (vector-set! _numberOnSameTeam _index (vector-ref (get-field f_objectArray _list) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (NumberOnOwnGroupSequenceAI.jnew_4 _numberOnSameTeam _artificialIntelligenceInterface _ownerLayerInterface _gameInput)))))))
(define (NumberOnOwnGroupSequenceAIFactory.jclassValue) NumberOnOwnGroupSequenceAIFactory%)

(define (NumberOnOwnGroupSequenceAIFactory.jnew_0)
  (define this (new NumberOnOwnGroupSequenceAIFactory% [jclass "NumberOnOwnGroupSequenceAIFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)



