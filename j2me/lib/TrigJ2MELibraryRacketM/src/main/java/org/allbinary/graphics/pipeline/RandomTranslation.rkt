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
;; package org.allbinary.graphics.pipeline

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/rand/MyRandomFactory.rkt" (MyRandomFactory.jm_getInstance_0)])
(lazy-require ["./BasicGraphicsPipeline.rkt" (BasicGraphicsPipeline.jnew_1)])
(provide (all-defined-out))

(define RandomTranslation%
  (class JObject%
    (super-new)))
(define (RandomTranslation.jclassValue) RandomTranslation%)

(define (RandomTranslation.jnew_0)
  (define this (new RandomTranslation% [jclass "RandomTranslation"]))
  this)

(define (RandomTranslation.jm_getInstance_2 _vector _howMuch)
    (let ([_myRandomFactory JR.null][_x JR.null][_y JR.null][_graphicsPipe JR.null])
      (let/ec jreturn
        (set! _myRandomFactory (MyRandomFactory.jm_getInstance_0))
        (set! _x (JR.i32 (- (send _myRandomFactory jm_getNextInt_1 _howMuch))))
        (set! _y (send _myRandomFactory jm_getNextInt_1 _howMuch))
        (set! _graphicsPipe (BasicGraphicsPipeline.jnew_1 _vector))
        (send _graphicsPipe jm_createMatrix_0)
        (send _graphicsPipe jm_translate_2 _x _y)
        (jreturn (send _graphicsPipe jm_getMatrix_0)))))



