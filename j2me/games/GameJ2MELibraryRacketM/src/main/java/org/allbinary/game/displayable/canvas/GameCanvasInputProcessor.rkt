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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/input/InputProcessor.rkt"
  "../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/PlatformInputMappingFactory.rkt" (PlatformInputMappingFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler.rkt" (DownGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/DownKeyEventHandler.rkt" (DownKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEventFactory.rkt" (GameKeyEventFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler.rkt" (UpGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define GameCanvasInputProcessor%
  (class InputProcessor%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_allBinaryGameCanvas JR.null])
    (field [f_downGameKeyEventHandler JR.null])
    (field [f_upGameKeyEventHandler JR.null])
    (field [f_downKeyEventHandler JR.null])
    (field [f_smallIntegerSingletonFactory JR.null])
    (field [f_inputToGameKeyMapping JR.null])
    (field [f_NONE JR.null])
    (field [f_gameKeyEventFactory JR.null])
    (define/override (jm_keyPressedByDevice_2 _keyCode _deviceId)
    (let ([_gameKey JR.null][_gameKeyEvent JR.null][_keyCodeAsInteger JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 "Key Event Error" this (get-field f_ADD_KEY_EVENT (get-field f_gameInputStrings this)) _e))])
            (set! _gameKey (send (get-field f_inputToGameKeyMapping this) jm_getInstanceForCanvas_2 (get-field f_allBinaryGameCanvas this) _keyCode))
            (if (not (eq? _gameKey (get-field f_NONE this)))
                (begin
                (set! _gameKeyEvent (send (get-field f_gameKeyEventFactory this) jm_getInstanceForInput_2 (get-field f_allBinaryGameCanvas this) _gameKey))
                (send (get-field f_downGameKeyEventHandler this) jm_fireEvent_1 _gameKeyEvent)
                (JR.className (send (get-field f_downGameKeyEventHandler this) jm_getInstanceForDevice_1 _deviceId)))
                (begin
                (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_NO_KEY (get-field f_gameInputStrings this))) jm_appendint_1 _keyCode) jm_toString_0) this (get-field f_ADD_KEY_EVENT (get-field f_gameInputStrings this)))))
            (set! _keyCodeAsInteger (send (get-field f_smallIntegerSingletonFactory this) jm_getAtNoThrow_1 _keyCode))
            (send (get-field f_downKeyEventHandler this) jm_fireEventI_1 _keyCodeAsInteger)
            (JR.className (send (get-field f_downKeyEventHandler this) jm_getInstanceForDevice_1 _deviceId))))))
    (define/override (jm_keyReleasedByDevice_3 _canvas _keyCode _deviceId)
    (let ()
      (let/ec jreturn
        (send this jm_removeGameKeyEvent_4 _canvas _keyCode _deviceId #f))))
    (define/public (jm_removeGameKeyEvent_4 _canvas _keyCode _deviceId _repeated)
    (let ([_gameKey JR.null][_gameKeyEventSourceInterface JR.null][_gameKeyEvent JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 "Key Event Error" this (get-field f_REMOVE_KEY_EVENT (get-field f_gameInputStrings this)) _e))])
            (set! _gameKey (send (get-field f_inputToGameKeyMapping this) jm_getInstanceForCanvas_2 _canvas _keyCode))
            (if (not (eq? _gameKey (get-field f_NONE this)))
                (begin
                (set! _gameKeyEventSourceInterface _canvas)
                (set! _gameKeyEvent (send (get-field f_gameKeyEventFactory this) jm_getInstanceForInput_2 _gameKeyEventSourceInterface _gameKey))
                (send (get-field f_upGameKeyEventHandler this) jm_fireEvent_1 _gameKeyEvent)
                (JR.className (send (get-field f_upGameKeyEventHandler this) jm_getInstanceForDevice_1 _deviceId)))
                (begin
                (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_NO_KEY (get-field f_gameInputStrings this))) jm_appendint_1 _keyCode) jm_toString_0) this (get-field f_REMOVE_KEY_EVENT (get-field f_gameInputStrings this)))))))))))
(define (GameCanvasInputProcessor.jclassValue) GameCanvasInputProcessor%)

(define (GameCanvasInputProcessor.jnew_1 _allBinaryGameCanvas)
  (define this (new GameCanvasInputProcessor% [jclass "GameCanvasInputProcessor"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (set-field! f_downGameKeyEventHandler this (DownGameKeyEventHandler.jm_getInstance_0))
    (set-field! f_upGameKeyEventHandler this (UpGameKeyEventHandler.jm_getInstance_0))
    (set-field! f_downKeyEventHandler this (DownKeyEventHandler.jm_getInstance_0))
    (set-field! f_smallIntegerSingletonFactory this (SmallIntegerSingletonFactory.jm_getInstance_0))
    (set-field! f_inputToGameKeyMapping this (JR.className (send (PlatformInputMappingFactory.jm_getInstance_0) jm_getPersistentInputMappingInstance_0)))
    (set-field! f_NONE this (get-field f_NONE (GameKeyFactory.jm_getInstance_0)))
    (set-field! f_gameKeyEventFactory this (GameKeyEventFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_allBinaryGameCanvas this _allBinaryGameCanvas)
        (send (get-field f_inputToGameKeyMapping this) jm_init_1 (get-field f_allBinaryGameCanvas this))))
  this)



