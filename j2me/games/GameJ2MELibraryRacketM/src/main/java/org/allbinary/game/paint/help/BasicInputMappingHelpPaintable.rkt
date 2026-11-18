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
;; package org.allbinary.game.paint.help

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./HelpPaintable.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/PlatformInputMappingFactory.rkt" (PlatformInputMappingFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicInputMappingHelpPaintable%
  (class HelpPaintable%
    (super-new)
    (inherit/super jm_setInputInfoP_1)
    (field [f_gameInputMappingArray JR.null])
    (field [f_NONE JR.null])
    (define/public (jm_update_2 _selectedGameKey _selectedInput)
    (let ([_gameKeyMapping JR.null][_EQUAL JR.null][_stringMaker JR.null][_size JR.null][_keyInfo JR.null][_gameInputMapping JR.null][_gameKey JR.null][_list JR.null][_index JR.null])
      (let/ec jreturn
        (set! _gameKeyMapping (send (PlatformInputMappingFactory.jm_getInstance_0) jm_getPersistentInputMappingInstance_0))
        (set! _EQUAL " = ")
        (set! _stringMaker (StringMaker.jnew_0))
        (set! _size (vector-length (get-field f_gameInputMappingArray this)))
        (set! _keyInfo (JR.newArray JR.null _size))
        (set! _gameInputMapping JR.null)
        (set! _gameKey JR.null)
        (set! _list JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _gameInputMapping (vector-ref (get-field f_gameInputMappingArray this) _index))
            (set! _gameKey (send _gameInputMapping jm_getGameKey_0))
            (set! _list (JR.className (send _gameKeyMapping jm_getInputMapping_0)))
            (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
            (vector-set! _keyInfo _index (send (send (send (send _stringMaker jm_append_1 (send _gameInputMapping jm_getName_0)) jm_append_1 _EQUAL) jm_append_1 (send this jm_get_1 _list)) jm_toString_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (super jm_setInputInfoP_1 _keyInfo))))
    (define/public (jm_get_1 _keyList)
    (let ([_commonSeps JR.null][_stringBuffer JR.null][_AND JR.null][_key JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _AND "and ")
        (set! _key JR.null)
        (set! _size (send _keyList jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _key (vector-ref (get-field f_objectArray _keyList) _index))
            (send _stringBuffer jm_append_1 (send _key jm_getName_0))
            (when (< (JR.i32 (+ _index 1)) (send _keyList jm_size_0))
                (begin
                (if (= (send _keyList jm_size_0) 2)
                    (begin
                    (send (send _stringBuffer jm_append_1 (get-field f_SPACE _commonSeps)) jm_append_1 _AND))
                    (begin
                    (if (= (JR.i32 (+ _index 2)) (send _keyList jm_size_0))
                        (begin
                        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonSeps))
                        (send _stringBuffer jm_append_1 _AND))
                        (begin
                        (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonSeps)))))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (BasicInputMappingHelpPaintable.jclassValue) BasicInputMappingHelpPaintable%)

(define (BasicInputMappingHelpPaintable.jnew_2 _gameInputMappingArray _basicColor)
  (define this (new BasicInputMappingHelpPaintable% [jclass "BasicInputMappingHelpPaintable"]))
    
    (set-field! f_NONE this (get-field f_NONE (GameKeyFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_gameInputMappingArray this _gameInputMappingArray)
        (send this jm_update_2 (get-field f_NONE this) (get-field f_NONE this))))
  this)



