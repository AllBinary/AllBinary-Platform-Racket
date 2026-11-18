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
;; package org.allbinary.animation.vector

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/Animation.rkt"
  "../../../../org/allbinary/graphics/color/ColorCompositeInterface.rkt")
(provide (all-defined-out))

(define RectangleAdjustedAnimation%
  (class Animation%
    (super-new)
    (field [f_width 0])
    (field [f_height 0])
    (field [f_offsetX 0])
    (field [f_offsetY 0])
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_basicSetColorUtil this))
        (send _graphics jm_drawRect_4 (JR.i32 (+ _x (get-field f_offsetX this))) (JR.i32 (+ _y (get-field f_offsetY this))) (get-field f_width this) (get-field f_height this)))))
    (define/public (jm_setWidth_1 _width)
    (let ()
      (let/ec jreturn
        (set-field! f_width this _width))))
    (define/public (jm_setHeight_1 _height)
    (let ()
      (let/ec jreturn
        (set-field! f_height this _height))))
    (define/public (jm_setOffsetX_1 _offsetX)
    (let ()
      (let/ec jreturn
        (set-field! f_offsetX this _offsetX))))
    (define/public (jm_setOffsetY_1 _offsetY)
    (let ()
      (let/ec jreturn
        (set-field! f_offsetY this _offsetY))))
    (define/override (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getBasicColorP_0)))))
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (super jm_setBasicColorP_1 _basicColor))))))
(define (RectangleAdjustedAnimation.jclassValue) RectangleAdjustedAnimation%)

(define (RectangleAdjustedAnimation.jnew_5 _width _height _offsetX _offsetY _basicColor)
  (define this (new RectangleAdjustedAnimation% [jclass "RectangleAdjustedAnimation"]))
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_width this _width)
        (set-field! f_height this _height)
        (set-field! f_offsetX this _offsetX)
        (set-field! f_offsetY this _offsetY)
        (send this jm_setBasicColorP_1 _basicColor)))
  this)



