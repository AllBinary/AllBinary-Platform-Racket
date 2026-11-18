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
;; package org.allbinary.graphics.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./LocationPaintable.rkt")
(provide (all-defined-out))

(define StringLocationPaintable%
  (class LocationPaintable%
    (super-new)
    (field [f_value JR.null])
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send _graphics jm_drawString_4 (get-field f_value this) _x _y 0))))))
(define (StringLocationPaintable.jclassValue) StringLocationPaintable%)

(define (StringLocationPaintable.jnew_1 _value)
  (define this (new StringLocationPaintable% [jclass "StringLocationPaintable"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_value this _value)))
  this)



