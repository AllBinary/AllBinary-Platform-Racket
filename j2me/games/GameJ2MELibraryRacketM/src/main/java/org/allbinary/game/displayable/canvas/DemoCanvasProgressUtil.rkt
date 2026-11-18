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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/PaintableComposite.rkt" (PaintableComposite.jnew_1)])
(provide (all-defined-out))

(define DemoCanvasProgressUtil%
  (class JObject%
    (super-new)))
(define (DemoCanvasProgressUtil.jclassValue) DemoCanvasProgressUtil%)

(define (DemoCanvasProgressUtil.jnew_0)
  (define this (new DemoCanvasProgressUtil% [jclass "DemoCanvasProgressUtil"]))
  this)

(define (DemoCanvasProgressUtil.jm_showProgress_1 _demoCanvas)
    (let ()
      (let/ec jreturn
        (DemoCanvasProgressUtil.jm_showProgressOptionallyInTheBackground_2 _demoCanvas #f))))

(define (DemoCanvasProgressUtil.jm_showProgressOptionallyInTheBackground_2 _demoCanvas _background)
    (let ([_progressCanvas JR.null][_paintableArray JR.null])
      (let/ec jreturn
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (send _progressCanvas jm_startBackground_1 _background)
        (set! _paintableArray (JR.newArray JR.null 2))
        (vector-set! _paintableArray 0 _progressCanvas)
        (vector-set! _paintableArray 1 (send _demoCanvas jm_getDefaultPaintableInterface_0))
        (send _demoCanvas jm_setDefaultPaintableInterface_1 (PaintableComposite.jnew_1 _paintableArray))
        (send _demoCanvas jm_setPaintableInterface_1 (send _demoCanvas jm_getDefaultPaintableInterface_0)))))



