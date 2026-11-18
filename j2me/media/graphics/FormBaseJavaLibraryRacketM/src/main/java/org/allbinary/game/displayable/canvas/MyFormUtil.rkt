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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../../org/allbinary/graphics/RectangleFactory.rkt" (RectangleFactory.jstatic_SINGLETON)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_defaultStringWidth_2)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/threed/SWTJOGLProcessor.rkt" (SWTJOGLProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define MyFormUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_popupMenuRectangle JR.null])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null][_displayInfo JR.null][_features JR.null][_isOpenGL JR.null][_TOTAL_CHAR_WIDTH JR.null][_width JR.null][_pointFactory JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (set! _features (Features.jm_getInstance_0))
        (set! _isOpenGL (send _features jm_isDefault_1 (get-field f_OPENGL (OpenGLFeatureFactory.jm_getInstance_0))))
        (set! _TOTAL_CHAR_WIDTH (if (and (send (SWTJOGLProcessor.jm_getInstance_0) jm_isJOGL_0) _isOpenGL) 2 3))
        (set! _width (MyFontProcessor.jm_defaultStringWidth_2 _font _TOTAL_CHAR_WIDTH))
        (set! _pointFactory (PointFactory.jm_getInstance_0))
        (if (< (send _displayInfo jm_getLastHeight_0) 320)
            (begin
            (set-field! f_popupMenuRectangle this (Rectangle.jnew_3 (send _pointFactory jm_createXY_2 0 25) _width (JR.i32 (+ (JR.i32 (* (send _font jm_getHeight_0) 4)) 2)))))
            (begin
            (set-field! f_popupMenuRectangle this (Rectangle.jnew_3 (send _pointFactory jm_createXY_2 0 (JR.i32 (- (send _displayInfo jm_getLastHalfHeight_0) 70))) _width (JR.i32 (* (send _font jm_getHeight_0) 5)))))))))
    (define/public (jm_getPopupMenuRectangle_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_popupMenuRectangle this)))))))
(define (MyFormUtil.jclassValue) MyFormUtil%)

(define MyFormUtil.jcell_instance 'jnone)
(define (MyFormUtil.jstatic_instance)
  (when (eq? MyFormUtil.jcell_instance 'jnone) (set! MyFormUtil.jcell_instance (MyFormUtil.jnew_0)))
  MyFormUtil.jcell_instance)
(define (MyFormUtil.jsetstatic_instance value) (set! MyFormUtil.jcell_instance value))

(define (MyFormUtil.jnew_0)
  (define this (new MyFormUtil% [jclass "MyFormUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_popupMenuRectangle this (RectangleFactory.jstatic_SINGLETON))
  this)

(define (MyFormUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MyFormUtil.jstatic_instance)))))



