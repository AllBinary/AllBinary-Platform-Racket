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
  "../../../../../org/allbinary/game/input/InputProcessor.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/PlatformKeyFactory.rkt" (PlatformKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/DownKeyEventHandler.rkt" (DownKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEventFactory.rkt" (GameKeyEventFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler.rkt" (UpGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define FormInputProcessor%
  (class InputProcessor%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_gameKeyEventFactory JR.null])
    (field [f_downKeyEventHandler JR.null])
    (field [f_upGameKeyEventHandler JR.null])
    (field [f_inputFactory JR.null])
    (field [f_platformKeyFactory JR.null])
    (field [f_allBinaryGameCanvas JR.null])
    (define/override (jm_keyPressedByDevice_2 _keyCode _deviceId)
    (let ([_input JR.null][_gameKeyEvent JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_ADD_KEY_EVENT (get-field f_gameInputStrings this)) _e))])
            (PreLogUtil.jm_put_3 (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_KEY_CODE_LABEL (get-field f_inputFactory this))) jm_appendint_1 _keyCode) jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0))) jm_append_1 (get-field f_DEVICE_ID_LABEL (get-field f_inputFactory this))) jm_appendint_1 _deviceId) jm_toString_0) this (get-field f_KEY_PRESSED (get-field f_gameInputStrings this)))
            (set! _input (send (get-field f_inputFactory this) jm_getInstanceById_1 _keyCode))
            (set! _gameKeyEvent (send (get-field f_gameKeyEventFactory this) jm_getInstanceForInput_2 (get-field f_allBinaryGameCanvas this) _input))
            (send (get-field f_downKeyEventHandler this) jm_fireEventForGameKeyEvent_1 _gameKeyEvent)))))
    (define/override (jm_keyReleasedByDevice_3 _canvas _keyCode _deviceId)
    (let ([_input JR.null][_gameKey JR.null][_gameKeyEventSourceInterface JR.null][_gameKeyEvent JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_ADD_KEY_EVENT (get-field f_gameInputStrings this)) _e))])
            (set! _input (send (get-field f_inputFactory this) jm_getInstanceById_1 _keyCode))
            (when (send (get-field f_platformKeyFactory this) jm_isEnter_1 _input)
                (begin
                (PreLogUtil.jm_put_3 (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_KEY_CODE_LABEL (get-field f_inputFactory this))) jm_appendint_1 _keyCode) jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0))) jm_append_1 (get-field f_DEVICE_ID_LABEL (get-field f_inputFactory this))) jm_appendint_1 _deviceId) jm_toString_0) this (get-field f_KEY_RELEASED (get-field f_gameInputStrings this)))
                (set! _gameKey (get-field f_KEY_NUM0 (GameKeyFactory.jm_getInstance_0)))
                (set! _gameKeyEventSourceInterface _canvas)
                (set! _gameKeyEvent (send (get-field f_gameKeyEventFactory this) jm_getInstanceForInput_2 _gameKeyEventSourceInterface _gameKey))
                (send (get-field f_upGameKeyEventHandler this) jm_fireEvent_1 _gameKeyEvent)
                (JR.className (send (get-field f_upGameKeyEventHandler this) jm_getInstanceForDevice_1 _deviceId))))))))))
(define (FormInputProcessor.jclassValue) FormInputProcessor%)

(define (FormInputProcessor.jnew_1 _allBinaryGameCanvas)
  (define this (new FormInputProcessor% [jclass "FormInputProcessor"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_gameKeyEventFactory this (GameKeyEventFactory.jm_getInstance_0))
    (set-field! f_downKeyEventHandler this (DownKeyEventHandler.jm_getInstance_0))
    (set-field! f_upGameKeyEventHandler this (UpGameKeyEventHandler.jm_getInstance_0))
    (set-field! f_inputFactory this (InputFactory.jm_getInstance_0))
    (set-field! f_platformKeyFactory this (PlatformKeyFactory.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_allBinaryGameCanvas this _allBinaryGameCanvas)))
  this)



