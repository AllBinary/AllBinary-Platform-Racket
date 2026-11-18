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
;; package org.allbinary.graphics.canvas.transition.progress

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/canvas/RunnableCanvas.rkt"
  "../../../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../../../../org/allbinary/graphics/paint/PaintableInterface.rkt")
(lazy-require ["../../../../../../javax/microedition/lcdui/NullCanvas.rkt" (NullCanvas.jstatic_NULL_CANVAS)])
(lazy-require ["../../../../../../javax/microedition/lcdui/NullCommandListener.rkt" (NullCommandListener.jstatic_NULL_COMMAND_LISTENER)])
(lazy-require ["../../../../../../org/allbinary/canvas/Processor.rkt" (Processor.jnew_0 Processor.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../../../org/allbinary/graphics/form/item/ABCustomGaugeItem.rkt" (ABCustomGaugeItem.jnew_5)])
(lazy-require ["../../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/midlet/AllBinaryMidlet.rkt" (AllBinaryMidlet.jm_getNullInstance_0)])
(lazy-require ["../../../../../../org/allbinary/thread/PathFindingThreadPool.rkt" (PathFindingThreadPool.jm_getInstance_0)])
(lazy-require ["./ProgressPaintable.rkt" (ProgressPaintable.jnew_1)])
(lazy-require ["./ProgressEndListener.rkt" (ProgressEndListener.jstatic_instance)])
(provide (all-defined-out))

(define ProgressCanvas%
  (class RunnableCanvas%
    (super-new)
    (field [f_hasPainted #f])
    (field [f_backgroundBasicColor JR.null])
    (field [f_GAUGE_PAINTABLE JR.null])
    (field [f_maxValue 0.0])
    (field [f_gauge JR.null])
    (field [f_TEXT JR.null])
    (field [f_updateMyFontProcessor JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_allbinaryMidlet JR.null])
    (field [f_value 0.0])
    (field [f_text JR.null])
    (field [f_background #f])
    (field [f_paintable JR.null])
    (field [f_inProgress #f])
    (field [f_IN_GAME_PROCESSOR JR.null])
    (field [f_inGameProcessor JR.null])
    (field [f_progressEndListener JR.null])
    (field [f_backgroundLabel JR.null])
    (field [f_START_BACKGROUND JR.null])
    (field [f_ADD_PORTION JR.null])
    (field [f_ADD_EARLY_PORTION JR.null])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (send (get-field f_gauge this) jm_setHeight_1 (JR.i32 (+ (send _font jm_getHeight_0) 2)))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_init_1 _gameMidlet)
    (let ()
      (let/ec jreturn
        (set-field! f_allbinaryMidlet this _gameMidlet))))
    (define/public (jm_update_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getMaxValue_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_maxValue this)))))
    (define/public (jm_start_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (send this jm_setBackground_1 #t)
        (send (get-field f_gauge this) jm_setHeight_1 30)
        (send (get-field f_gauge this) jm_setLabel_1 (get-field f_PLEASE_WAIT (get-field f_commonStrings this)))
        (send this jm_setText_1 (get-field f_TEXT this))
        (send this jm_setValue_1 0)
        (set-field! f_inGameProcessor this (Processor.jm_getInstance_0))
        (set-field! f_paintable this (get-field f_GAUGE_PAINTABLE this))
        (set-field! f_inProgress this #t))))
    (define/public (jm_startBackground_1 _background)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (send this jm_setBackground_1 _background)
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
        (send (get-field f_gauge this) jm_setLabel_1 (get-field f_backgroundLabel this))
        (send this jm_setText_1 (get-field f_TEXT this))
        (send this jm_setValue_1 0)
        (set-field! f_inGameProcessor this (Processor.jm_getInstance_0))
        (set-field! f_paintable this (get-field f_GAUGE_PAINTABLE this)))))
    (define/public (jm_endActual_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_allbinaryMidlet this) jm_commandAction_2 (get-field f_SHOW_GAME_CANVAS (GameCommandsFactory.jm_getInstance_0)) (NullCanvas.jstatic_NULL_CANVAS))
        (set-field! f_inProgress this #f)
        (send this jm_inGame_0))))
    (define/public (jm_inGame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_progressEndListener this) jm_onEndEvent_0)
        (set-field! f_inGameProcessor this (get-field f_IN_GAME_PROCESSOR this)))))
    (define/public (jm_end_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (send (get-field f_gauge this) jm_setValue_1 (send this jm_getMaxValue_0))
        (send this jm_endActual_0)
        (set-field! f_paintable this (NullPaintable.jm_getInstance_0)))))
    (define/public (jm_endFromInitialLazyLoadingComplete_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_progressEndListener this) jm_onEndEvent_0)
        (send (get-field f_gauge this) jm_setValue_1 (send this jm_getMaxValue_0))
        (set-field! f_inGameProcessor this (get-field f_IN_GAME_PROCESSOR this)))))
    (define/public (jm_isInGame_0)
    (let ()
      (let/ec jreturn
        (when (eq? (get-field f_inGameProcessor this) (get-field f_IN_GAME_PROCESSOR this))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_endIfPaintedSinceStart_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_addEarlyPortion_3 _value _text _index)
    (let ()
      (let/ec jreturn
        (send this jm_setText_1 (send (send (send (StringMaker.jnew_0) jm_append_1 _text) jm_append_1 (JR.toString (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 _index))) jm_toString_0))
        (send (get-field f_gauge this) jm_setValue_1 (+ (send (get-field f_gauge this) jm_getValue_0) (/ (send this jm_getMaxValue_0) (JR.toDouble _value)))))))
    (define/public (jm_addPortion_3 _value _text _index)
    (let ()
      (let/ec jreturn
        (send this jm_setText_1 (send (send (send (StringMaker.jnew_0) jm_append_1 _text) jm_append_1 (JR.toString (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 _index))) jm_toString_0))
        (PreLogUtil.jm_put_3 (get-field f_text this) this (get-field f_ADD_PORTION this))
        (send (get-field f_gauge this) jm_setValue_1 (+ (send (get-field f_gauge this) jm_getValue_0) (/ (send this jm_getMaxValue_0) (JR.toDouble _value)))))))
    (define/public (jm_addNormalPortion_2 _value _text)
    (let ()
      (let/ec jreturn
        (when (not (eq? (get-field f_text this) _text))
            (begin
            (PreLogUtil.jm_put_3 _text this (get-field f_ADD_PORTION this))))
        (send this jm_setText_1 _text)
        (send (get-field f_gauge this) jm_setValue_1 (+ (send (get-field f_gauge this) jm_getValue_0) (/ (send this jm_getMaxValue_0) (JR.toDouble _value)))))))
    (define/public (jm_setValue_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_value this (JR.toDouble _value))
        (send (get-field f_gauge this) jm_setValue_1 (JR.toDouble _value)))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_paintable this) jm_paint_1 _graphics))))
    (define/public (jm_paint2_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send _graphics jm_setColor_1 (send (get-field f_backgroundBasicColor this) jm_intValue_0))
        (send _graphics jm_fillRect_4 0 0 (JR.className (get-field f_displayInfo this)) (JR.className (get-field f_displayInfo this)))
        (send (get-field f_gauge this) jm_paintXY_3 _graphics 0 0)
        (set-field! f_hasPainted this #t))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getValue_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_value this)))))
    (define/public (jm_setText_1 _text)
    (let ()
      (let/ec jreturn
        (set-field! f_text this _text))))
    (define/public (jm_getText_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_text this)))))
    (define/public (jm_setBackground_1 _background)
    (let ()
      (let/ec jreturn
        (set-field! f_background this _background))))
    (define/public (jm_isBackground_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_background this)))))))
(define (ProgressCanvas.jclassValue) ProgressCanvas%)

(define (ProgressCanvas.jnew_3 _title _backgroundBasicColor _foregroundBasicColor)
  (define this (new ProgressCanvas% [jclass "ProgressCanvas"]))
    
    
    (set-field! f_GAUGE_PAINTABLE this (ProgressPaintable.jnew_1 this))
    (set-field! f_maxValue this 100.0)
    
    (set-field! f_TEXT this (get-field f_LOADING (get-field f_commonStrings this)))
    (set-field! f_updateMyFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
    (set-field! f_allbinaryMidlet this (AllBinaryMidlet.jm_getNullInstance_0))
    
    (set-field! f_text this (get-field f_TEXT this))
    (set-field! f_background this #t)
    (set-field! f_paintable this (get-field f_GAUGE_PAINTABLE this))
    (set-field! f_inProgress this #f)
    (set-field! f_IN_GAME_PROCESSOR this (Processor.jnew_0))
    (set-field! f_inGameProcessor this (Processor.jm_getInstance_0))
    (set-field! f_progressEndListener this (ProgressEndListener.jstatic_instance))
    (set-field! f_backgroundLabel this "Background AI Game Loading...")
    (set-field! f_START_BACKGROUND this "startBackground")
    (set-field! f_ADD_PORTION this "addPortion")
    (set-field! f_ADD_EARLY_PORTION this "addEarlyPortion")
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_backgroundBasicColor this _backgroundBasicColor)
        (set-field! f_gauge this (ABCustomGaugeItem.jnew_5 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (JR.d2i (get-field f_maxValue this)) 0 _backgroundBasicColor _foregroundBasicColor))))
  this)



