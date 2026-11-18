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
;; package org.allbinary.game.score

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/game/input/PlayerGameInput.rkt")
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define HighScoresCanvasInputProcessor%
  (class PlayerGameInput%
    (super-new)
    (field [f_highScoresCanvas JR.null])
    (define/public (jm_open_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_onPressGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (super jm_onPressGameKeyEvent_1 _gameKeyEvent)
        (send this jm_update_0))))
    (define/override (jm_onDownGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (super jm_onDownGameKeyEvent_1 _gameKeyEvent)
        (send this jm_update_0))))
    (define/override (jm_onUpGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (super jm_onUpGameKeyEvent_1 _gameKeyEvent)
        (send this jm_update_0))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getHighScoresCanvas_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_highScoresCanvas this)))))))
(define (HighScoresCanvasInputProcessor.jclassValue) HighScoresCanvasInputProcessor%)

(define (HighScoresCanvasInputProcessor.jnew_1 _highScoresCanvas)
  (define this (new HighScoresCanvasInputProcessor% [jclass "HighScoresCanvasInputProcessor"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_highScoresCanvas this _highScoresCanvas)))
  this)



