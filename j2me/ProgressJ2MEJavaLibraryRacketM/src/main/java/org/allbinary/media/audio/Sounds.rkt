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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./SoundStrings.rkt" (SoundStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define Sounds%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_soundStrings JR.null])
    (field [f_soundsFactoryInterface JR.null])
    (define/public (jm_init_0)
    (let ([_commonLabels JR.null][_progressCanvas JR.null][_soundInterfaceArray JR.null][_smallIntegerSingletonFactory JR.null][_indexInteger JR.null][_indexString JR.null][_stringBuffer JR.null][_soundInterface JR.null][_i JR.null])
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_INIT (get-field f_commonStrings this)))
        (set! _commonLabels (CommonLabels.jm_getInstance_0))
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (send (get-field f_soundsFactoryInterface this) jm_init_0)
        (set! _soundInterfaceArray (send (get-field f_soundsFactoryInterface this) jm_getSoundInterfaceArray_0))
        (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (set! _indexInteger JR.null)
        (set! _indexString JR.null)
        (set! _stringBuffer (StringMaker.jnew_0))
        (begin
            (set! _i 0)
            (let/ec jbreak (let jloop () (when (< _i (vector-length _soundInterfaceArray))
                (let/ec jcontinue
            (set! _soundInterface (vector-ref _soundInterfaceArray _i))
            (when (not (JR.null? _soundInterface))
                (begin
                (set! _indexInteger (send _smallIntegerSingletonFactory jm_getAt_1 _i))
                (set! _indexString (send _indexInteger jm_toString_0))
                (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
                (send _stringBuffer jm_append_1 (get-field f_INDEX_LABEL _commonLabels))
                (send _stringBuffer jm_append_1 _indexString)
                (send _stringBuffer jm_append_1 (get-field f_SOUND (get-field f_soundStrings this)))
                (send _stringBuffer jm_append_1 (JR.className _soundInterface))
                (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_INIT (get-field f_commonStrings this)))
                (send _soundInterface jm_init_0)
                (send _progressCanvas jm_addNormalPortion_2 100 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_INIT_SOUND (get-field f_soundStrings this))) jm_append_1 _indexString) jm_toString_0)))))
                (set! _i (JR.i32 (+ _i 1))) (jloop)))))
        (send (get-field f_soundsFactoryInterface this) jm_setInitialized_1 #t)
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_END (get-field f_commonStrings this)) this (get-field f_INIT (get-field f_commonStrings this))))))
    (define/public (jm_stopAll_0)
    (let ([_soundInterfaceArray JR.null][_progressCanvas JR.null][_player JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_STOP_ALL (get-field f_soundStrings this)))
        (set! _soundInterfaceArray (send (get-field f_soundsFactoryInterface this) jm_getSoundInterfaceArray_0))
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (set! _player JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _soundInterfaceArray))
                (let/ec jcontinue
            (when (not (JR.null? (vector-ref _soundInterfaceArray _index)))
                (begin
                (set! _player (JR.className (vector-ref _soundInterfaceArray _index)))
                (when (not (JR.null? _player))
                    (begin
                    (send _player jm_stop_0)
                    (send _progressCanvas jm_addPortion_3 100 (get-field f_STOPPING_SOUND (get-field f_soundStrings this)) _index))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_closeAll_0)
    (let ([_soundInterfaceArray JR.null][_progressCanvas JR.null][_player JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_CLOSE_ALL (get-field f_soundStrings this)))
        (set! _soundInterfaceArray (send (get-field f_soundsFactoryInterface this) jm_getSoundInterfaceArray_0))
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (set! _player JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _soundInterfaceArray))
                (let/ec jcontinue
            (when (not (JR.null? (vector-ref _soundInterfaceArray _index)))
                (begin
                (set! _player (JR.className (vector-ref _soundInterfaceArray _index)))
                (when (not (JR.null? _player))
                    (begin
                    (send _player jm_close_0)
                    (send _progressCanvas jm_addPortion_3 100 (get-field f_CLOSING_SOUND (get-field f_soundStrings this)) _index))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (Sounds.jclassValue) Sounds%)

(define (Sounds.jnew_1 _soundsFactoryInterface)
  (define this (new Sounds% [jclass "Sounds"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_soundStrings this (SoundStrings.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_soundsFactoryInterface this _soundsFactoryInterface)))
  this)



