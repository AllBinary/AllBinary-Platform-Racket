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
;; package org.allbinary.game.ai

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/ai/ArtificialIntelligence.rkt"
  "../../../../org/allbinary/game/input/GameKeyEventSourceInterface.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/CanvasUtil.rkt" (CanvasUtil.jm_getKeyName_1)])
(lazy-require ["../../../../org/allbinary/game/input/event/GameKeyEventFactory.rkt" (GameKeyEventFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicAI%
  (class ArtificialIntelligence%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_gameKeyEventFactory JR.null])
    (field [f_ownerLayerInterface JR.null])
    (field [f_gameInput JR.null])
    (field [f_lastKey 0])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_processKeyAI_1 _key)
    (let ()
      (let/ec jreturn
        (when (not (= _key (JR.i32 (- 1))))
            (begin
            (send (get-field f_gameInput this) jm_add_1 (send (get-field f_gameKeyEventFactory this) jm_getInstanceForKey_2 this _key)))))))
    (define/public (jm_setLastKey_1 _lastKey)
    (let ()
      (let/ec jreturn
        (set-field! f_lastKey this _lastKey))))
    (define/public (jm_getLastKey_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_lastKey this)))))
    (define/public (jm_getOwnerLayerInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_ownerLayerInterface this)))))
    (define/public (jm_getGameInput_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameInput this)))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (get-field f_NEW_LINE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (send this jm_getName_0))
        (send _stringBuffer jm_append_1 " LastKey: ")
        (send _stringBuffer jm_append_1 (CanvasUtil.jm_getKeyName_1 (send this jm_getLastKey_0)))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getSourceId_0)
    (let ()
      (let/ec jreturn
        (jreturn 1))))))
(define (BasicAI.jclassValue) BasicAI%)

(define BasicAI.jcell_AI_VISITOR 'jnone)
(define (BasicAI.jstatic_AI_VISITOR)
  (when (eq? BasicAI.jcell_AI_VISITOR 'jnone) (set! BasicAI.jcell_AI_VISITOR (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 2)))
  BasicAI.jcell_AI_VISITOR)
(define (BasicAI.jsetstatic_AI_VISITOR value) (set! BasicAI.jcell_AI_VISITOR value))

(define BasicAI.jcell_ID 'jnone)
(define (BasicAI.jstatic_ID)
  (when (eq? BasicAI.jcell_ID 'jnone) (set! BasicAI.jcell_ID (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 1)))
  BasicAI.jcell_ID)
(define (BasicAI.jsetstatic_ID value) (set! BasicAI.jcell_ID value))

(define (BasicAI.jnew_2 _ownerLayerInterface _gameInput)
  (define this (new BasicAI% [jclass "BasicAI"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_gameKeyEventFactory this (GameKeyEventFactory.jm_getInstance_0))
    
    
    (set-field! f_lastKey this (JR.i32 (- 1)))
    (let ()
      (let/ec jreturn
        (set-field! f_ownerLayerInterface this _ownerLayerInterface)
        (set-field! f_gameInput this _gameInput)))
  this)



