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
  "../../../../org/allbinary/graphics/color/ColorCompositeInterface.rkt"
  "./RectangleFilledAnimation.rkt")
(provide (all-defined-out))

(define RectangleFilledAdjustedAnimation%
  (class RectangleFilledAnimation%
    (super-new)
    (field [f_offsetX 0])
    (field [f_offsetY 0])
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_basicSetColorUtil this))
        (super jm_paintXY_3 _graphics (JR.i32 (+ _x (get-field f_offsetX this))) (JR.i32 (+ _y (get-field f_offsetY this)))))))
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
(define (RectangleFilledAdjustedAnimation.jclassValue) RectangleFilledAdjustedAnimation%)

(define (RectangleFilledAdjustedAnimation.jnew_5 _width _height _offsetX _offsetY _basicColor)
  (define this (new RectangleFilledAdjustedAnimation% [jclass "RectangleFilledAdjustedAnimation"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_offsetX this _offsetX)
        (set-field! f_offsetY this _offsetY)
        (send this jm_setBasicColorP_1 _basicColor)))
  this)



