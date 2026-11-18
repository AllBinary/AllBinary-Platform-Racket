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
  "./ColorFillBasePaintable.rkt")
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define ColorFillPaintable%
  (class ColorFillBasePaintable%
    (super-new)
    (field [f_displayInfoSingleton JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send _graphics jm_setColor_1 (get-field f_colorP this))
        (send _graphics jm_fillRect_4 0 0 (send (get-field f_displayInfoSingleton this) jm_getLastWidth_0) (send (get-field f_displayInfoSingleton this) jm_getLastHeight_0)))))))
(define (ColorFillPaintable.jclassValue) ColorFillPaintable%)

(define (ColorFillPaintable.jnew_1 _basicColor)
  (define this (new ColorFillPaintable% [jclass "ColorFillPaintable"]))
    (set-field! f_displayInfoSingleton this (DisplayInfoSingleton.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)



