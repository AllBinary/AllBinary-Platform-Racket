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
(lazy-require ["../../../../org/allbinary/DisposalUtil.rkt" (DisposalUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define ImageBaseRotationAnimation%
  (class RotationAnimation%
    (super-new)
    (field [f_image JR.null])
    (field [f_anchor 0])
    (define/override (jm_getAnimationSize_0)
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
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send _graphics jm_drawImage_4 (get-field f_image this) _x _y (get-field f_anchor this)))))
    (define/public (jm_getImage_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_image this)))))
    (define/override (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_image this) jm_getWidth_0)))))
    (define/override (jm_getHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_image this) jm_getHeight_0)))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn
        (send (DisposalUtil.jm_getInstance_0) jm_disposeImage_1 (get-field f_image this)))))
    (define/public (jm_finalize_0)
    (let ()
      (let/ec jreturn
        (send (DisposalUtil.jm_getInstance_0) jm_disposeImage_1 (get-field f_image this)))))))
(define (ImageBaseRotationAnimation.jclassValue) ImageBaseRotationAnimation%)

(define (ImageBaseRotationAnimation.jnew_4 _image _angleInfo _totalAngle _animationBehavior)
  (define this (new ImageBaseRotationAnimation% [jclass "ImageBaseRotationAnimation"]))
    
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_image this _image)))
  this)



