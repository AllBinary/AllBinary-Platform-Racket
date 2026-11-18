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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/paint/Paintable.rkt")
(lazy-require ["../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.rkt" (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../../org/allbinary/graphics/RectangleFactory.rkt" (RectangleFactory.jstatic_SINGLETON)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchButton%
  (class Paintable%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_touchButtonInput JR.null])
    (field [f_animationInterface JR.null])
    (field [f_hintAnimationInterface JR.null])
    (field [f_rawRectangle JR.null])
    (field [f_xBorder 0])
    (field [f_yBorder 0])
    (field [f_rectangleP JR.null])
    (field [f_cellPositionP JR.null])
    (field [f_animationX 0])
    (field [f_animationY 0])
    (field [f_hintAnimationY 0])
    (define/public (jm_paintHint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_hintAnimationInterface this) jm_paintXY_3 _graphics (get-field f_animationX this) (get-field f_hintAnimationY this)))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintXY_3 _graphics (get-field f_animationX this) (get-field f_animationY this)))))
    (define/public (jm_updateRectangle_0)
    (let ([_pointFactory JR.null][_x JR.null][_y JR.null][_point JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this "updateRectangle" _e))])
            (set! _pointFactory (PointFactory.jm_getInstance_0))
            (set! _x (JR.i32 (* (send (get-field f_rawRectangle this) jm_getWidth_0) (send (get-field f_cellPositionP this) jm_getColumn_0))))
            (set! _y (JR.i32 (* (send (get-field f_rawRectangle this) jm_getHeight_0) (send (get-field f_cellPositionP this) jm_getRow_0))))
            (set-field! f_rectangleP this (Rectangle.jnew_3 (send _pointFactory jm_createXY_2 (JR.i32 (+ _x (get-field f_xBorder this))) (JR.i32 (+ _y (get-field f_yBorder this)))) (send (get-field f_rawRectangle this) jm_getWidth_0) (send (get-field f_rawRectangle this) jm_getHeight_0)))
            (set! _point (send (get-field f_rectangleP this) jm_getPoint_0))
            (set-field! f_animationX this (send _point jm_getX_0))
            (set-field! f_animationY this (send _point jm_getY_0))
            (set-field! f_hintAnimationY this (JR.i32 (- (get-field f_animationY this) 32)))))))
    (define/public (jm_getCellPosition_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_cellPositionP this)))))
    (define/public (jm_getRectangle_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_rectangleP this)))))
    (define/public (jm_getTouchButtonInput_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_touchButtonInput this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null][_stringUtil JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _stringUtil (StringUtil.jm_getInstance_0))
        (send _stringBuffer jm_append_1 "TouchButton: ")
        (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 (send this jm_getRectangle_0)))
        (send _stringBuffer jm_append_1 " CellPosition: ")
        (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 (get-field f_cellPositionP this)))
        (send _stringBuffer jm_append_1 " xBorder: ")
        (send _stringBuffer jm_appendint_1 (get-field f_xBorder this))
        (send _stringBuffer jm_append_1 " yBorder: ")
        (send _stringBuffer jm_appendint_1 (get-field f_yBorder this))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (TouchButton.jclassValue) TouchButton%)

(define (TouchButton.jnew_7 _touchButtonInput _animationInterface _hintAnimationInterface _rawRectangle _cellPosition _xBorder _yBorder)
  (define this (new TouchButton% [jclass "TouchButton"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    
    
    
    
    (set-field! f_rectangleP this (RectangleFactory.jstatic_SINGLETON))
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_touchButtonInput this _touchButtonInput)
        (set-field! f_animationInterface this _animationInterface)
        (set-field! f_hintAnimationInterface this _hintAnimationInterface)
        (set-field! f_rawRectangle this _rawRectangle)
        (set-field! f_cellPositionP this _cellPosition)
        (set-field! f_xBorder this _xBorder)
        (set-field! f_yBorder this _yBorder)
        (send this jm_updateRectangle_0)
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Created: ") jm_append_1 (send this jm_toString_0)) jm_toString_0) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)))))
  this)

(define (TouchButton.jm_createButton_6 _touchButtonInput _touchButtonResource _rawRectangle _cellPosition _xBorder _yBorder)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButton.jnew_7 _touchButtonInput (JR.className (send (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) jm_get_1 (get-field f_RESOURCE _touchButtonResource))) (JR.className (send (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) jm_get_1 (get-field f_HINT _touchButtonResource))) _rawRectangle _cellPosition _xBorder _yBorder)))))



