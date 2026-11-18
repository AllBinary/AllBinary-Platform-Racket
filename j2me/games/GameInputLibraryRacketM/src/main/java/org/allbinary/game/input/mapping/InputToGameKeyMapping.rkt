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
;; package org.allbinary.game.input.mapping

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./InputMapping.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putOE_4)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define InputToGameKeyMapping%
  (class InputMapping%
    (super-new)
    (field [f_gameKeyFactory JR.null])
    (field [f_mappedGameKeys JR.null])
    (field [f_platformToGameKeyMapping JR.null])
    (field [f_negativePlatformToGameKeyMapping JR.null])
    (define/public (jm_clear_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_platformToGameKeyMapping this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (vector-set! (get-field f_platformToGameKeyMapping this) _index (get-field f_NONE (get-field f_gameKeyFactory this))))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/override (jm_removeAll_0)
    (let ()
      (let/ec jreturn
        (super jm_removeAll_0)
        (send this jm_clear_0))))
    (define/override (jm_addMapping_1 _inputToGameKeyMapping)
    (let ([_input JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (JR.i32 (- (send _inputToGameKeyMapping jm_getMaxMappable_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _input (send _inputToGameKeyMapping jm_getInstance_1 _index))
            (when (not (eq? _input (get-field f_NONE (get-field f_gameKeyFactory this))))
                (begin
                (send this jm_addAll_2 _input (send _inputToGameKeyMapping jm_getMappedInput_1 _input)))))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/public (jm_addAll_2 _input _list)
    (let ([_mappedToInput JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (JR.i32 (- (send _list jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _mappedToInput (vector-ref (get-field f_objectArray _list) _index))
            (send this jm_add_2 _input _mappedToInput))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/override (jm_add_2 _input _mappedToInput)
    (let ()
      (let/ec jreturn
        (super jm_add_2 _input _mappedToInput)
        (send this jm_set_2 _input _mappedToInput))))
    (define/override (jm_remove_2 _input _mappedToInput)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (super jm_remove_2 _input _mappedToInput)
        (send this jm_set_2 _input (get-field f_NONE (get-field f_gameKeyFactory this))))))
    (define/public (jm_set_2 _input _mappedToInput)
    (let ([_id JR.null])
      (let/ec jreturn
        (set! _id (send _mappedToInput jm_getId_0))
        (when (and (>= _id 0) (< _id (vector-length (get-field f_platformToGameKeyMapping this))))
            (begin
            (vector-set! (get-field f_platformToGameKeyMapping this) _id _input))))))
    (define/public (jm_getMaxMappable_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-length (get-field f_platformToGameKeyMapping this))))))
    (define/public (jm_getReverseInstance_1 _id)
    (let ([_list JR.null][_inputFactory JR.null][_input JR.null][_index JR.null])
      (let/ec jreturn
        (set! _list (BasicArrayListD.jnew_0))
        (set! _inputFactory (InputFactory.jm_getInstance_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length (get-field f_platformToGameKeyMapping this)))
                (let/ec jcontinue
            (when (= (JR.className (vector-ref (get-field f_platformToGameKeyMapping this) _index)) _id)
                (begin
                (set! _input (send _inputFactory jm_getInstanceById_1 _index))
                (when (not (JR.null? _input))
                    (begin
                    (send _list jm_add_1 _input))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _list))))
    (define/public (jm_initGameKey_2 _canvas _gameKey)
    (let ([_key JR.null])
      (let/ec jreturn
        (set! _key (send _canvas jm_getKeyCode_1 (send _gameKey jm_getId_0)))
        (if (and (< _key 0) (< (JR.i32 (- _key)) (vector-length (get-field f_negativePlatformToGameKeyMapping this))))
            (begin
            (vector-set! (get-field f_negativePlatformToGameKeyMapping this) (JR.i32 (- _key)) _gameKey))
            (if (> _key 0)
            (begin
            (when (eq? (vector-ref (get-field f_platformToGameKeyMapping this) _key) (get-field f_NONE (get-field f_gameKeyFactory this)))
                (begin
                (vector-set! (get-field f_platformToGameKeyMapping this) _key _gameKey))))
            (begin
            (PreLogUtil.jm_putOE_4 (send (send (send (send (StringMaker.jnew_0) jm_append_1 (send _gameKey jm_toString_0)) jm_append_1 (get-field f_COLON_SEP (CommonSeps.jm_getInstance_0))) jm_appendint_1 _key) jm_toString_0) this (get-field f_INIT (get-field f_commonStrings this)) (JR.newException "Exception"))))))))
    (define/public (jm_getSmallestCanvasGameKeyCode_1 _canvas)
    (let ([_nextKey JR.null][_smallestKey JR.null][_index JR.null])
      (let/ec jreturn
        (set! _nextKey 0)
        (set! _smallestKey 0)
        (begin
            (set! _index (vector-length (get-field f_mappedGameKeys this)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _nextKey (send _canvas jm_getKeyCode_1 (JR.className (vector-ref (get-field f_mappedGameKeys this) _index))))
            (when (< _nextKey _smallestKey)
                (begin
                (set! _smallestKey _nextKey)))) (jloop)))))
        (jreturn _smallestKey))))
    (define/public (jm_init_1 _canvas)
    (let ([_negativePlatformToGameKeyMapping JR.null][_smallestKey JR.null][_index JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_t)
            (JR.className (get-field f_logUtil this)))])
            (set! _negativePlatformToGameKeyMapping (JR.newArray JR.null 0))
            (set! _smallestKey (send this jm_getSmallestCanvasGameKeyCode_1 _canvas))
            (when (< _smallestKey 0)
                (begin
                (set! _smallestKey (JR.i32 (- _smallestKey 1)))
                (when (< _smallestKey (JR.i32 (- 256)))
                    (begin
                    (set! _smallestKey (JR.i32 (- 256)))))
                (set! _negativePlatformToGameKeyMapping (JR.newArray JR.null (JR.i32 (- _smallestKey))))
                (begin
                    (set! _index (vector-length _negativePlatformToGameKeyMapping))
                    (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                        (let/ec jcontinue
                    (vector-set! _negativePlatformToGameKeyMapping _index (get-field f_NONE (get-field f_gameKeyFactory this)))) (jloop)))))
                (set-field! f_negativePlatformToGameKeyMapping this _negativePlatformToGameKeyMapping)))
            (begin
                (set! _index (vector-length (get-field f_mappedGameKeys this)))
                (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                    (let/ec jcontinue
                (send this jm_initGameKey_2 _canvas (vector-ref (get-field f_mappedGameKeys this) _index))) (jloop)))))))))
    (define/public (jm_getInstanceForCanvas_2 _canvas _id)
    (let ()
      (let/ec jreturn
        (if (and (>= _id 0) (< _id (vector-length (get-field f_platformToGameKeyMapping this))))
            (begin
            (jreturn (vector-ref (get-field f_platformToGameKeyMapping this) _id)))
            (if (and (< _id 0) (< (JR.i32 (- _id)) (vector-length (get-field f_negativePlatformToGameKeyMapping this))))
            (begin
            (jreturn (vector-ref (get-field f_negativePlatformToGameKeyMapping this) (JR.i32 (- _id)))))
            (begin
            (jreturn (get-field f_NONE (get-field f_gameKeyFactory this)))))))))
    (define/public (jm_getInstance_1 _id)
    (let ()
      (let/ec jreturn
        (if (and (>= _id 0) (< _id (vector-length (get-field f_platformToGameKeyMapping this))))
            (begin
            (jreturn (vector-ref (get-field f_platformToGameKeyMapping this) _id)))
            (if (and (< _id 0) (< (JR.i32 (- _id)) (vector-length (get-field f_negativePlatformToGameKeyMapping this))))
            (begin
            (jreturn (vector-ref (get-field f_negativePlatformToGameKeyMapping this) (JR.i32 (- _id)))))
            (begin
            (jreturn (get-field f_NONE (get-field f_gameKeyFactory this)))))))))))
(define (InputToGameKeyMapping.jclassValue) InputToGameKeyMapping%)

(define InputToGameKeyMapping.jcell_instance 'jnone)
(define (InputToGameKeyMapping.jstatic_instance)
  (when (eq? InputToGameKeyMapping.jcell_instance 'jnone) (set! InputToGameKeyMapping.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  InputToGameKeyMapping.jcell_instance)
(define (InputToGameKeyMapping.jsetstatic_instance value) (set! InputToGameKeyMapping.jcell_instance value))

(define (InputToGameKeyMapping.jnew_0)
  (define this (new InputToGameKeyMapping% [jclass "InputToGameKeyMapping"]))
    (set-field! f_gameKeyFactory this (GameKeyFactory.jm_getInstance_0))
    (set-field! f_mappedGameKeys this (vector (get-field f_UP (get-field f_gameKeyFactory this)) (get-field f_DOWN (get-field f_gameKeyFactory this)) (get-field f_LEFT (get-field f_gameKeyFactory this)) (get-field f_RIGHT (get-field f_gameKeyFactory this))))
    (set-field! f_platformToGameKeyMapping this (JR.newArray JR.null (get-field f_MAX (InputFactory.jm_getInstance_0))))
    (set-field! f_negativePlatformToGameKeyMapping this (JR.newArray JR.null 0))
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (send this jm_clear_0)))
  this)

(define (InputToGameKeyMapping.jm_getNullInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (InputToGameKeyMapping.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! InputToGameKeyMapping.jcell_instance (InputToGameKeyMapping.jnew_0))))
        (jreturn (InputToGameKeyMapping.jstatic_instance)))))



