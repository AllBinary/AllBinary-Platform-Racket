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
;; package org.allbinary.media.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/image/GameFeatureImageCacheFactory.rkt" (GameFeatureImageCacheFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ImageCreationUtil%
  (class JObject%
    (super-new)
    (define/public (jm_createImageWH_2 _width _height)
    (let ([_image JR.null])
      (let/ec jreturn
        (set! _image (send (GameFeatureImageCacheFactory.jm_getInstance_0) jm_get_3 (JR.className this) _width _height))
        (jreturn _image))))
    (define/public (jm_createImage_4 _width _height _maxScaleX _maxScaleY)
    (let ([_image JR.null])
      (let/ec jreturn
        (set! _image (send (GameFeatureImageCacheFactory.jm_getInstance_0) jm_get_3 (JR.className this) (JR.i32 (+ (JR.d2i (* (JR.toDouble _width) _maxScaleX)) 1)) (JR.i32 (+ (JR.d2i (* (JR.toDouble _height) _maxScaleY)) 1))))
        (jreturn _image))))))
(define (ImageCreationUtil.jclassValue) ImageCreationUtil%)

(define ImageCreationUtil.jcell_instance 'jnone)
(define (ImageCreationUtil.jstatic_instance)
  (when (eq? ImageCreationUtil.jcell_instance 'jnone) (set! ImageCreationUtil.jcell_instance (ImageCreationUtil.jnew_0)))
  ImageCreationUtil.jcell_instance)
(define (ImageCreationUtil.jsetstatic_instance value) (set! ImageCreationUtil.jcell_instance value))

(define (ImageCreationUtil.jnew_0)
  (define this (new ImageCreationUtil% [jclass "ImageCreationUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ImageCreationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageCreationUtil.jstatic_instance)))))



