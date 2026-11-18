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
  "../../../../org/allbinary/graphics/color/ColorCompositeInterface.rkt"
  "../../../../org/allbinary/layer/PositionInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define LineAnimation%
  (class Animation%
    (super-new)
    (field [f_newLine JR.null])
    (field [f_tempLine JR.null])
    (field [f_line JR.null])
    (define/public (jm_init_2 _x _y)
    (let ()
      (let/ec jreturn
        (vector-set! (vector-ref (get-field f_newLine this) 0) 0 _x)
        (vector-set! (vector-ref (get-field f_newLine this) 0) 1 _y)
        (vector-set! (vector-ref (get-field f_newLine this) 1) 0 _x)
        (vector-set! (vector-ref (get-field f_newLine this) 1) 1 _y)
        (set-field! f_tempLine this (get-field f_line this))
        (set-field! f_line this (get-field f_newLine this))
        (set-field! f_newLine this (get-field f_tempLine this)))))
    (define/public (jm_setPosition_3 _x _y _z)
    (let ()
      (let/ec jreturn
        (vector-set! (vector-ref (get-field f_newLine this) 0) 0 (vector-ref (vector-ref (get-field f_line this) 1) 0))
        (vector-set! (vector-ref (get-field f_newLine this) 0) 1 (vector-ref (vector-ref (get-field f_line this) 1) 1))
        (vector-set! (vector-ref (get-field f_newLine this) 1) 0 _x)
        (vector-set! (vector-ref (get-field f_newLine this) 1) 1 _y)
        (set-field! f_tempLine this (get-field f_line this))
        (set-field! f_line this (get-field f_newLine this))
        (set-field! f_newLine this (get-field f_tempLine this)))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ([_currentLine JR.null])
      (let/ec jreturn
        (set! _currentLine (get-field f_line this))
        (JR.className (get-field f_basicSetColorUtil this))
        (send _graphics jm_drawLine_4 (vector-ref (vector-ref _currentLine 0) 0) (vector-ref (vector-ref _currentLine 0) 1) (vector-ref (vector-ref _currentLine 1) 0) (vector-ref (vector-ref _currentLine 1) 1)))))
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getBasicColorP_0)))))
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (super jm_setBasicColorP_1 _basicColor))))))
(define (LineAnimation.jclassValue) LineAnimation%)

(define (LineAnimation.jnew_1 _basicColor)
  (define this (new LineAnimation% [jclass "LineAnimation"]))
    (set-field! f_newLine this (JR.newArray 0 2 2))
    (set-field! f_tempLine this (get-field f_NULL_INT_ARRAY_ARRAY (NullUtil.jm_getInstance_0)))
    (set-field! f_line this (JR.newArray 0 2 2))
    (let ()
      (let/ec jreturn
        (send this jm_setBasicColorP_1 _basicColor)))
  this)



