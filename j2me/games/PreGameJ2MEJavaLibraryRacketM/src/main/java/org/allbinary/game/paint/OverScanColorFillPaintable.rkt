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
;; package org.allbinary.game.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./ColorFillPaintable.rkt")
(provide (all-defined-out))

(define OverScanColorFillPaintable%
  (class ColorFillPaintable%
    (super-new)
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send _graphics jm_setColor_1 (get-field f_colorP this))
        (send _graphics jm_fillRect_4 (JR.i32 (- (send _graphics jm_getClipX_0))) (JR.i32 (- (send _graphics jm_getClipY_0))) (JR.i32 (+ (JR.className (get-field f_displayInfoSingleton this)) (JR.i32 (* (send _graphics jm_getClipX_0) 2)))) (JR.i32 (+ (JR.className (get-field f_displayInfoSingleton this)) (JR.i32 (* (send _graphics jm_getClipY_0) 2))))))))))
(define (OverScanColorFillPaintable.jclassValue) OverScanColorFillPaintable%)

(define (OverScanColorFillPaintable.jnew_1 _basicColor)
  (define this (new OverScanColorFillPaintable% [jclass "OverScanColorFillPaintable"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



