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
;; package org.allbinary.graphics.canvas.transition.progress

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/graphics/paint/Paintable.rkt")
(provide (all-defined-out))

(define ProgressPaintable%
  (class Paintable%
    (super-new)
    (field [f_progressCanvas JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_progressCanvas this) jm_paint2_1 _graphics))))))
(define (ProgressPaintable.jclassValue) ProgressPaintable%)

(define (ProgressPaintable.jnew_1 _progressCanvas)
  (define this (new ProgressPaintable% [jclass "ProgressPaintable"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_progressCanvas this _progressCanvas)))
  this)



