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
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/displayable/canvas/GameCommandCanvas.rkt"
  "../../../../../org/allbinary/game/input/event/RawKeyEventListener.rkt")
(lazy-require ["../../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isJ2ME_0)])
(lazy-require ["../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/PlatformKeyFactory.rkt" (PlatformKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/form/item/validation/TextItemVisitor.rkt" (TextItemVisitor.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["./ABTextFieldItem.rkt" (ABTextFieldItem.jnew_10)])
(provide (all-defined-out))

(define CustomTextBox%
  (class GameCommandCanvas%
    (super-new)
    (field [f_textFieldItem JR.null])
    (field [f_inputFactory JR.null])
    (define/public (jm_submit_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onEventRaw_3 _keyCode _deviceId _repeated)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (send this jm_keyPressedByDevice_2 _keyCode _deviceId))))
    (define/override (jm_keyPressed_1 _keyCode)
    (let ()
      (let/ec jreturn
        (send this jm_keyPressedByDevice_2 _keyCode 0))))
    (define/override (jm_keyReleased_1 _keyCode)
    (let ()
      (let/ec jreturn
        (send this jm_keyReleasedByDevice_2 _keyCode 0))))
    (define/override (jm_keyRepeated_1 _keyCode)
    (let ()
      (let/ec jreturn
        (send this jm_keyRepeatedByDevice_2 _keyCode 0))))
    (define/override (jm_keyPressedByDevice_2 _keyCode _deviceId)
    (let ([_platformKeyFactory JR.null][_input JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (JR.className (get-field f_logUtil this))
            (set! _platformKeyFactory (PlatformKeyFactory.jm_getInstance_0))
            (set! _input (send (get-field f_inputFactory this) jm_getInstanceById_1 _keyCode))
            (if (send _platformKeyFactory jm_isSubmission_1 _input)
                (begin
                (send this jm_submit_0))
                (begin
                (send (get-field f_textFieldItem this) jm_keyPressed_1 _keyCode)))))))
    (define/override (jm_keyReleasedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send _graphics jm_setColor_1 (get-field f_backgroundColor this))
        (send _graphics jm_fillRect_4 0 0 (JR.className (get-field f_displayInfo this)) (JR.className (get-field f_displayInfo this)))
        (send _graphics jm_setColor_1 (get-field f_foregroundColor this))
        (when (not (J2MEUtil.jm_isJ2ME_0))
            (begin
            (send _graphics jm_drawString_4 (send this jm_getTitle_0) 8 1 0)))
        (send this jm_paintXY_3 _graphics 8 (JR.i32 (+ (JR.className (send _graphics jm_getFont_0)) 2)))
        (super jm_paint_1 _graphics))))
    (define/public (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_textFieldItem this) jm_paintXY_3 _graphics _x _y))))
    (define/public (jm_getTextFieldItem_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_textFieldItem this)))))))
(define (CustomTextBox.jclassValue) CustomTextBox%)

(define (CustomTextBox.jnew_8 _cmdListener _label _text _maxSize _constraints _font _backgroundBasicColor _foregroundBasicColor)
  (define this (new CustomTextBox% [jclass "CustomTextBox"]))
    
    (set-field! f_inputFactory this (InputFactory.jm_getInstance_0))
    (let ([_stringUtil JR.null][_textFieldItem JR.null])
      (let/ec jreturn
        (void)
        (set! _stringUtil (StringUtil.jm_getInstance_0))
        (set! _textFieldItem (ABTextFieldItem.jnew_10 this (TextItemVisitor.jnew_0) (get-field f_EMPTY_STRING _stringUtil) (get-field f_EMPTY_STRING _stringUtil) _maxSize 0 (get-field f_EMPTY_STRING _stringUtil) _font _backgroundBasicColor _foregroundBasicColor))
        (send _textFieldItem jm_setString_1 _text)
        (set-field! f_textFieldItem this _textFieldItem)
        (send this jm_setTitle_1 _label)))
  this)



