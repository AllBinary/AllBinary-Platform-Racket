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
;; package org.allbinary.layer

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Integer.rkt")
(lazy-require ["../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define Layer%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_x 0])
    (field [f_y 0])
    (field [f_z 0])
    (field [f_width 0])
    (field [f_height 0])
    (field [f_visible #f])
    (define/public (jm_setPosition_3 _x _y _z)
    (let ()
      (let/ec jreturn
        (set-field! f_x this _x)
        (set-field! f_y this _y)
        (set-field! f_z this _z))))
    (define/public (jm_moveDXY_2 _dx _dy)
    (let ()
      (let/ec jreturn
        (set-field! f_x this (JR.i32 (+ (get-field f_x this) _dx)))
        (set-field! f_y this (JR.i32 (+ (get-field f_y this) _dy))))))
    (define/public (jm_moveDXYZ_3 _dx _dy _dz)
    (let ()
      (let/ec jreturn
        (set-field! f_x this (JR.i32 (+ (get-field f_x this) _dx)))
        (set-field! f_y this (JR.i32 (+ (get-field f_y this) _dy)))
        (set-field! f_z this (JR.i32 (+ (get-field f_z this) _dz))))))
    (define/public (jm_getXP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_x this)))))
    (define/public (jm_getYP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_y this)))))
    (define/public (jm_getZP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_z this)))))
    (define/public (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_width this)))))
    (define/public (jm_getHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_height this)))))
    (define/public (jm_getDepth_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_setVisible_1 _visible)
    (let ()
      (let/ec jreturn
        (set-field! f_visible this _visible))))
    (define/public (jm_isVisible_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_visible this)))))
    (define/public (jm_paint_1 _graphics)
    (let ([_commonStrings JR.null][_canvasStrings JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (set! _canvasStrings (CanvasStrings.jm_getInstance_0))
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_NOT_IMPLEMENTED _commonStrings) this (get-field f_PAINT _canvasStrings)))))
    (define/public (jm_setLayerWidth_1 _width)
    (let ()
      (let/ec jreturn
        (when (< _width 0)
            (begin
            (raise (JR.newException "IllegalArgumentException"))))
        (set-field! f_width this _width))))
    (define/public (jm_setLayerHeight_1 _height)
    (let ()
      (let/ec jreturn
        (when (< _height 0)
            (begin
            (raise (JR.newException "IllegalArgumentException"))))
        (set-field! f_height this _height))))
    (define/public (jm_toStringAppend_1 _stringBuffer)
    (let ()
      (let/ec jreturn (void))))))
(define (Layer.jclassValue) Layer%)

(define Layer.jcell_ID 'jnone)
(define (Layer.jstatic_ID)
  (when (eq? Layer.jcell_ID 'jnone) (set! Layer.jcell_ID (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 0)))
  Layer.jcell_ID)
(define (Layer.jsetstatic_ID value) (set! Layer.jcell_ID value))

(define (Layer.jnew_2 _width _height)
  (define this (new Layer% [jclass "Layer"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    
    (set-field! f_z this 3)
    
    
    (set-field! f_visible this #t)
    (let ()
      (let/ec jreturn
        (send this jm_setLayerWidth_1 _width)
        (send this jm_setLayerHeight_1 _height)))
  this)



