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
  "./TouchButton.rkt")
(lazy-require ["../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.rkt" (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(provide (all-defined-out))

(define FullTouchButton%
  (class TouchButton%
    (super-new)
    (define/override (jm_updateRectangle_0)
    (let ([_pointFactory JR.null][_x JR.null][_y JR.null][_point JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _pointFactory (PointFactory.jm_getInstance_0))
            (set! _x (JR.i32 (* (send (get-field f_rawRectangle this) jm_getWidth_0) (JR.className (get-field f_cellPositionP this)))))
            (set! _y (JR.i32 (* (send (get-field f_rawRectangle this) jm_getHeight_0) (JR.className (get-field f_cellPositionP this)))))
            (set-field! f_rectangleP this (Rectangle.jnew_3 (send _pointFactory jm_createXY_2 _x _y) (JR.i32 (+ (send (get-field f_rawRectangle this) jm_getWidth_0) (JR.i32 (* 2 (get-field f_xBorder this))))) (JR.i32 (+ (send (get-field f_rawRectangle this) jm_getHeight_0) (JR.i32 (* 2 (get-field f_yBorder this)))))))
            (set! _point (JR.className (get-field f_rectangleP this)))
            (set-field! f_animationX this (JR.i32 (+ (send _point jm_getX_0) (get-field f_xBorder this))))
            (set-field! f_animationY this (JR.i32 (+ (send _point jm_getY_0) (get-field f_yBorder this))))
            (set-field! f_hintAnimationY this (arithmetic-shift (JR.i32 (- (get-field f_animationY this) (JR.className (get-field f_rectangleP this)))) (- (bitwise-and 1 31))))))))))
(define (FullTouchButton.jclassValue) FullTouchButton%)

(define (FullTouchButton.jnew_7 _touchButtonInput _animationInterface _hintAnimationInterface _rawRectangle _cellPosition _xBorder _yBorder)
  (define this (new FullTouchButton% [jclass "FullTouchButton"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (FullTouchButton.jm_createButton_6 _touchButtonInput _touchButtonResource _rawRectangle _cellPosition _xBorder _yBorder)
    (let ()
      (let/ec jreturn
        (jreturn (FullTouchButton.jnew_7 _touchButtonInput (JR.className (send (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) jm_get_1 (get-field f_RESOURCE _touchButtonResource))) (JR.className (send (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) jm_get_1 (get-field f_HINT _touchButtonResource))) _rawRectangle _cellPosition _xBorder _yBorder)))))



