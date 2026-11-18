#lang racket/base
;;
;; AllBinary Open License Version 1
;; Copyright (c) 2023 AllBinary
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
(lazy-require ["../../../../javax/microedition/lcdui/Image.rkt" (Image.jm_createRGBImage_4)])
(provide (all-defined-out))

(define ImageJ2MEScaleUtil%
  (class JObject%
    (super-new)
    (define/public (jm_scaleArray_3 _images _width _height)
    (let ([_scaledImages JR.null][_index JR.null])
      (let/ec jreturn
        (set! _scaledImages (JR.newArray JR.null (vector-length _images)))
        (begin
            (set! _index (vector-length _images))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (vector-set! _scaledImages _index (send this jm_scale_3 (vector-ref _images _index) _width _height))) (jloop)))))
        (jreturn _scaledImages))))
    (define/public (jm_scale_3 _image _width _height)
    (let ([_sourceWidth JR.null][_sourceHeight JR.null][_originalData JR.null][_scaledData JR.null][_heightRatioFactor JR.null][_widthRatioFactor JR.null][_scaledIndex JR.null][_dx JR.null][_dy JR.null][_index2 JR.null][_index JR.null][_scaledImage JR.null])
      (let/ec jreturn
        (set! _sourceWidth (send _image jm_getWidth_0))
        (set! _sourceHeight (send _image jm_getHeight_0))
        (set! _originalData (JR.newArray 0 (JR.i32 (* (send _image jm_getWidth_0) (send _image jm_getHeight_0)))))
        (send _image jm_getRGB_7 _originalData 0 (send _image jm_getWidth_0) 0 0 (send _image jm_getWidth_0) (send _image jm_getHeight_0))
        (set! _scaledData (JR.newArray 0 (JR.i32 (* _width _height))))
        (set! _heightRatioFactor (JR.idiv (JR.i32 (* 8 _sourceHeight)) _height))
        (set! _widthRatioFactor (JR.idiv (JR.i32 (* 8 _sourceWidth)) _width))
        (set! _scaledIndex (JR.i32 (- (vector-length _scaledData) 1)))
        (set! _dx 0)
        (set! _dy 0)
        (begin
            (set! _index _height)
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _dy (arithmetic-shift (JR.i32 (* _index _heightRatioFactor)) (- (bitwise-and 3 31))))
            (begin
                (set! _index2 _width)
                (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index2 1))]) (set! _index2 jvalue) jvalue) 0)
                    (let/ec jcontinue
                (set! _dx (arithmetic-shift (JR.i32 (* _index2 _widthRatioFactor)) (- (bitwise-and 3 31))))
                (vector-set! _scaledData (let ([jvalue _scaledIndex]) (set! _scaledIndex (JR.i32 (- _scaledIndex 1))) jvalue) (vector-ref _originalData (JR.i32 (+ (JR.i32 (* _sourceWidth _dy)) _dx))))) (jloop)))))) (jloop)))))
        (set! _scaledImage (Image.jm_createRGBImage_4 _scaledData _width _height #t))
        (jreturn _scaledImage))))))
(define (ImageJ2MEScaleUtil.jclassValue) ImageJ2MEScaleUtil%)

(define ImageJ2MEScaleUtil.jcell_instance 'jnone)
(define (ImageJ2MEScaleUtil.jstatic_instance)
  (when (eq? ImageJ2MEScaleUtil.jcell_instance 'jnone) (set! ImageJ2MEScaleUtil.jcell_instance (ImageJ2MEScaleUtil.jnew_0)))
  ImageJ2MEScaleUtil.jcell_instance)
(define (ImageJ2MEScaleUtil.jsetstatic_instance value) (set! ImageJ2MEScaleUtil.jcell_instance value))

(define (ImageJ2MEScaleUtil.jnew_0)
  (define this (new ImageJ2MEScaleUtil% [jclass "ImageJ2MEScaleUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ImageJ2MEScaleUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageJ2MEScaleUtil.jstatic_instance)))))



