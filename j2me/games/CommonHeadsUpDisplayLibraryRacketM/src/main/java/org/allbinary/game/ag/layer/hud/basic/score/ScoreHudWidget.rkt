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
;; package org.allbinary.game.ag.layer.hud.basic.score

(require racket/class racket/lazy-require
  "../../../../../../../../allbinary_java.rkt"
  "../../../../../../../../org/allbinary/game/ag/layer/hud/basic/NumberStringHud.rkt")
(lazy-require ["../../../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ScoreHudWidget%
  (class NumberStringHud%
    (super-new)
    (define/override (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_updateMaxWidth this (JR.i32 (* (send _font jm_getSize_0) 5)))
        (super jm_updateMeasurement_1 _graphics))))))
(define (ScoreHudWidget.jclassValue) ScoreHudWidget%)

(define (ScoreHudWidget.jnew_5 _maxscore _location _direction _bufferZone _basicColor)
  (define this (new ScoreHudWidget% [jclass "ScoreHudWidget"]))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_updateMaxHeight this 14)))
  this)

(define (ScoreHudWidget.jm_getInstance_3 _maxscore _location _direction)
    (let ()
      (let/ec jreturn
        (jreturn (ScoreHudWidget.jnew_5 _maxscore _location _direction 2 (get-field f_GREY (BasicColorFactory.jm_getInstance_0)))))))



