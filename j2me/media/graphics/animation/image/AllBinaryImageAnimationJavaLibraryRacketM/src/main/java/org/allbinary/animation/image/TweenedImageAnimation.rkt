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
;; package org.allbinary.animation.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/IndexedAnimation.rkt")
(lazy-require ["../../../../org/allbinary/DisposalUtil.rkt" (DisposalUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define TweenedImageAnimation%
  (class IndexedAnimation%
    (super-new)
    (field [f_image JR.null])
    (field [f_dx 0])
    (field [f_dy 0])
    (field [f_totalFrames 0])
    (field [f_circularIndexUtil JR.null])
    (field [f_anchor 0])
    (define/override (jm_getAnimationSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getSize_0)))))
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_next_0))))
    (define/override (jm_previousFrame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_previous_0))))
    (define/override (jm_setFrame_1 _index)
    (let ()
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_setIndex_1 _index))))
    (define/override (jm_getFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_circularIndexUtil this) jm_getIndex_0)))))
    (define/override (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_totalFrames this)))))
    (define/override (jm_setSequence_1 _sequence)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getSequence_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ([_frame JR.null][_currentX JR.null][_currentY JR.null])
      (let/ec jreturn
        (set! _frame (send this jm_getFrame_0))
        (set! _currentX (JR.i32 (* (get-field f_dx this) _frame)))
        (set! _currentY (JR.i32 (* (get-field f_dy this) _frame)))
        (send _graphics jm_drawImage_4 (get-field f_image this) (JR.i32 (+ _x _currentX)) (JR.i32 (+ _y _currentY)) (get-field f_anchor this)))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn
        (send (DisposalUtil.jm_getInstance_0) jm_disposeImage_1 (get-field f_image this)))))
    (define/public (jm_finalize_0)
    (let ()
      (let/ec jreturn
        (send (DisposalUtil.jm_getInstance_0) jm_disposeImage_1 (get-field f_image this)))))))
(define (TweenedImageAnimation.jclassValue) TweenedImageAnimation%)

(define (TweenedImageAnimation.jnew_5 _image _dx _dy _totalFrames _animationBehavior)
  (define this (new TweenedImageAnimation% [jclass "TweenedImageAnimation"]))
    
    
    
    
    
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_image this _image)
        (set-field! f_dx this _dx)
        (set-field! f_dy this _dy)
        (set-field! f_totalFrames this _totalFrames)
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (get-field f_totalFrames this)))))
  this)



