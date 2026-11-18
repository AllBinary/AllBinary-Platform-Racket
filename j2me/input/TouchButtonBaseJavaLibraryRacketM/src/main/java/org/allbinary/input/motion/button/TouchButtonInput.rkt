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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/input/GameKeyEventSourceInterface.rkt"
  "../../../../../org/allbinary/game/input/Input.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEvent.rkt" (GameKeyEvent.jstatic_NONE)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEventFactory.rkt" (GameKeyEventFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchButtonInput%
  (class Input%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_gameKeyEventFactory JR.null])
    (field [f_TOUCH_BUTTON_SOURCE_ID 0])
    (field [f_gameKeyEvent JR.null])
    (define/public (jm_update_1 _inputToGameKeyMapping)
    (let ([_gameKey JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_UPDATE _commonStrings) _e))])
            (set! _gameKey (send _inputToGameKeyMapping jm_getInstance_1 (send this jm_getId_0)))
            (set-field! f_gameKeyEvent this (send (get-field f_gameKeyEventFactory this) jm_getInstanceForInput_2 this _gameKey))))))
    (define/public (jm_getSourceId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_TOUCH_BUTTON_SOURCE_ID this)))))
    (define/public (jm_getGameKeyEvent_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameKeyEvent this)))))))
(define (TouchButtonInput.jclassValue) TouchButtonInput%)

(define (TouchButtonInput.jnew_2 _id _name)
  (define this (new TouchButtonInput% [jclass "TouchButtonInput"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_gameKeyEventFactory this (GameKeyEventFactory.jm_getInstance_0))
    (set-field! f_TOUCH_BUTTON_SOURCE_ID this (get-field f_TOUCH_BUTTON_SOURCE_ID (get-field f_gameKeyEventFactory this)))
    (set-field! f_gameKeyEvent this (GameKeyEvent.jstatic_NONE))
    (let ([_inputFactory JR.null])
      (let/ec jreturn
        (void)
        (set! _inputFactory (InputFactory.jm_getInstance_0))
        (send _inputFactory jm_add_2 (send this jm_getId_0) this)))
  this)



