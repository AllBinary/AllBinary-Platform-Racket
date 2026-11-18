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
;; package org.allbinary.image.sprite

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/layer/SpriteFactory.rkt" (SpriteFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/opengles/OpenGLUtil.rkt" (OpenGLUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/image/ImageCacheFactory.rkt" (ImageCacheFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/image/opengles/OpenGLESImageExclusionUtil.rkt" (OpenGLESImageExclusionUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/J2SEMath.rkt" (J2SEMath.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/media/image/ImageScaleUtil.rkt" (ImageScaleUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AnimationFactorySpriteScaleUtil%
  (class JObject%
    (super-new)
    (field [f_imageCache JR.null])
    (field [f_imageScaleUtil JR.null])
    (field [f_openGLUtil JR.null])
    (field [f_j2seMath JR.null])
    (field [f_openGLESImageExclusionUtil JR.null])
    (define/public (jm_createImage_5 _image _width _height _scaleWidth _scaleHeight)
    (let ([_spriteFactory JR.null][_sprite JR.null][_scaledImage JR.null][_scaleX JR.null][_scaleY JR.null][_width2 JR.null][_height2 JR.null][_multiplesOf16Width JR.null][_by16Width JR.null][_multiplesOf16Height JR.null][_by16Height JR.null])
      (let/ec jreturn
        (set! _spriteFactory (SpriteFactory.jm_getInstance_0))
        (set! _sprite JR.null)
        (set! _scaledImage JR.null)
        (if (and (not (= _scaleWidth 0)) (not (= _scaleHeight 0)))
            (begin
            (set! _scaleX (/ (JR.toDouble _scaleWidth) (JR.toDouble _width)))
            (set! _scaleY (/ (JR.toDouble _scaleHeight) (JR.toDouble _height)))
            (if (or (and (= _scaleX 1.0) (= _scaleY 1.0)) (or (= _scaleX 0.0) (= _scaleY 0.0)))
                (begin
                (set! _scaledImage (send (get-field f_openGLUtil this) jm_addImage_1 _image))
                (set! _sprite (send _spriteFactory jm_createSprite_3 _scaledImage _width _height)))
                (begin
                (when (send (get-field f_openGLESImageExclusionUtil this) jm_isCustomScaling_1 _image)
                    (begin
                    (set! _width2 (send (get-field f_j2seMath this) jm_round_1 (- (JR.toDouble _scaleWidth) 0.5)))
                    (set! _height2 (send (get-field f_j2seMath this) jm_round_1 (- (JR.toDouble _scaleHeight) 0.5)))
                    (set! _multiplesOf16Width (JR.idiv _width2 16))
                    (set! _by16Width (JR.i32 (* _multiplesOf16Width 16)))
                    (set! _scaleX (/ (JR.toDouble _by16Width) (JR.toDouble _width)))
                    (set! _multiplesOf16Height (JR.idiv _height2 16))
                    (set! _by16Height (JR.i32 (* _multiplesOf16Height 16)))
                    (set! _scaleY (/ (JR.toDouble _by16Height) (JR.toDouble _height)))
                    (when (< _scaleWidth _width)
                        (begin
                        (set! _scaleX (* _scaleX 2.35))))
                    (when (< _scaleHeight _height)
                        (begin
                        (set! _scaleY (* _scaleY 2.35))))))
                (set! _scaledImage (send (get-field f_imageScaleUtil this) jm_createImage2_7 (get-field f_imageCache this) _image _scaleX 1.0 _scaleY 1.0 #t))
                (set! _sprite (send _spriteFactory jm_createSprite_3 _scaledImage (JR.d2i (* (JR.toDouble _width) _scaleX)) (JR.d2i (* (JR.toDouble _height) _scaleY)))))))
            (begin
            (set! _scaledImage (send (get-field f_openGLUtil this) jm_addImage_1 _image))
            (set! _sprite (send _spriteFactory jm_createSprite_3 _scaledImage _width _height))))
        (jreturn _sprite))))))
(define (AnimationFactorySpriteScaleUtil.jclassValue) AnimationFactorySpriteScaleUtil%)

(define AnimationFactorySpriteScaleUtil.jcell_instance 'jnone)
(define (AnimationFactorySpriteScaleUtil.jstatic_instance)
  (when (eq? AnimationFactorySpriteScaleUtil.jcell_instance 'jnone) (set! AnimationFactorySpriteScaleUtil.jcell_instance (AnimationFactorySpriteScaleUtil.jnew_0)))
  AnimationFactorySpriteScaleUtil.jcell_instance)
(define (AnimationFactorySpriteScaleUtil.jsetstatic_instance value) (set! AnimationFactorySpriteScaleUtil.jcell_instance value))

(define (AnimationFactorySpriteScaleUtil.jnew_0)
  (define this (new AnimationFactorySpriteScaleUtil% [jclass "AnimationFactorySpriteScaleUtil"]))
    (set-field! f_imageCache this (ImageCacheFactory.jm_getInstance_0))
    (set-field! f_imageScaleUtil this (ImageScaleUtil.jm_getInstance_0))
    (set-field! f_openGLUtil this (OpenGLUtil.jm_getInstance_0))
    (set-field! f_j2seMath this (J2SEMath.jm_getInstance_0))
    (set-field! f_openGLESImageExclusionUtil this (OpenGLESImageExclusionUtil.jm_getInstance_0))
  this)

(define (AnimationFactorySpriteScaleUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AnimationFactorySpriteScaleUtil.jstatic_instance)))))



