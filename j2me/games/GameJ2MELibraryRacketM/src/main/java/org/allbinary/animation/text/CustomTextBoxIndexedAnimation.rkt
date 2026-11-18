#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary.animation.text

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/IndexedAnimation.rkt"
  "../../../../org/allbinary/game/input/event/RawKeyEventListener.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "./TextInterface.rkt")
(lazy-require ["../../../../org/allbinary/animation/AnimationBehavior.rkt" (AnimationBehavior.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./TextChangeListener.rkt" (TextChangeListener.jm_getInstance_0)])
(provide (all-defined-out))

(define CustomTextBoxIndexedAnimation%
  (class IndexedAnimation%
    (super-new)
    (field [f_customTextBox JR.null])
    (field [f_lastText JR.null])
    (field [f_hasChanged #f])
    (field [f_textChangeListener JR.null])
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (JR.className (send (get-field f_customTextBox this) jm_getTextFieldItem_0)))))
    (define/override (jm_setBackgroundBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (JR.className (send (get-field f_customTextBox this) jm_getTextFieldItem_0)))))
    (define/public (jm_setTextWithOnMeasure_2 _text _textChangeListener)
    (let ()
      (let/ec jreturn
        (send this jm_setText_1 _text)
        (set-field! f_textChangeListener this _textChangeListener))))
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (send (get-field f_textChangeListener this) jm_onMeasure_0)
        (set-field! f_textChangeListener this (TextChangeListener.jm_getInstance_0)))))
    (define/public (jm_setText_1 _text)
    (let ()
      (let/ec jreturn
        (when (not (eq? (get-field f_lastText this) _text))
            (begin
            (set-field! f_hasChanged this #t)
            (set-field! f_lastText this _text)
            (JR.className (send (get-field f_customTextBox this) jm_getTextFieldItem_0)))))))
    (define/public (jm_getText_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (send (get-field f_customTextBox this) jm_getTextFieldItem_0))))))
    (define/public (jm_onEventRaw_3 _keyCode _deviceId _repeated)
    (let ()
      (let/ec jreturn
        (send (get-field f_customTextBox this) jm_onEventRaw_3 _keyCode _deviceId _repeated))))
    (define/public (jm_getFontHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (send (get-field f_customTextBox this) jm_getTextFieldItem_0))))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_customTextBox this) jm_paintXY_3 _graphics _x _y))))
    (define/override (jm_paintThreedXYZ_4 _graphics _x _y _z)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getWidth_0)))))))
(define (CustomTextBoxIndexedAnimation.jclassValue) CustomTextBoxIndexedAnimation%)

(define (CustomTextBoxIndexedAnimation.jnew_1 _customTextBox)
  (define this (new CustomTextBoxIndexedAnimation% [jclass "CustomTextBoxIndexedAnimation"]))
    
    (set-field! f_lastText this (get-field f_INIT_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_hasChanged this #t)
    (set-field! f_textChangeListener this (TextChangeListener.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_customTextBox this _customTextBox)))
  this)



