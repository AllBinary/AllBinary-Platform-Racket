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
  "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../../../org/allbinary/graphics/paint/Paintable.rkt")
(lazy-require ["../../../../../org/allbinary/AndroidUtil.rkt" (AndroidUtil.jm_isAndroid_0)])
(lazy-require ["../../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isJ2SE_0 J2MEUtil.jm_isJ2ME_0 J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../../org/allbinary/animation/vector/RectangleFilledAnimation.rkt" (RectangleFilledAnimation.jnew_3)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/layer/SWTUtil.rkt" (SWTUtil.jstatic_isSWT)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorSetUtil.rkt" (BasicColorSetUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/draw/DrawVerticalStringUtil.rkt" (DrawVerticalStringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_defaultCharWidth_1 MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil.rkt" (OpenGLFeatureUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/threed/SWTJOGLProcessor.rkt" (SWTJOGLProcessor.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicPopupMenuPaintable%
  (class Paintable%
    (super-new)
    (field [f_basicSetColorUtil JR.null])
    (field [f_drawStringUtil JR.null])
    (field [f_label JR.null])
    (field [f_foregroundBasicColor JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_rectangle JR.null])
    (field [f_BORDER 0])
    (field [f_heightOffset 0])
    (field [f_offset 0])
    (field [f_animationInterface JR.null])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null][_features JR.null][_isOpenGL JR.null][_BORDER JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set! _features (Features.jm_getInstance_0))
        (set! _isOpenGL (send _features jm_isDefault_1 (get-field f_OPENGL (OpenGLFeatureFactory.jm_getInstance_0))))
        (send (get-field f_drawStringUtil this) jm_updateMeasurement_2 _graphics (get-field f_label this))
        (set! _BORDER 0)
        (if (or (J2MEUtil.jm_isHTML_0) _isOpenGL)
            (begin
            (set! _BORDER (JR.idiv (MyFontProcessor.jm_defaultCharWidth_1 _font) 2)))
            (if (or (or (AndroidUtil.jm_isAndroid_0) (J2MEUtil.jm_isJ2SE_0)) (SWTUtil.jstatic_isSWT))
            (begin
            (set! _BORDER (MyFontProcessor.jm_defaultCharWidth_1 _font)))
            (begin
            (set! _BORDER (JR.i32 (* (MyFontProcessor.jm_defaultCharWidth_1 _font) 2))))))
        (set-field! f_BORDER this _BORDER)
        (set-field! f_heightOffset this (JR.i32 (- (send (get-field f_rectangle this) jm_getHeight_0) (JR.i32 (* (send _font jm_getHeight_0) (JR.className (BasicPopupMenuPaintable.jstatic_NAME)))))))
        (when (send (OpenGLFeatureUtil.jm_getInstance_0) jm_isAnyThreed_0)
            (begin
            (set-field! f_heightOffset this (JR.i32 (- (get-field f_heightOffset this) (JR.i32 (+ (send _font jm_getHeight_0) 2)))))
            (if (AndroidUtil.jm_isAndroid_0)
                (begin
                (set-field! f_heightOffset this (send _font jm_getHeight_0)))
                (begin
                (set-field! f_heightOffset this (JR.i32 (- (get-field f_heightOffset this) (JR.i32 (+ (send _font jm_getHeight_0) 2)))))))))
        (set-field! f_offset this (JR.i32 (+ (arithmetic-shift (get-field f_heightOffset this) (- (bitwise-and 1 31))) (if (send (SWTJOGLProcessor.jm_getInstance_0) jm_isJOGL_0) 4 0))))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_init_1 _rectangle)
    (let ([_width JR.null][_height JR.null][_rectangleFilledAnimation JR.null])
      (let/ec jreturn
        (set-field! f_rectangle this _rectangle)
        (set! _width (send (get-field f_rectangle this) jm_getWidth_0))
        (set! _height (send (get-field f_rectangle this) jm_getHeight_0))
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (begin
            (void))
            (begin
            (set! _rectangleFilledAnimation (get-field f_animationInterface this))
            (send _rectangleFilledAnimation jm_setWidth_1 _width)
            (send _rectangleFilledAnimation jm_setHeight_1 _height))))))
    (define/override (jm_paint_1 _graphics)
    (let ([_point JR.null][_x JR.null][_y JR.null][_width JR.null][_height JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (set! _point (send (get-field f_rectangle this) jm_getPoint_0))
        (set! _x (send _point jm_getX_0))
        (set! _y (send _point jm_getY_0))
        (set! _width (send (get-field f_rectangle this) jm_getWidth_0))
        (set! _height (send (get-field f_rectangle this) jm_getHeight_0))
        (send (get-field f_animationInterface this) jm_paintXY_3 _graphics _x _y)
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP_2 _graphics (get-field f_foregroundBasicColor this))
        (send (get-field f_drawStringUtil this) jm_paintVerticle_5 _graphics (get-field f_label this) (JR.i32 (+ _x (get-field f_BORDER this))) (JR.i32 (+ _y (get-field f_offset this))) 0)
        (send _graphics jm_drawRect_4 _x _y _width _height))))))
(define (BasicPopupMenuPaintable.jclassValue) BasicPopupMenuPaintable%)

(define BasicPopupMenuPaintable.jcell_NAME 'jnone)
(define (BasicPopupMenuPaintable.jstatic_NAME)
  (when (eq? BasicPopupMenuPaintable.jcell_NAME 'jnone) (set! BasicPopupMenuPaintable.jcell_NAME "MENU"))
  BasicPopupMenuPaintable.jcell_NAME)
(define (BasicPopupMenuPaintable.jsetstatic_NAME value) (set! BasicPopupMenuPaintable.jcell_NAME value))

(define (BasicPopupMenuPaintable.jnew_3 _rectangle _backgroundBasicColor _foregroundBasicColor)
  (define this (new BasicPopupMenuPaintable% [jclass "BasicPopupMenuPaintable"]))
    (set-field! f_basicSetColorUtil this (BasicColorSetUtil.jm_getInstance_0))
    (set-field! f_drawStringUtil this (DrawVerticalStringUtil.jm_getInstance_0))
    
    
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_foregroundBasicColor this _foregroundBasicColor)
        (set-field! f_label this (BasicPopupMenuPaintable.jstatic_NAME))
        (set-field! f_rectangle this _rectangle)
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (begin
            (set-field! f_animationInterface this (JR.className (NullAnimationFactory.jm_getFactoryInstance_0))))
            (begin
            (set-field! f_animationInterface this (RectangleFilledAnimation.jnew_3 (send (get-field f_rectangle this) jm_getWidth_0) (send (get-field f_rectangle this) jm_getHeight_0) (get-field f_TRANSPARENT_GREY (BasicColorFactory.jm_getInstance_0))))))
        (send this jm_init_1 _rectangle)))
  this)



