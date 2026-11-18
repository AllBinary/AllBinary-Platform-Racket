#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/platform/graphics/PlatformBitmapBase.rkt")
(provide (all-defined-out))

(define OpenGLBitmap%
  (class PlatformBitmapBase%
    (super-new)
    (field [f_bitmap JR.null])
    (define/public (jm_getPixels_7 _pixels _offset _stride _x _y _width _height)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setPixels_7 _pixels _offset _stride _x _y _width _height)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_recycle_0)
    (let ()
      (let/ec jreturn (void))))))
(define (OpenGLBitmap.jclassValue) OpenGLBitmap%)

(define (OpenGLBitmap.jnew_1 _bitmap)
  (define this (new OpenGLBitmap% [jclass "OpenGLBitmap"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_bitmap this _bitmap)))
  this)



