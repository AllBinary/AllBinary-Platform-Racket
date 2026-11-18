#lang racket/base
;;
;; AllBinary Open License Version 1
;; Copyright (c) 2026 AllBinary
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
  "../../../../../org/allbinary/canvas/Processor.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define InitGameProcessor%
  (class Processor%
    (super-new)
    (field [f_gameCanvas JR.null])
    (define/override (jm_process_0)
    (let ()
      (let/ec jreturn
        (when (send (ProgressCanvasFactory.jm_getInstance_0) jm_isInGame_0)
            (begin
            (send (get-field f_gameCanvas this) jm_setProcessGameProcessorInit_0))))))))
(define (InitGameProcessor.jclassValue) InitGameProcessor%)

(define (InitGameProcessor.jnew_1 _gameCanvas)
  (define this (new InitGameProcessor% [jclass "InitGameProcessor"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_gameCanvas this _gameCanvas)))
  this)



