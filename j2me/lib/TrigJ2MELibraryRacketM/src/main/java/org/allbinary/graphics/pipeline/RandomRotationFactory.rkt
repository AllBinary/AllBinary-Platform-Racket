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
(lazy-require ["../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["./BasicGraphicsPipeline.rkt" (BasicGraphicsPipeline.jnew_1)])
(provide (all-defined-out))

(define RandomRotationFactory%
  (class JObject%
    (super-new)
    (field [f_myRandomFactory JR.null])
    (field [f_angleFactory JR.null])
    (define/public (jm_getInstanceList_2 _vector _howMuch)
    (let ([_graphicsPipe JR.null])
      (let/ec jreturn
        (set! _graphicsPipe (BasicGraphicsPipeline.jnew_1 _vector))
        (send _graphicsPipe jm_createMatrix_0)
        (send _graphicsPipe jm_rotateToAngle_1 (send (get-field f_angleFactory this) jm_getAt_1 (send this jm_getNextRandomAngle_1 _howMuch)))
        (jreturn (send _graphicsPipe jm_getMatrix_0)))))
    (define/public (jm_getNextRandomAngle_1 _howMuch)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_myRandomFactory this) jm_getNextInt_1 (JR.i32 (* _howMuch 10)))))))))
(define (RandomRotationFactory.jclassValue) RandomRotationFactory%)

(define RandomRotationFactory.jcell_instance 'jnone)
(define (RandomRotationFactory.jstatic_instance)
  (when (eq? RandomRotationFactory.jcell_instance 'jnone) (set! RandomRotationFactory.jcell_instance (RandomRotationFactory.jnew_0)))
  RandomRotationFactory.jcell_instance)
(define (RandomRotationFactory.jsetstatic_instance value) (set! RandomRotationFactory.jcell_instance value))

(define (RandomRotationFactory.jnew_0)
  (define this (new RandomRotationFactory% [jclass "RandomRotationFactory"]))
    (set-field! f_myRandomFactory this (MyRandomFactory.jm_getInstance_0))
    (set-field! f_angleFactory this (AngleFactory.jm_getInstance_0))
  this)

(define (RandomRotationFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (RandomRotationFactory.jstatic_instance)))))



