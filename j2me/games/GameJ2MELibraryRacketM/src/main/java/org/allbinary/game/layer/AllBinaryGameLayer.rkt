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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.rkt"
  "../../../../org/allbinary/layer/AllBinaryLayer.rkt"
  "../../../../org/allbinary/view/event/ViewPositionEventListenerInterface.rkt")
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorSetUtil.rkt" (BasicColorSetUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./SWTUtil.rkt" (SWTUtil.jstatic_isSWT)])
(lazy-require ["./SWTBlackPaintable.rkt" (SWTBlackPaintable.jnew_0)])
(lazy-require ["./GameLayerUtil.rkt" (GameLayerUtil.jm_isOnScreen_1)])
(provide (all-defined-out))

(define AllBinaryGameLayer%
  (class AllBinaryLayer%
    (super-new)
    (inherit/super jm_setLayerWidth_1 jm_setLayerHeight_1)
    (field [f_commonStrings JR.null])
    (field [f_basicSetColorUtil JR.null])
    (field [f_RED JR.null])
    (field [f_paintable JR.null])
    (field [f_gameKeyEventList JR.null])
    (define/public (jm_set_1 _gl)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_move_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getGameKeyEventList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameKeyEventList this)))))
    (define/public (jm_processInput_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_processTick_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onViewPositionChangeEvent_0)
    (let ()
      (let/ec jreturn
        (send this jm_onChangeEvent_1 (get-field f_viewPositionEvent this)))))
    (define/override (jm_onChangeEvent_1 _layerManagerEvent)
    (let ()
      (let/ec jreturn
        (if (GameLayerUtil.jm_isOnScreen_1 this)
            (begin
            (send this jm_setVisible_1 #t))
            (begin
            (send this jm_setVisible_1 #f))))))
    (define/public (jm_paintFirst_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_paintable this) jm_paint_1 _graphics))))
    (define/public (jm_paintDebug_1 _graphics)
    (let ([_viewPosition JR.null][_viewX JR.null][_viewY JR.null])
      (let/ec jreturn
        (set! _viewPosition (send this jm_getViewPosition_0))
        (set! _viewX (send _viewPosition jm_getX_0))
        (set! _viewY (send _viewPosition jm_getY_0))
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP_2 _graphics (get-field f_RED this))
        (send _graphics jm_drawRect_4 _viewX _viewY (send this jm_getWidth_0) (send this jm_getHeight_0)))))
    (define/public (jm_setWidth_1 _width)
    (let ()
      (let/ec jreturn
        (super jm_setLayerWidth_1 _width)
        (send this jm_setHalfWidth_1 (arithmetic-shift _width (- (bitwise-and 1 31)))))))
    (define/public (jm_setHeight_1 _height)
    (let ()
      (let/ec jreturn
        (super jm_setLayerHeight_1 _height)
        (send this jm_setHalfHeight_1 (arithmetic-shift _height (- (bitwise-and 1 31)))))))))
(define (AllBinaryGameLayer.jclassValue) AllBinaryGameLayer%)

(define (AllBinaryGameLayer.jnew_3 _name _layerInfo _viewPosition)
  (define this (new AllBinaryGameLayer% [jclass "AllBinaryGameLayer"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_basicSetColorUtil this (BasicColorSetUtil.jm_getInstance_0))
    (set-field! f_RED this (get-field f_RED (BasicColorFactory.jm_getInstance_0)))
    (set-field! f_paintable this (AllBinaryGameLayer.jm_createPaintable_0))
    (set-field! f_gameKeyEventList this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (AllBinaryGameLayer.jm_createPaintable_0)
    (let ()
      (let/ec jreturn
        (when (SWTUtil.jstatic_isSWT)
            (begin
            (jreturn (SWTBlackPaintable.jnew_0))))
        (jreturn (NullPaintable.jm_getInstance_0)))))



