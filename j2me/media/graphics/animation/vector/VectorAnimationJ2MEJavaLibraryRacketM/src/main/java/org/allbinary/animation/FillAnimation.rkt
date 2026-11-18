#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./IndexedAnimation.rkt")
(provide (all-defined-out))

(define FillAnimation%
  (class IndexedAnimation%
    (super-new)
    (field [f_pixelBuffer JR.null])
    (field [f_width 0])
    (field [f_height 0])
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ([_changed JR.null])
      (let/ec jreturn
        (set! _changed #f)
        (when (or (JR.null? (send this jm_getBasicColorP_0)) (not (= (JR.className (send this jm_getBasicColorP_0)) (send _basicColor jm_intValue_0))))
            (begin
            (set! _changed #t)))
        (super jm_setBasicColorP_1 _basicColor)
        (when _changed
            (begin
            (send this jm_updateModifiers_0))))))
    (define/override (jm_changeBasicColor_1 _basicColor)
    (let ([_changed JR.null])
      (let/ec jreturn
        (set! _changed #f)
        (when (or (JR.null? (send this jm_getChangeBasicColor_0)) (not (= (JR.className (send this jm_getChangeBasicColor_0)) (send _basicColor jm_intValue_0))))
            (begin
            (set! _changed #t)))
        (super jm_changeBasicColor_1 _basicColor)
        (when _changed
            (begin
            (send this jm_updateModifiers_0))))))
    (define/override (jm_setAlpha_1 _alpha)
    (let ([_changed JR.null])
      (let/ec jreturn
        (set! _changed #f)
        (when (not (eq? (get-field f_alphaP this) _alpha))
            (begin
            (set! _changed #t)))
        (super jm_setAlpha_1 _alpha)
        (when _changed
            (begin
            (send this jm_updateModifiers_0))))))
    (define/override (jm_setScale_2 _scaleX _scaleY)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_setMaxScale_2 _maxScaleX _maxScaleY)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_updateModifiers_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paint_1 _g)
    (let ()
      (let/ec jreturn
        (send _g jm_drawRGB_8 (get-field f_pixelBuffer this) 0 (get-field f_width this) 0 0 (get-field f_width this) (get-field f_height this) #t))))))
(define (FillAnimation.jclassValue) FillAnimation%)

(define (FillAnimation.jnew_4 _pixelBuffer _width _height _animationBehavior)
  (define this (new FillAnimation% [jclass "FillAnimation"]))
    
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_width this 100)
        (set-field! f_height this 100)
        (set-field! f_pixelBuffer this _pixelBuffer)))
  this)



