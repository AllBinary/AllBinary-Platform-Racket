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
;; package org.allbinary.game.ag.layer.hud.basic

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.rkt"
  "../../../../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../../../../../java/lang/Integer.rkt"
  "../../../../../../../java/lang/Boolean.rkt")
(lazy-require ["../../../../../../../org/allbinary/business/advertisement/GameAdStateFactory.rkt" (GameAdStateFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/canvas/Processor.rkt" (Processor.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/game/ag/layer/hud/basic/notification/GameNotification.rkt" (GameNotification.jnew_0)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEventHandler.rkt" (GameNotificationEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/graphics/CustomGPoint.rkt" (CustomGPoint.jm_getInstance3_2 CustomGPoint.jstatic_NULL_CUSTOM_POINT)])
(lazy-require ["../../../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(lazy-require ["../../../../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(lazy-require ["./SetAndRemoveProcessor.rkt" (SetAndRemoveProcessor.jnew_1)])
(lazy-require ["./NextUnremoveableProcessor.rkt" (NextUnremoveableProcessor.jnew_1)])
(provide (all-defined-out))

(define PlayerGameNotificationHud%
  (class GameNotificationHud%
    (super-new)
    (inherit/super jm_paintString_2)
    (field [f_gameTickTimeDelayHelper JR.null])
    (field [f_EMPTY_STRING JR.null])
    (field [f_timeDelayHelper JR.null])
    (field [f_circularIndexUtil JR.null])
    (field [f_gameNotification JR.null])
    (field [f_permanentGameNotification JR.null])
    (field [f_setAndRemoveProcessor JR.null])
    (field [f_nextUnremoveableProcessor JR.null])
    (field [f_processor JR.null])
    (field [f_PERMANENT_GAME_NOTIFICATION JR.null])
    (field [f_lastString JR.null])
    (field [f_string JR.null])
    (field [f_point JR.null])
    (field [f_width 0])
    (define/override (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null][_logUtil JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _logUtil (LogUtil.jm_getInstance_0))
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send _logUtil jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_UPDATE _commonStrings) _e))])
            (super jm_updateMeasurement_1 _graphics)
            (set! _font (send _graphics jm_getFont_0))
            (set-field! f_width this (send _font jm_stringWidth_1 (get-field f_string this)))
            (send (get-field f_processor this) jm_process_0)
            (set-field! f_processor this (Processor.jm_getInstance_0))))))
    (define/override (jm_getPoint_2 _x _y)
    (let ()
      (let/ec jreturn
        (set-field! f_point this (CustomGPoint.jm_getInstance3_2 0 0))
        (send (get-field f_point this) jm_setX_1 _x)
        (send (get-field f_point this) jm_setY_1 _y)
        (jreturn (get-field f_point this)))))
    (define/override (jm_add_4 _string _seconds _basicColor _permanent)
    (let ()
      (let/ec jreturn
        (if (send _permanent jm_booleanValue_0)
            (begin
            (when (not (eq? (get-field f_lastString this) _string))
                (begin
                (set-field! f_lastString this _string)
                (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_PERMANENT_GAME_NOTIFICATION this)) jm_append_1 _string) jm_toString_0) this (get-field f_ADD (get-field f_commonStrings this)))))
            (send (get-field f_permanentGameNotification this) jm_add_3 _string _seconds _basicColor)
            (send (get-field f_circularIndexUtil this) jm_setSize_1 (send (get-field f_permanentGameNotification this) jm_getSize_0)))
            (begin
            (send (get-field f_gameNotification this) jm_add_3 _string _seconds _basicColor))))))
    (define/override (jm_processTick_0)
    (let ([_gameAdState JR.null])
      (let/ec jreturn
        (when (send (get-field f_timeDelayHelper this) jm_isTime_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this)))
            (begin
            (set! _gameAdState (send (GameAdStateFactory.jm_getInstance_0) jm_getCurrentInstance_0))
            (if (send _gameAdState jm_isShowingAtLocation_1 (send this jm_getLocation_0))
                (begin
                (set-field! f_offsetY this (JR.i32 (- 54))))
                (begin
                (set-field! f_offsetY this 0)))
            (if (> (send (get-field f_gameNotification this) jm_getSize_0) 0)
                (begin
                (send this jm_setAndRemove_0))
                (if (> (send (get-field f_permanentGameNotification this) jm_getSize_0) 0)
                (begin
                (send this jm_setNextUnremoveable_0))
                (begin
                (set-field! f_string this (get-field f_EMPTY_STRING this))))))))))
    (define/public (jm_setAndRemove_0)
    (let ()
      (let/ec jreturn
        (set-field! f_string this (JR.className (get-field f_stringList (get-field f_gameNotification this))))
        (set-field! f_processor this (get-field f_setAndRemoveProcessor this)))))
    (define/public (jm_setAndRemoveProcess_0)
    (let ([_time JR.null][_iTime JR.null])
      (let/ec jreturn
        (send this jm_setX_1 (arithmetic-shift (JR.i32 (- (send (get-field f_displayInfo this) jm_getLastWidth_0) (get-field f_width this))) (- (bitwise-and 1 31))))
        (send (get-field f_point this) jm_setX_1 (send this jm_getX_0))
        (send (get-field f_point this) jm_setY_1 (send this jm_getY_0))
        (set! _time (JR.className (get-field f_timeList (get-field f_gameNotification this))))
        (set! _iTime (JR.i32 (* (send _time jm_intValue_0) 1000)))
        (when (= _iTime 0)
            (begin
            (set! _iTime 500)))
        (set-field! f_delay (get-field f_timeDelayHelper this) _iTime)
        (send this jm_setBasicColorP_1 (JR.className (get-field f_colorList (get-field f_gameNotification this)))))))
    (define/public (jm_setNextUnremoveable_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (set! _index (send (get-field f_circularIndexUtil this) jm_getIndex_0))
        (set-field! f_string this (vector-ref (get-field f_objectArray (get-field f_stringList (get-field f_permanentGameNotification this))) _index))
        (set-field! f_processor this (get-field f_nextUnremoveableProcessor this)))))
    (define/public (jm_setNextUnremoveableProcess_0)
    (let ([_index JR.null][_time JR.null])
      (let/ec jreturn
        (set! _index (send (get-field f_circularIndexUtil this) jm_getIndex_0))
        (send this jm_setX_1 (arithmetic-shift (JR.i32 (- (send (get-field f_displayInfo this) jm_getLastWidth_0) (get-field f_width this))) (- (bitwise-and 1 31))))
        (send (get-field f_point this) jm_setX_1 (send this jm_getX_0))
        (send (get-field f_point this) jm_setY_1 (send this jm_getY_0))
        (set! _time (vector-ref (get-field f_objectArray (get-field f_timeList (get-field f_permanentGameNotification this))) _index))
        (set-field! f_delay (get-field f_timeDelayHelper this) (JR.i32 (* (send _time jm_intValue_0) 1000)))
        (send this jm_setBasicColorP_1 (vector-ref (get-field f_objectArray (get-field f_colorList (get-field f_permanentGameNotification this))) _index))
        (send (get-field f_circularIndexUtil this) jm_next_0))))
    (define/override (jm_clear_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameNotification this) jm_clear_0)
        (send (get-field f_permanentGameNotification this) jm_clear_0))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_myFontProcessor this))
        (super jm_paintString_2 _graphics (get-field f_string this)))))))
(define (PlayerGameNotificationHud.jclassValue) PlayerGameNotificationHud%)

(define (PlayerGameNotificationHud.jnew_4 _location _direction _bufferZone _basicColor)
  (define this (new PlayerGameNotificationHud% [jclass "PlayerGameNotificationHud"]))
    (set-field! f_gameTickTimeDelayHelper this (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (set-field! f_EMPTY_STRING this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_displayInfo this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_timeDelayHelper this (TimeDelayHelper.jnew_1 0))
    
    (set-field! f_gameNotification this (GameNotification.jnew_0))
    (set-field! f_permanentGameNotification this (GameNotification.jnew_0))
    (set-field! f_setAndRemoveProcessor this (SetAndRemoveProcessor.jnew_1 this))
    (set-field! f_nextUnremoveableProcessor this (NextUnremoveableProcessor.jnew_1 this))
    (set-field! f_processor this (Processor.jm_getInstance_0))
    (set-field! f_PERMANENT_GAME_NOTIFICATION this "Permanent Game Notification: ")
    (set-field! f_lastString this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_string this (get-field f_EMPTY_STRING this))
    (set-field! f_point this (CustomGPoint.jstatic_NULL_CUSTOM_POINT))
    
    (let ([_gameNotificationEventHandler JR.null])
      (let/ec jreturn
        (void)
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 0))
        (set! _gameNotificationEventHandler (GameNotificationEventHandler.jm_getInstance_0))
        (send _gameNotificationEventHandler jm_removeAllListeners_0)
        (send _gameNotificationEventHandler jm_addListenerInterface_1 this)))
  this)



