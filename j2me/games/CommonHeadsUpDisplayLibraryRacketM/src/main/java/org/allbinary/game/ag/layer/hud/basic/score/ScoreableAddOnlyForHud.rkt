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
  "../../../../../../../../org/allbinary/game/score/Scoreable.rkt")
(provide (all-defined-out))

(define ScoreableAddOnlyForHud%
  (class Scoreable%
    (super-new)
    (field [f_scoreHudWidget JR.null])
    (define/override (jm_removePoints_1 _points)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_addPoints_1 _points)
    (let ()
      (let/ec jreturn
        (super jm_addPoints_1 _points)
        (send (send this jm_getScoreHudWidget_0) jm_add_1 _points))))
    (define/public (jm_getScoreHudWidget_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_scoreHudWidget this)))))))
(define (ScoreableAddOnlyForHud.jclassValue) ScoreableAddOnlyForHud%)

(define (ScoreableAddOnlyForHud.jnew_1 _scoreVectorGraphic)
  (define this (new ScoreableAddOnlyForHud% [jclass "ScoreableAddOnlyForHud"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_scoreHudWidget this _scoreVectorGraphic)
        (send (send this jm_getScoreHudWidget_0) jm_set_1 0)))
  this)



