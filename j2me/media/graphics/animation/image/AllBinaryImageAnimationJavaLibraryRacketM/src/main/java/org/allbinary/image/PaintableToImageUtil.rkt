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

(define PaintableToImageUtil%
  (class JObject%
    (super-new)))
(define (PaintableToImageUtil.jclassValue) PaintableToImageUtil%)

(define PaintableToImageUtil.jcell_instance 'jnone)
(define (PaintableToImageUtil.jstatic_instance)
  (when (eq? PaintableToImageUtil.jcell_instance 'jnone) (set! PaintableToImageUtil.jcell_instance (PaintableToImageUtil.jnew_0)))
  PaintableToImageUtil.jcell_instance)
(define (PaintableToImageUtil.jsetstatic_instance value) (set! PaintableToImageUtil.jcell_instance value))

(define (PaintableToImageUtil.jnew_0)
  (define this (new PaintableToImageUtil% [jclass "PaintableToImageUtil"]))
  this)

(define (PaintableToImageUtil.jm_getImage_3 _paintableInterface _width _height)
    (let ([_image JR.null][_graphics JR.null])
      (let/ec jreturn
        (set! _image (send (GameFeatureImageCacheFactory.jm_getInstance_0) jm_get_3 (JR.className (PaintableToImageUtil.jstatic_instance)) _width _height))
        (set! _graphics (send _image jm_getGraphics_0))
        (send _paintableInterface jm_paint_1 _graphics)
        (jreturn _image))))



