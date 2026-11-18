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
(lazy-require ["./GameFeatureImageCacheFactory.rkt" (GameFeatureImageCacheFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define AnimationFrameToImageUtil%
  (class JObject%
    (super-new)
    (define/public (jm_getInstanceTranslate_3 _width _height _animationInterface)
    (let ([_image JR.null][_graphics JR.null][_tranlateX JR.null][_tranlateY JR.null])
      (let/ec jreturn
        (set! _image (send (GameFeatureImageCacheFactory.jm_getInstance_0) jm_get_3 (JR.className (AnimationFrameToImageUtil.jstatic_instance)) (arithmetic-shift (JR.i32 (* _width 3)) (- (bitwise-and 1 31))) (arithmetic-shift (JR.i32 (* _height 3)) (- (bitwise-and 1 31)))))
        (set! _graphics (send _image jm_getGraphics_0))
        (set! _tranlateX (arithmetic-shift _width (- (bitwise-and 2 31))))
        (set! _tranlateY (arithmetic-shift _height (- (bitwise-and 2 31))))
        (send _graphics jm_translate_2 _tranlateX _tranlateY)
        (send _animationInterface jm_paintXY_3 _graphics 0 0)
        (send _graphics jm_translate_2 (JR.i32 (- _tranlateX)) (JR.i32 (- _tranlateY)))
        (jreturn _image))))
    (define/public (jm_getInstanceWH_3 _width _height _animationInterface)
    (let ([_image JR.null][_graphics JR.null])
      (let/ec jreturn
        (set! _image (send (GameFeatureImageCacheFactory.jm_getInstance_0) jm_get_3 (JR.className (AnimationFrameToImageUtil.jstatic_instance)) _width _height))
        (set! _graphics (send _image jm_getGraphics_0))
        (send _animationInterface jm_paintXY_3 _graphics 0 0)
        (jreturn _image))))))
(define (AnimationFrameToImageUtil.jclassValue) AnimationFrameToImageUtil%)

(define AnimationFrameToImageUtil.jcell_instance 'jnone)
(define (AnimationFrameToImageUtil.jstatic_instance)
  (when (eq? AnimationFrameToImageUtil.jcell_instance 'jnone) (set! AnimationFrameToImageUtil.jcell_instance (AnimationFrameToImageUtil.jnew_0)))
  AnimationFrameToImageUtil.jcell_instance)
(define (AnimationFrameToImageUtil.jsetstatic_instance value) (set! AnimationFrameToImageUtil.jcell_instance value))

(define (AnimationFrameToImageUtil.jnew_0)
  (define this (new AnimationFrameToImageUtil% [jclass "AnimationFrameToImageUtil"]))
  this)

(define (AnimationFrameToImageUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AnimationFrameToImageUtil.jstatic_instance)))))



