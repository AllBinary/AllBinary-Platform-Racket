#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
(lazy-require ["../../../org/allbinary/media/image/ImageJ2MEScaleUtil.rkt" (ImageJ2MEScaleUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AnimationFactoryImageScaleUtil%
  (class JObject%
    (super-new)
    (field [f_imageScaleUtil JR.null])
    (define/public (jm_createImage_5 _image _width _height _scaleWidth _scaleHeight)
    (let ([_scaledImage JR.null][_scaleX JR.null][_scaleY JR.null][_scaledWidth JR.null][_scaledHeight JR.null])
      (let/ec jreturn
        (set! _scaledImage JR.null)
        (if (and (not (= _scaleWidth 0)) (not (= _scaleHeight 0)))
            (begin
            (set! _scaleX (/ (JR.toDouble _scaleWidth) (JR.toDouble _width)))
            (set! _scaleY (/ (JR.toDouble _scaleHeight) (JR.toDouble _height)))
            (if (or (and (= _scaleX 1.0) (= _scaleY 1.0)) (or (= _scaleX 0.0) (= _scaleY 0.0)))
                (begin
                (set! _scaledImage _image))
                (begin
                (set! _scaledWidth (JR.d2i (* _scaleX (JR.toDouble _width))))
                (set! _scaledHeight (JR.d2i (* _scaleY (JR.toDouble _height))))
                (set! _scaledImage (send (get-field f_imageScaleUtil this) jm_scale_3 _image _scaledWidth _scaledHeight)))))
            (begin
            (set! _scaledImage _image)))
        (jreturn _scaledImage))))
    (define/public (jm_processAdjust_1 _baseImageAnimationFactory)
    (let ([_scaleProperties JR.null][_animationFactoryInitializationVisitor JR.null][_scaleX JR.null][_scaleY JR.null])
      (let/ec jreturn
        (set! _scaleProperties (send _baseImageAnimationFactory jm_getScalePropertiesP_0))
        (if (and (not (= (get-field f_scaleWidth _scaleProperties) 0)) (not (= (get-field f_scaleHeight _scaleProperties) 0)))
            (begin
            (set! _animationFactoryInitializationVisitor (send _baseImageAnimationFactory jm_getAnimationFactoryInitializationVisitorP_0))
            (set! _scaleX (/ (JR.toDouble (get-field f_scaleWidth _scaleProperties)) (JR.toDouble (get-field f_width _animationFactoryInitializationVisitor))))
            (set! _scaleY (/ (JR.toDouble (get-field f_scaleHeight _scaleProperties)) (JR.toDouble (get-field f_height _animationFactoryInitializationVisitor))))
            (if (or (and (= _scaleX 1.0) (= _scaleY 1.0)) (or (= _scaleX 0.0) (= _scaleY 0.0)))
                (begin
                (void))
                (begin
                (set-field! f_dx _animationFactoryInitializationVisitor (JR.d2i (* (JR.toDouble (get-field f_originalDx _animationFactoryInitializationVisitor)) _scaleX)))
                (set-field! f_dy _animationFactoryInitializationVisitor (JR.d2i (* (JR.toDouble (get-field f_originalDy _animationFactoryInitializationVisitor)) _scaleY))))))
            (begin
            (void))))))))
(define (AnimationFactoryImageScaleUtil.jclassValue) AnimationFactoryImageScaleUtil%)

(define AnimationFactoryImageScaleUtil.jcell_instance 'jnone)
(define (AnimationFactoryImageScaleUtil.jstatic_instance)
  (when (eq? AnimationFactoryImageScaleUtil.jcell_instance 'jnone) (set! AnimationFactoryImageScaleUtil.jcell_instance (AnimationFactoryImageScaleUtil.jnew_0)))
  AnimationFactoryImageScaleUtil.jcell_instance)
(define (AnimationFactoryImageScaleUtil.jsetstatic_instance value) (set! AnimationFactoryImageScaleUtil.jcell_instance value))

(define (AnimationFactoryImageScaleUtil.jnew_0)
  (define this (new AnimationFactoryImageScaleUtil% [jclass "AnimationFactoryImageScaleUtil"]))
    (set-field! f_imageScaleUtil this (ImageJ2MEScaleUtil.jm_getInstance_0))
  this)

(define (AnimationFactoryImageScaleUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AnimationFactoryImageScaleUtil.jstatic_instance)))))



