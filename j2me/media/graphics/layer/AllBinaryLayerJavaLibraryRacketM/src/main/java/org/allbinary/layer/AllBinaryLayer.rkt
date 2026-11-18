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
  "../../../java/lang/Integer.rkt"
  "./Layer.rkt"
  "./LayerInterface.rkt")
(lazy-require ["../../../org/allbinary/game/identification/BasicGroupFactory.rkt" (BasicGroupFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/graphics/RectangleFactory.rkt" (RectangleFactory.jstatic_SINGLETON)])
(lazy-require ["../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil.rkt" (OpenGLFeatureUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/math/PositionStrings.rkt" (PositionStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/view/ViewPositionBase.rkt" (ViewPositionBase.jstatic_NULL_VIEW_POSITION)])
(lazy-require ["../../../org/allbinary/view/event/ViewPositionEvent.rkt" (ViewPositionEvent.jnew_1)])
(provide (all-defined-out))

(define AllBinaryLayer%
  (class Layer%
    (super-new)
    (field [f_viewPositionEvent JR.null])
    (field [f_halfWidth 0])
    (field [f_halfHeight 0])
    (field [f_name JR.null])
    (field [f_viewPosition JR.null])
    (define/override (jm_setPosition_3 _x _y _z)
    (let ()
      (let/ec jreturn
        (super jm_setPosition_3 _x _y _z))))
    (define/override (jm_moveDXYZ_3 _dx _dy _dz)
    (let ()
      (let/ec jreturn
        (super jm_moveDXYZ_3 _dx _dy _dz))))
    (define/override (jm_getXP_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getXP_0)))))
    (define/override (jm_getYP_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getYP_0)))))
    (define/override (jm_getZP_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getZP_0)))))
    (define/override (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getWidth_0)))))
    (define/override (jm_getHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getHeight_0)))))
    (define/override (jm_setVisible_1 _visible)
    (let ()
      (let/ec jreturn
        (super jm_setVisible_1 _visible))))
    (define/override (jm_isVisible_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_isVisible_0)))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (super jm_paint_1 _graphics))))
    (define/public (jm_onChangeEvent_1 _layerManagerEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getX2_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (send this jm_getXP_0) (send this jm_getWidth_0)))))))
    (define/public (jm_getY2_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (send this jm_getYP_0) (send this jm_getHeight_0)))))))
    (define/public (jm_getZ2_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (JR.i64 (+ (send this jm_getZP_0) (send this jm_getDepth_0))))))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_setHalfWidth_1 _halfWidth)
    (let ()
      (let/ec jreturn
        (set-field! f_halfWidth this _halfWidth))))
    (define/public (jm_getHalfWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_halfWidth this)))))
    (define/public (jm_setHalfHeight_1 _halfHeight)
    (let ()
      (let/ec jreturn
        (set-field! f_halfHeight this _halfHeight))))
    (define/public (jm_getHalfHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_halfHeight this)))))
    (define/public (jm_getHalfDepth_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.idiv (JR.i32 (send this jm_getDepth_0)) 2)))))
    (define/public (jm_getViewPosition_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_viewPosition this)))))
    (define/public (jm_setViewPosition_1 _viewPosition)
    (let ()
      (let/ec jreturn
        (set-field! f_viewPosition this _viewPosition))))
    (define/public (jm_getGroupInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NONE_ARRAY (BasicGroupFactory.jm_getInstance_0))))))
    (define/public (jm_implmentsTickableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_implmentsGameInputInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_implmentsArtificialIntelligenceCompositeInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_implmentsCollidableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_implementsThreedInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (OpenGLFeatureUtil.jm_getInstance_0) jm_isAnyThreed_0)))))
    (define/public (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_getMultiPlayerType_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/override (jm_toStringAppend_1 _stringBuffer)
    (let ([_commonSeps JR.null][_positionStrings JR.null][_commonLabels JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set! _positionStrings (PositionStrings.jm_getInstance_0))
        (set! _commonLabels (CommonLabels.jm_getInstance_0))
        (send _stringBuffer jm_append_1 (send this jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_COLON _commonSeps))
        (send _stringBuffer jm_append_1 (AllBinaryLayer.jstatic_TYPE))
        (send _stringBuffer jm_appendint_1 (send this jm_getType_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_X_LABEL _positionStrings))
        (send _stringBuffer jm_appendint_1 (send this jm_getXP_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_Y_LABEL _positionStrings))
        (send _stringBuffer jm_appendint_1 (send this jm_getYP_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_Z_LABEL _positionStrings))
        (send _stringBuffer jm_appendint_1 (send this jm_getZP_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_WIDTH_LABEL _commonLabels))
        (send _stringBuffer jm_appendint_1 (send this jm_getWidth_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_HEIGHT_LABEL _commonLabels))
        (send _stringBuffer jm_appendint_1 (send this jm_getHeight_0)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send this jm_toStringAppend_1 _stringBuffer)
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (AllBinaryLayer.jclassValue) AllBinaryLayer%)

(define AllBinaryLayer.jcell_NULL_ALLBINARY_LAYER 'jnone)
(define (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)
  (when (eq? AllBinaryLayer.jcell_NULL_ALLBINARY_LAYER 'jnone) (set! AllBinaryLayer.jcell_NULL_ALLBINARY_LAYER (AllBinaryLayer.jnew_3 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (RectangleFactory.jstatic_SINGLETON) (ViewPositionBase.jstatic_NULL_VIEW_POSITION))))
  AllBinaryLayer.jcell_NULL_ALLBINARY_LAYER)
(define (AllBinaryLayer.jsetstatic_NULL_ALLBINARY_LAYER value) (set! AllBinaryLayer.jcell_NULL_ALLBINARY_LAYER value))

(define AllBinaryLayer.jcell_TYPE 'jnone)
(define (AllBinaryLayer.jstatic_TYPE)
  (when (eq? AllBinaryLayer.jcell_TYPE 'jnone) (set! AllBinaryLayer.jcell_TYPE "Type: "))
  AllBinaryLayer.jcell_TYPE)
(define (AllBinaryLayer.jsetstatic_TYPE value) (set! AllBinaryLayer.jcell_TYPE value))

(define (AllBinaryLayer.jnew_3 _name _rectangle _viewPosition)
  (define this (new AllBinaryLayer% [jclass "AllBinaryLayer"]))
    (set-field! f_viewPositionEvent this (ViewPositionEvent.jnew_1 this))
    
    
    
    (set-field! f_viewPosition this (ViewPositionBase.jstatic_NULL_VIEW_POSITION))
    (let ([_localName JR.null][_point JR.null])
      (let/ec jreturn
        (void)
        (set! _localName JR.null)
        (set! _localName (send (send (send (send (StringMaker.jnew_0) jm_append_1 _name) jm_append_1 (get-field f_COLON (CommonSeps.jm_getInstance_0))) jm_append_1 (Integer.jm_toHexString_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this))) jm_toString_0))
        (set-field! f_name this _localName)
        (set! _point (send _rectangle jm_getPoint_0))
        (send this jm_setPosition_3 (send _point jm_getX_0) (send _point jm_getY_0) (send _point jm_getZ_0))
        (send this jm_setHalfWidth_1 (arithmetic-shift (send this jm_getWidth_0) (- (bitwise-and 1 31))))
        (send this jm_setHalfHeight_1 (arithmetic-shift (send this jm_getHeight_0) (- (bitwise-and 1 31))))
        (set-field! f_viewPosition this _viewPosition)
        (send (get-field f_viewPosition this) jm_setAllbinaryLayer_1 this)))
  this)



