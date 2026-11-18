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
  "../../../../org/allbinary/animation/RotationAnimation.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/NullImage.rkt" (NullImage.jstatic_NULL_IMAGE_ARRAY)])
(lazy-require ["../../../../org/allbinary/DisposalUtil.rkt" (DisposalUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../../org/allbinary/media/image/ImageModifierUtil.rkt" (ImageModifierUtil.jm_getInstanceOrCreate_0)])
(lazy-require ["../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define ImageArrayBaseRotationAnimation%
  (class RotationAnimation%
    (super-new)
    (field [f_imageModifierUtil JR.null])
    (field [f_originalImageArray JR.null])
    (field [f_imageArray JR.null])
    (field [f_currentImage JR.null])
    (field [f_totalFrames 0])
    (field [f_anchor 0])
    (define/override (jm_getAnimationSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getSize_0)))))
    (define/override (jm_setAlpha_1 _alpha)
    (let ([_index JR.null])
      (let/ec jreturn
        (when (not (eq? (get-field f_alphaP this) _alpha))
            (begin
            (super jm_setAlpha_1 _alpha)
            (send (get-field f_imageModifierUtil this) jm_reset_0)
            (set! _index (JR.className (get-field f_circularIndexUtil this)))
            (send (get-field f_imageModifierUtil this) jm_setAlpha_4 (vector-ref (get-field f_originalImageArray this) _index) (vector-ref (get-field f_imageArray this) _index) _index (get-field f_alphaP this)))))))
    (define/override (jm_nextRotation_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_nextRotation_0)
        (set! _index (JR.className (get-field f_circularIndexUtil this)))
        (send (get-field f_imageModifierUtil this) jm_setAlpha_4 (vector-ref (get-field f_originalImageArray this) _index) (vector-ref (get-field f_imageArray this) _index) _index (get-field f_alphaP this))
        (set-field! f_currentImage this (vector-ref (get-field f_imageArray this) _index)))))
    (define/override (jm_previousRotation_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_previousRotation_0)
        (set! _index (JR.className (get-field f_circularIndexUtil this)))
        (send (get-field f_imageModifierUtil this) jm_setAlpha_4 (vector-ref (get-field f_originalImageArray this) _index) (vector-ref (get-field f_imageArray this) _index) _index (get-field f_alphaP this))
        (set-field! f_currentImage this (vector-ref (get-field f_imageArray this) _index)))))
    (define/override (jm_setFrame_1 _index2)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_setFrame_1 _index2)
        (set! _index (JR.className (get-field f_circularIndexUtil this)))
        (send (get-field f_imageModifierUtil this) jm_setAlpha_4 (vector-ref (get-field f_originalImageArray this) _index) (vector-ref (get-field f_imageArray this) _index) _index (get-field f_alphaP this))
        (set-field! f_currentImage this (vector-ref (get-field f_imageArray this) _index)))))
    (define/override (jm_setSequence_1 _sequence)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getSequence_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))
    (define/public (jm_setImageArray_1 _imageArray)
    (let ()
      (let/ec jreturn
        (set-field! f_imageArray this _imageArray)
        (set-field! f_totalFrames this (vector-length _imageArray))
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (get-field f_totalFrames this))))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send _graphics jm_drawImage_4 (get-field f_currentImage this) _x _y (get-field f_anchor this)))))
    (define/public (jm_close_0)
    (let ([_disposalUtil JR.null][_size2 JR.null][_index JR.null][_size JR.null])
      (let/ec jreturn
        (set! _disposalUtil (DisposalUtil.jm_getInstance_0))
        (set! _size2 (vector-length (get-field f_imageArray this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size2)
                (let/ec jcontinue
            (send _disposalUtil jm_disposeImage_1 (vector-ref (get-field f_imageArray this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _size (vector-length (get-field f_originalImageArray this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send _disposalUtil jm_disposeImage_1 (vector-ref (get-field f_originalImageArray this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send _disposalUtil jm_disposeImage_1 (get-field f_currentImage this)))))
    (define/public (jm_finalize_0)
    (let ([_disposalUtil JR.null][_size2 JR.null][_index JR.null][_size JR.null])
      (let/ec jreturn
        (set! _disposalUtil (DisposalUtil.jm_getInstance_0))
        (set! _size2 (vector-length (get-field f_imageArray this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size2)
                (let/ec jcontinue
            (send _disposalUtil jm_disposeImage_1 (vector-ref (get-field f_imageArray this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _size (vector-length (get-field f_originalImageArray this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send _disposalUtil jm_disposeImage_1 (vector-ref (get-field f_originalImageArray this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send _disposalUtil jm_disposeImage_1 (get-field f_currentImage this)))))))
(define (ImageArrayBaseRotationAnimation.jclassValue) ImageArrayBaseRotationAnimation%)

(define (ImageArrayBaseRotationAnimation.jnew_3 _originalImageArray _angleInfo _animationBehavior)
  (define this (new ImageArrayBaseRotationAnimation% [jclass "ImageArrayBaseRotationAnimation"]))
    (set-field! f_imageModifierUtil this (ImageModifierUtil.jm_getInstanceOrCreate_0))
    
    (set-field! f_imageArray this (NullImage.jstatic_NULL_IMAGE_ARRAY))
    
    
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_originalImageArray this _originalImageArray)
        (send this jm_setImageArray_1 (send (get-field f_imageModifierUtil this) jm_getImageArray_1 _originalImageArray))
        (set-field! f_currentImage this (vector-ref (get-field f_imageArray this) (JR.className (get-field f_circularIndexUtil this))))))
  this)



