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
(lazy-require ["./ImageRotationUtil.rkt" (ImageRotationUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ImageToRotationImageArrayUtil%
  (class JObject%
    (super-new)
    (define/public (jm_generate_3 _image _angleIncrement _totalAngle)
    (let ([_imageRotationUtil JR.null][_totalFrames JR.null][_imageArray JR.null][_index JR.null])
      (let/ec jreturn
        (set! _imageRotationUtil (ImageRotationUtil.jm_getInstance_0))
        (set! _totalFrames (JR.idiv _totalAngle _angleIncrement))
        (set! _imageArray (JR.newArray JR.null _totalFrames))
        (vector-set! _imageArray 0 _image)
        (begin
            (set! _index 1)
            (let/ec jbreak (let jloop () (when (< _index _totalFrames)
                (let/ec jcontinue
            (vector-set! _imageArray _index (send _imageRotationUtil jm_createRotatedImage_2 _image (JR.i32 (* _index _angleIncrement)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _imageArray))))))
(define (ImageToRotationImageArrayUtil.jclassValue) ImageToRotationImageArrayUtil%)

(define ImageToRotationImageArrayUtil.jcell_instance 'jnone)
(define (ImageToRotationImageArrayUtil.jstatic_instance)
  (when (eq? ImageToRotationImageArrayUtil.jcell_instance 'jnone) (set! ImageToRotationImageArrayUtil.jcell_instance (ImageToRotationImageArrayUtil.jnew_0)))
  ImageToRotationImageArrayUtil.jcell_instance)
(define (ImageToRotationImageArrayUtil.jsetstatic_instance value) (set! ImageToRotationImageArrayUtil.jcell_instance value))

(define (ImageToRotationImageArrayUtil.jnew_0)
  (define this (new ImageToRotationImageArrayUtil% [jclass "ImageToRotationImageArrayUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ImageToRotationImageArrayUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageToRotationImageArrayUtil.jstatic_instance)))))



