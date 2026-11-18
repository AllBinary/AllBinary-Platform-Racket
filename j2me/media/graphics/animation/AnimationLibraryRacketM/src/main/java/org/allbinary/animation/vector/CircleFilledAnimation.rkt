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

(define CircleFilledAnimation%
  (class Animation%
    (super-new)
    (field [f_width 0])
    (field [f_height 0])
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_basicSetColorUtil this))
        (send _graphics jm_fillRect_4 _x _y (get-field f_width this) (get-field f_height this)))))
    (define/override (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getBasicColorP_0)))))
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (super jm_setBasicColorP_1 _basicColor))))))
(define (CircleFilledAnimation.jclassValue) CircleFilledAnimation%)

(define (CircleFilledAnimation.jnew_3 _width _height _basicColor)
  (define this (new CircleFilledAnimation% [jclass "CircleFilledAnimation"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_width this _width)
        (set-field! f_height this _height)
        (send this jm_setBasicColorP_1 _basicColor)))
  this)



