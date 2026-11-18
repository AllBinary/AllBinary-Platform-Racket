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
  "./HighScoresCanvasInputProcessorFactoryInterface.rkt")
(lazy-require ["./HighScoresCanvasLevelChangeInputProcessor.rkt" (HighScoresCanvasLevelChangeInputProcessor.jnew_1)])
(provide (all-defined-out))

(define HighScoresCanvasChangeLevelInputProcessorFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_1 _highScoresCanvas)
    (let ()
      (let/ec jreturn
        (jreturn (HighScoresCanvasLevelChangeInputProcessor.jnew_1 _highScoresCanvas)))))))
(define (HighScoresCanvasChangeLevelInputProcessorFactory.jclassValue) HighScoresCanvasChangeLevelInputProcessorFactory%)

(define (HighScoresCanvasChangeLevelInputProcessorFactory.jnew_0)
  (define this (new HighScoresCanvasChangeLevelInputProcessorFactory% [jclass "HighScoresCanvasChangeLevelInputProcessorFactory"]))
  this)



