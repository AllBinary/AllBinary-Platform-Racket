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
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/paint/Paintable.rkt")
(provide (all-defined-out))

(define GameCanvasNonBotPaintable%
  (class Paintable%
    (super-new)
    (field [f_gameCanvas JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameCanvas this) jm_nonBotPaint_1 _graphics))))))
(define (GameCanvasNonBotPaintable.jclassValue) GameCanvasNonBotPaintable%)

(define (GameCanvasNonBotPaintable.jnew_1 _gameCanvas)
  (define this (new GameCanvasNonBotPaintable% [jclass "GameCanvasNonBotPaintable"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_gameCanvas this _gameCanvas)))
  this)



