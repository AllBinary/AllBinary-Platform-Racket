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
  "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Font.rkt" (Font.jm_getFont_3 Font.jstatic_FACE_SYSTEM Font.jstatic_STYLE_PLAIN)])
(lazy-require ["../../../../javax/microedition/lcdui/TextField.rkt" (TextField.jstatic_ANY)])
(lazy-require ["../../../../org/allbinary/game/canvas/ABToGBUtil.rkt" (ABToGBUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/media/ScaleProperties.rkt" (ScaleProperties.jnew_0)])
(lazy-require ["./CustomTextBox2.rkt" (CustomTextBox2.jnew_8)])
(lazy-require ["./CustomTextBoxIndexedAnimation.rkt" (CustomTextBoxIndexedAnimation.jnew_1)])
(provide (all-defined-out))

(define CustomTextBoxIndexedAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_scaleProperties JR.null])
    (field [f_maxLength 0])
    (define/public (jm_getInstance_1 _instanceId)
    (let ([_abToGBUtil JR.null][_abCanvas JR.null][_font JR.null][_customTextBox JR.null])
      (let/ec jreturn
        (set! _abToGBUtil (ABToGBUtil.jm_getInstance_0))
        (set! _abCanvas (get-field f_abCanvas _abToGBUtil))
        (set! _font (Font.jm_getFont_3 (Font.jstatic_FACE_SYSTEM) (Font.jstatic_STYLE_PLAIN) (get-field f_scaleHeight (get-field f_scaleProperties this))))
        (set! _customTextBox (CustomTextBox2.jnew_8 (send _abCanvas jm_getCustomCommandListener_0) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_maxLength this) (TextField.jstatic_ANY) _font (JR.className (send _abCanvas jm_getLayerManager_0)) (JR.className (send _abCanvas jm_getLayerManager_0))))
        (jreturn (CustomTextBoxIndexedAnimation.jnew_1 _customTextBox)))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ([_fontSize JR.null])
      (let/ec jreturn
        (set! _fontSize (get-field f_scaleHeight (get-field f_scaleProperties this)))
        (set-field! f_scaleProperties this _scaleProperties)
        (when (< (get-field f_scaleHeight (get-field f_scaleProperties this)) 6)
            (begin
            (set-field! f_scaleHeight (get-field f_scaleProperties this) _fontSize))))))))
(define (CustomTextBoxIndexedAnimationFactory.jclassValue) CustomTextBoxIndexedAnimationFactory%)

(define (CustomTextBoxIndexedAnimationFactory.jnew_2 _fontSize _maxLength)
  (define this (new CustomTextBoxIndexedAnimationFactory% [jclass "CustomTextBoxIndexedAnimationFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_scaleProperties this (ScaleProperties.jnew_0))
        (set-field! f_scaleHeight (get-field f_scaleProperties this) _fontSize)
        (set-field! f_maxLength this _maxLength)))
  this)



