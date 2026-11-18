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
(lazy-require ["../../../../javax/microedition/lcdui/NullImage.rkt" (NullImage.jstatic_NULL_IMAGE_ARRAY)])
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1 CircularIndexUtil.jstatic_NULL_CIRCULAR_INDEX_UTIL)])
(provide (all-defined-out))

(define ImageArrayAnimation%
  (class IndexedAnimation%
    (super-new)
    (field [f_imageArray JR.null])
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
    (define/public (jm_getImage_1 _index)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_imageArray this) _index)))))
    (define/public (jm_getImageArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_imageArray this)))))
    (define/public (jm_setImageArray_1 _imageArray)
    (let ()
      (let/ec jreturn
        (set-field! f_imageArray this _imageArray)
        (set-field! f_totalFrames this (vector-length _imageArray))
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (get-field f_totalFrames this))))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send _graphics jm_drawImage_4 (vector-ref (get-field f_imageArray this) (send (get-field f_circularIndexUtil this) jm_getIndex_0)) _x _y (get-field f_anchor this)))))))
(define (ImageArrayAnimation.jclassValue) ImageArrayAnimation%)

(define (ImageArrayAnimation.jnew_2 _imageArray _animationBehavior)
  (define this (new ImageArrayAnimation% [jclass "ImageArrayAnimation"]))
    (set-field! f_imageArray this (NullImage.jstatic_NULL_IMAGE_ARRAY))
    
    (set-field! f_circularIndexUtil this (CircularIndexUtil.jstatic_NULL_CIRCULAR_INDEX_UTIL))
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setImageArray_1 _imageArray)))
  this)



