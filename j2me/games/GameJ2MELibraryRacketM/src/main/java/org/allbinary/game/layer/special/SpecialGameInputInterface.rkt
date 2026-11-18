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
;; package org.allbinary.game.layer.special

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/paint/PaintableInterface.rkt")
(provide (all-defined-out))

(define SpecialGameInputInterface%
  (class JObject%
    (super-new)
    (define/public (jm_up_0)
      (raise (JR.newException "AbstractMethodError" "up")))
    (define/public (jm_down_0)
      (raise (JR.newException "AbstractMethodError" "down")))
    (define/public (jm_right_0)
      (raise (JR.newException "AbstractMethodError" "right")))
    (define/public (jm_left_0)
      (raise (JR.newException "AbstractMethodError" "left")))
    (define/public (jm_strafeLeft_0)
      (raise (JR.newException "AbstractMethodError" "strafeLeft")))
    (define/public (jm_strafeRight_0)
      (raise (JR.newException "AbstractMethodError" "strafeRight")))
    (define/public (jm_fire_2 _layerManager _gameKeyEvent)
      (raise (JR.newException "AbstractMethodError" "fire")))
    (define/public (jm_special1_2 _layerManager _gameKeyEvent)
      (raise (JR.newException "AbstractMethodError" "special1")))
    (define/public (jm_special2_2 _layerManager _gameKeyEvent)
      (raise (JR.newException "AbstractMethodError" "special2")))
    (define/public (jm_special3_2 _layerManager _gameKeyEvent)
      (raise (JR.newException "AbstractMethodError" "special3")))
    (define/public (jm_special4_2 _layerManager _gameKeyEvent)
      (raise (JR.newException "AbstractMethodError" "special4")))
    (define/public (jm_special5_2 _layerManager _gameKeyEvent)
      (raise (JR.newException "AbstractMethodError" "special5")))))
(define (SpecialGameInputInterface.jclassValue) SpecialGameInputInterface%)

(define (SpecialGameInputInterface.jnew_0)
  (define this (new SpecialGameInputInterface% [jclass "SpecialGameInputInterface"]))
  this)



