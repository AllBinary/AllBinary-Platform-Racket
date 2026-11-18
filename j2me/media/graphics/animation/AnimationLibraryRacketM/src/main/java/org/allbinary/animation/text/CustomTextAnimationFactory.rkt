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
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/media/ScaleProperties.rkt" (ScaleProperties.jnew_0)])
(lazy-require ["./CustomTextAnimation.rkt" (CustomTextAnimation.jnew_3)])
(lazy-require ["./AdjustCustomTextAnimation.rkt" (AdjustCustomTextAnimation.jnew_5)])
(provide (all-defined-out))

(define CustomTextAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_animationBehaviorFactory JR.null])
    (field [f_basicColor JR.null])
    (field [f_text JR.null])
    (field [f_initScaleHeight 0])
    (field [f_dx 0])
    (field [f_dy 0])
    (field [f_font JR.null])
    (field [f_scaleProperties JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ([_customTextAnimation JR.null])
      (let/ec jreturn
        (set! _customTextAnimation JR.null)
        (if (or (not (= (get-field f_dx this) 0)) (not (= (get-field f_dy this) 0)))
            (begin
            (set! _customTextAnimation (AdjustCustomTextAnimation.jnew_5 (get-field f_text this) (get-field f_scaleHeight (get-field f_scaleProperties this)) (get-field f_dx this) (get-field f_dy this) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))
            (begin
            (set! _customTextAnimation (CustomTextAnimation.jnew_3 (get-field f_text this) (get-field f_scaleHeight (get-field f_scaleProperties this)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0)))))
        (send _customTextAnimation jm_setBasicColorP_1 (get-field f_basicColor this))
        (jreturn _customTextAnimation))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_font this) jm_stringWidth_1 (get-field f_text this))))))
    (define/public (jm_getHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_font this) jm_getHeight_0)))))))
(define (CustomTextAnimationFactory.jclassValue) CustomTextAnimationFactory%)

(define (CustomTextAnimationFactory.jnew_3 _text _fontSize _animationBehaviorFactory)
  (define this (new CustomTextAnimationFactory% [jclass "CustomTextAnimationFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (set-field! f_basicColor this (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)))
    
    
    (set-field! f_dx this 0)
    (set-field! f_dy this 0)
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_scaleProperties this (ScaleProperties.jnew_0))
        (set-field! f_text this _text)
        (set-field! f_scaleHeight (get-field f_scaleProperties this) (JR.i32 (- _fontSize (JR.idiv _fontSize 4))))
        (set-field! f_initScaleHeight this (get-field f_scaleHeight (get-field f_scaleProperties this)))
        (set-field! f_animationBehaviorFactory this _animationBehaviorFactory)
        (set-field! f_font this (Font.jm_getFont_3 (Font.jstatic_FACE_SYSTEM) (Font.jstatic_STYLE_PLAIN) (get-field f_initScaleHeight this)))))
  this)

(define (CustomTextAnimationFactory.jm_createDXY_5 _text _fontSize _dx _dy _animationBehaviorFactory)
    (let ([_customTextAnimationFactory JR.null])
      (let/ec jreturn
        (set! _customTextAnimationFactory (CustomTextAnimationFactory.jnew_3 _text _fontSize _animationBehaviorFactory))
        (set-field! f_dx _customTextAnimationFactory _dx)
        (set-field! f_dy _customTextAnimationFactory _dy)
        (jreturn _customTextAnimationFactory))))



