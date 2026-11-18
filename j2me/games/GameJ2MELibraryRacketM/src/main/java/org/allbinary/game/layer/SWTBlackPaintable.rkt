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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/paint/Paintable.rkt")
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorSetUtil.rkt" (BasicColorSetUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define SWTBlackPaintable%
  (class Paintable%
    (super-new)
    (field [f_basicSetColorUtil JR.null])
    (field [f_BLACK JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP_2 _graphics (get-field f_BLACK this)))))))
(define (SWTBlackPaintable.jclassValue) SWTBlackPaintable%)

(define (SWTBlackPaintable.jnew_0)
  (define this (new SWTBlackPaintable% [jclass "SWTBlackPaintable"]))
    (set-field! f_basicSetColorUtil this (BasicColorSetUtil.jm_getInstance_0))
    (set-field! f_BLACK this (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)))
  this)



