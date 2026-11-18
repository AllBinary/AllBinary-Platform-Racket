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
;; package org.allbinary.image

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./AnimationFrameToImageUtil.rkt" (AnimationFrameToImageUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define IndexedAnimationToImageArrayUtil%
  (class JObject%
    (super-new)))
(define (IndexedAnimationToImageArrayUtil.jclassValue) IndexedAnimationToImageArrayUtil%)

(define (IndexedAnimationToImageArrayUtil.jnew_0)
  (define this (new IndexedAnimationToImageArrayUtil% [jclass "IndexedAnimationToImageArrayUtil"]))
  this)

(define (IndexedAnimationToImageArrayUtil.jm_getInstance_3 _width _height _sequentialAnimationInterface)
    (let ([_size JR.null][_imageArray JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send _sequentialAnimationInterface jm_getAnimationSize_0))
        (set! _imageArray (JR.newArray JR.null _size))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send _sequentialAnimationInterface jm_setFrame_1 _index)
            (vector-set! _imageArray _index (send (AnimationFrameToImageUtil.jm_getInstance_0) jm_getInstanceWH_3 _width _height _sequentialAnimationInterface)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _imageArray))))



