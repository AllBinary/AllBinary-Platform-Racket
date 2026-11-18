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
  "../../../../org/allbinary/graphics/color/ColorCompositeInterface.rkt"
  "../../../../org/allbinary/graphics/paint/Paintable.rkt")
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ColorFillBasePaintable%
  (class Paintable%
    (super-new)
    (field [f_basicColor JR.null])
    (field [f_colorP 0])
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor)
        (send this jm_setColor_1 (send (send this jm_getBasicColorP_0) jm_intValue_0)))))
    (define/public (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColor this)))))
    (define/public (jm_getColor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_colorP this)))))
    (define/public (jm_setColor_1 _color)
    (let ()
      (let/ec jreturn
        (set-field! f_colorP this _color))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (ColorFillBasePaintable.jclassValue) ColorFillBasePaintable%)

(define (ColorFillBasePaintable.jnew_1 _basicColor)
  (define this (new ColorFillBasePaintable% [jclass "ColorFillBasePaintable"]))
    (set-field! f_basicColor this (get-field f_WHITE (BasicColorFactory.jm_getInstance_0)))
    
    (let ()
      (let/ec jreturn
        (send this jm_setBasicColorP_1 _basicColor)))
  this)



