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
;; package org.allbinary.animation.image.sprite

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/animation/IndexedAnimation.rkt"
  "../../../../../org/allbinary/graphics/color/ColorCompositeInterface.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(provide (all-defined-out))

(define SpriteIndexedAnimation%
  (class IndexedAnimation%
    (super-new)
    (field [f_sprite JR.null])
    (field [f_image JR.null])
    (field [f_basicColorArray JR.null])
    (define/override (jm_getAnimationSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getSize_0)))))
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length (get-field f_basicColorArray this)))
                (let/ec jcontinue
            (when (eq? _basicColor (vector-ref (get-field f_basicColorArray this) _index))
                (begin
                (send this jm_setFrame_1 _index)
                (jbreak (void)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/override (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (if (< (vector-length (get-field f_basicColorArray this)) (send this jm_getFrame_0))
            (begin
            (jreturn (vector-ref (get-field f_basicColorArray this) (send this jm_getFrame_0))))
            (begin
            (jreturn (get-field f_WHITE (BasicColorFactory.jm_getInstance_0))))))))
    (define/public (jm_paintFrame_4 _graphics _frame _x _y)
    (let ()
      (let/ec jreturn
        (send this jm_setFrame_1 _frame)
        (send (get-field f_sprite this) jm_setPosition_2 _x _y)
        (send (get-field f_sprite this) jm_paint_1 _graphics))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_setPosition_2 _x _y)
        (send (get-field f_sprite this) jm_paint_1 _graphics))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_paint_1 _graphics))))
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_nextFrame_0))))
    (define/override (jm_previousFrame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_prevFrame_0))))
    (define/override (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_sprite this) jm_getRawFrameCount_0)))))
    (define/override (jm_setFrame_1 _frame)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_setFrame_1 _frame))))
    (define/override (jm_getFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_sprite this) jm_getFrame_0)))))
    (define/override (jm_isLastFrame_0)
    (let ()
      (let/ec jreturn
        (if (eq? (send (get-field f_sprite this) jm_getFrame_0) (JR.i32 (- (send this jm_getSize_0) 1)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_getLastFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getSize_0)))))
    (define/override (jm_setSequence_1 _sequence)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getSequence_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_finalize_0)
    (let ()
      (let/ec jreturn (void))))))
(define (SpriteIndexedAnimation.jclassValue) SpriteIndexedAnimation%)

(define (SpriteIndexedAnimation.jnew_4 _sprite _image _basicColorArray _animationBehavior)
  (define this (new SpriteIndexedAnimation% [jclass "SpriteIndexedAnimation"]))
    
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_sprite this _sprite)
        (set-field! f_image this _image)
        (set-field! f_basicColorArray this _basicColorArray)
        (when (and (not (= (vector-length (get-field f_basicColorArray this)) 0)) (not (= (send this jm_getSize_0) (vector-length (get-field f_basicColorArray this)))))
            (begin
            (raise (JR.newException "Exception" (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_TOTAL_LABEL (CommonLabels.jm_getInstance_0))) jm_appendint_1 (send this jm_getSize_0)) jm_append_1 "!=") jm_appendint_1 (vector-length (get-field f_basicColorArray this))) jm_toString_0)))))))
  this)



