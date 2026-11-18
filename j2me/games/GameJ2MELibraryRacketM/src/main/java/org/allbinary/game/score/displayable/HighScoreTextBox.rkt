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
;; package org.allbinary.game.score.displayable

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/form/item/CustomTextBox.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Font.rkt" (Font.jm_getDefaultFont_0)])
(lazy-require ["../../../../../javax/microedition/lcdui/TextField.rkt" (TextField.jstatic_ANY)])
(lazy-require ["../../../../../org/allbinary/PostGameCommandFactory.rkt" (PostGameCommandFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/SimpleTextPaintable.rkt" (SimpleTextPaintable.jnew_2)])
(lazy-require ["../../../../../org/allbinary/input/event/VirtualKeyboardEventHandler.rkt" (VirtualKeyboardEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/os/OperatingSystemFactory.rkt" (OperatingSystemFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.rkt" (InApplicationPurchaseFactory.jm_getInstance_0)])
(lazy-require ["./HighScoreUtil.rkt" (HighScoreUtil.jnew_7 HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND)])
(provide (all-defined-out))

(define HighScoreTextBox%
  (class CustomTextBox%
    (super-new)
    (field [f_virtualKeyboardEventHandler JR.null])
    (field [f_highScoreUtil JR.null])
    (field [f_pleaseWait JR.null])
    (field [f_paintable JR.null])
    (field [f_submitted #f])
    (define/override (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn
        (send this jm_removeAllCommands_0)
        (send (PostGameCommandFactory.jm_getInstance_0) jm_addCommands_1 this)
        (send this jm_addCommand_1 (HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND))
        (send this jm_setCommandListener_1 _cmdListener))))
    (define/override (jm_open_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_virtualKeyboardEventHandler this) jm_open_0)
        (set-field! f_paintable this (NullPaintable.jm_getInstance_0))
        (super jm_open_0))))
    (define/override (jm_close_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_virtualKeyboardEventHandler this) jm_close_0)
        (set-field! f_paintable this (get-field f_pleaseWait this))
        (JR.className (get-field f_repaintBehavior this))
        (super jm_close_0)
        (send this jm_removeCommand_1 (HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND))
        (send this jm_update_0)
        (if (get-field f_submitted this)
            (begin
            (send (get-field f_highScoreUtil this) jm_saveHighScore_0))
            (begin
            (void)))
        (set-field! f_paintable this (NullPaintable.jm_getInstance_0))
        (JR.className (get-field f_repaintBehavior this)))))
    (define/override (jm_update_0)
    (let ([_name JR.null])
      (let/ec jreturn
        (set! _name (JR.className (send this jm_getTextFieldItem_0)))
        (send (get-field f_highScoreUtil this) jm_update_1 _name)
        (super jm_update_0))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (super jm_paint_1 _graphics)
        (send (get-field f_paintable this) jm_paint_1 _graphics))))
    (define/public (jm_saveHighScore_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_highScoreUtil this) jm_saveHighScore_0))))
    (define/override (jm_submit_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_highScoreUtil this) jm_submit_1 this))))))
(define (HighScoreTextBox.jclassValue) HighScoreTextBox%)

(define (HighScoreTextBox.jnew_9 _highScoresFactoryInterface _highScoresHelper _abeClientInformation _gameInfo _cmdListener _name _highScore _backgrounBasicColor _foregroundBasicColor)
  (define this (new HighScoreTextBox% [jclass "HighScoreTextBox"]))
    (set-field! f_virtualKeyboardEventHandler this (VirtualKeyboardEventHandler.jm_getInstance_0))
    
    (set-field! f_pleaseWait this (SimpleTextPaintable.jnew_2 (get-field f_PLEASE_WAIT (get-field f_commonStrings this)) (get-field f_WHITE (BasicColorFactory.jm_getInstance_0))))
    (set-field! f_paintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_submitted this #f)
    (let ([_operatingSystemInterface JR.null][_username JR.null])
      (let/ec jreturn
        (void)
        (set-field! f_highScoreUtil this (HighScoreUtil.jnew_7 _highScoresFactoryInterface _highScoresHelper _abeClientInformation _gameInfo _cmdListener _name _highScore))
        (set! _operatingSystemInterface (send (OperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0))
        (when (send _operatingSystemInterface jm_isOverScan_0)
            (begin
            (set! _username (send (InApplicationPurchaseFactory.jm_getInstance_0) jm_getUserName_0))
            (JR.className (send this jm_getTextFieldItem_0))))))
  this)



