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
;; package org.allbinary.animation.text

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./TextAnimation.rkt"
  "./TextInterface.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Font.rkt" (Font.jm_getFont_3 Font.jstatic_FACE_SYSTEM Font.jstatic_STYLE_PLAIN)])
(lazy-require ["../../../../org/allbinary/graphics/font/FontDebugFactory.rkt" (FontDebugFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define CustomTextAnimation%
  (class TextAnimation%
    (super-new)
    (inherit/super jm_paintXYNoUpdate_3)
    (field [f_fontDebugFactory JR.null])
    (field [f_fontSize 0])
    (field [f_font JR.null])
    (field [f_lastText JR.null])
    (field [f_hasChanged #f])
    (field [f_textWidth 0])
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ([_existingFont JR.null])
      (let/ec jreturn
        (JR.className (get-field f_myFontProcessor this))
        (set! _existingFont (send _graphics jm_getFont_0))
        (send (get-field f_fontDebugFactory this) jm_setFont_2 (get-field f_font this) _graphics)
        (super jm_paintXYNoUpdate_3 _graphics _x _y)
        (send (get-field f_fontDebugFactory this) jm_setFont_2 _existingFont _graphics))))
    (define/override (jm_setScale_2 _scaleX _scaleY)
    (let ()
      (let/ec jreturn
        (when (not (= _scaleX _scaleY))
            (begin
            (raise (JR.newException "RuntimeException"))))
        (set-field! f_hasChanged this #t)
        (set-field! f_font this (Font.jm_getFont_3 (Font.jstatic_FACE_SYSTEM) (Font.jstatic_STYLE_PLAIN) (JR.d2i (* (JR.toDouble (get-field f_fontSize this)) _scaleX)))))))
    (define/override (jm_setTextWithOnMeasure_2 _text _textChangeListener)
    (let ()
      (let/ec jreturn
        (super jm_setTextWithOnMeasure_2 _text _textChangeListener))))
    (define/override (jm_setText_1 _text)
    (let ()
      (let/ec jreturn
        (when (not (eq? (get-field f_lastText this) _text))
            (begin
            (set-field! f_hasChanged this #t)
            (set-field! f_lastText this _text)
            (super jm_setText_1 _text))))))
    (define/public (jm_getText_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_lastText this)))))
    (define/override (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (when (get-field f_hasChanged this)
            (begin
            (set-field! f_textWidth this (send (get-field f_font this) jm_stringWidth_1 (vector-ref (get-field f_textArrayP this) 0)))
            (set-field! f_hasChanged this #f)))
        (jreturn (get-field f_textWidth this)))))
    (define/override (jm_getFontHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_font this) jm_getHeight_0)))))))
(define (CustomTextAnimation.jclassValue) CustomTextAnimation%)

(define (CustomTextAnimation.jnew_3 _text _fontSize _animationBehavior)
  (define this (new CustomTextAnimation% [jclass "CustomTextAnimation"]))
    (set-field! f_fontDebugFactory this (FontDebugFactory.jm_getInstance_0))
    
    
    (set-field! f_lastText this (get-field f_INIT_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_hasChanged this #t)
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_fontSize this _fontSize)
        (set-field! f_font this (Font.jm_getFont_3 (Font.jstatic_FACE_SYSTEM) (Font.jstatic_STYLE_PLAIN) _fontSize))))
  this)



