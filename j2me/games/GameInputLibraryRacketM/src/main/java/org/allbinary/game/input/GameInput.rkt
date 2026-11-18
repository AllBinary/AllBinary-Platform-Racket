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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/InputFeatureFactory.rkt" (InputFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define GameInput%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_gameKeyEventList JR.null])
    (field [f_removalGameKeyEventList JR.null])
    (field [f_isRemoveDuplicateKeyPresses #f])
    (define/public (jm_add_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (when (and (get-field f_isRemoveDuplicateKeyPresses this) (send (get-field f_gameKeyEventList this) jm_contains_1 _gameKeyEvent))
            (begin
            (jreturn (void))))
        (if (not (JR.null? _gameKeyEvent))
            (begin
            (send (get-field f_gameKeyEventList this) jm_add_1 _gameKeyEvent))
            (begin
            (send (get-field f_logUtil this) jm_putF_3 "Danger Passed Null GameKeyEvent" this (get-field f_ADD (get-field f_commonStrings this))))))))
    (define/public (jm_addForRemoval_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (send (get-field f_removalGameKeyEventList this) jm_add_1 _gameKeyEvent))))
    (define/public (jm_isForRemoval_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_removalGameKeyEventList this) jm_contains_1 _gameKeyEvent)))))
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameKeyEventList this) jm_clear_0))))
    (define/public (jm_removeNonAIInputGameKeyEvents_0)
    (let ([_list JR.null][_gameKeyEvent JR.null][_index JR.null])
      (let/ec jreturn
        (set! _list (get-field f_gameKeyEventList this))
        (set! _gameKeyEvent JR.null)
        (begin
            (set! _index (send _list jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _gameKeyEvent (vector-ref (get-field f_objectArray _list) _index))
            (when (not (= (send _gameKeyEvent jm_getSourceId_0) 1))
                (begin
                (send _list jm_removeAt_1 _index)))) (jloop))))))))
    (define/public (jm_update_0)
    (let ([_removeList JR.null][_list JR.null][_size JR.null][_anyType JR.null][_index2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _removeList (get-field f_removalGameKeyEventList this))
        (set! _list (get-field f_gameKeyEventList this))
        (set! _size (send _removeList jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _anyType (vector-ref (get-field f_objectArray _removeList) _index))
            (begin
                (set! _index2 (send _list jm_size_0))
                (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index2 1))]) (set! _index2 jvalue) jvalue) 0)
                    (let/ec jcontinue
                (when (eq? (vector-ref (get-field f_objectArray _list) _index2) _anyType)
                    (begin
                    (send _list jm_removeAt_1 _index2)))) (jloop))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send _removeList jm_clear_0))))
    (define/public (jm_getRemovalGameKeyEventList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_removalGameKeyEventList this)))))
    (define/public (jm_getGameKeyEventList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameKeyEventList this)))))))
(define (GameInput.jclassValue) GameInput%)

(define (GameInput.jnew_2 _gameKeyEventList _removalGameKeyEventList)
  (define this (new GameInput% [jclass "GameInput"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_gameKeyEventList this _gameKeyEventList)
        (set-field! f_removalGameKeyEventList this _removalGameKeyEventList)
        (set-field! f_isRemoveDuplicateKeyPresses this (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_REMOVE_DUPLICATE_KEY_PRESSES (InputFeatureFactory.jm_getInstance_0))))))
  this)



