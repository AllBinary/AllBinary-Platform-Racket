#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.displayable

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define ScreenRelationalUtil%
  (class JObject%
    (super-new)
    (define/public (jm_getScaleImage_1 _image)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getScaleWH_2 (send _image jm_getWidth_0) (send _image jm_getHeight_0))))))
    (define/public (jm_getScaleWH_2 _aWidth _aHeight)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getScaleWHA_3 _aWidth _aHeight 20)))))
    (define/public (jm_getScaleWHA_3 _aWidth _aHeight _add)
    (let ([_displayInfoSingleton JR.null][_last JR.null][_width JR.null][_height JR.null][_largestSize JR.null][_scale JR.null])
      (let/ec jreturn
        (set! _displayInfoSingleton (DisplayInfoSingleton.jm_getInstance_0))
        (set! _last (send _displayInfoSingleton jm_getLast_0))
        (set! _width (JR.toDouble (vector-ref _last (get-field f_WIDTH _displayInfoSingleton))))
        (set! _height (JR.toDouble (vector-ref _last (get-field f_HEIGHT _displayInfoSingleton))))
        (set! _largestSize _width)
        (when (< _largestSize _height)
            (begin
            (set! _largestSize _height)))
        (set! _scale (/ _largestSize (JR.toDouble _aWidth)))
        (jreturn _scale))))
    (define/public (jm_getScaledHeight_2 _aWidth _aHeight)
    (let ()
      (let/ec jreturn
        (jreturn (JR.d2i (* (send this jm_getScaleWH_2 _aWidth _aHeight) (JR.toDouble _aHeight)))))))
    (define/public (jm_getScaledHeightAdd_3 _aWidth _aHeight _add)
    (let ()
      (let/ec jreturn
        (jreturn (JR.d2i (* (send this jm_getScaleWHA_3 _aWidth _aHeight _add) (JR.toDouble _aHeight)))))))))
(define (ScreenRelationalUtil.jclassValue) ScreenRelationalUtil%)

(define ScreenRelationalUtil.jcell_instance 'jnone)
(define (ScreenRelationalUtil.jstatic_instance)
  (when (eq? ScreenRelationalUtil.jcell_instance 'jnone) (set! ScreenRelationalUtil.jcell_instance (ScreenRelationalUtil.jnew_0)))
  ScreenRelationalUtil.jcell_instance)
(define (ScreenRelationalUtil.jsetstatic_instance value) (set! ScreenRelationalUtil.jcell_instance value))

(define (ScreenRelationalUtil.jnew_0)
  (define this (new ScreenRelationalUtil% [jclass "ScreenRelationalUtil"]))
  this)

(define (ScreenRelationalUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ScreenRelationalUtil.jstatic_instance)))))



