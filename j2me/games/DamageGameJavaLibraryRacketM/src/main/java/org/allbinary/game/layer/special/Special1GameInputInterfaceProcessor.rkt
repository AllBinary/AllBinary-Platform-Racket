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
  "./SpecialGameInputInterfaceProcessor.rkt")
(provide (all-defined-out))

(define Special1GameInputInterfaceProcessor%
  (class SpecialGameInputInterfaceProcessor%
    (super-new)
    (define/override (jm_processEvent_2 _allbinaryLayerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_specialGameInputInterface this)))))))
(define (Special1GameInputInterfaceProcessor.jclassValue) Special1GameInputInterfaceProcessor%)

(define (Special1GameInputInterfaceProcessor.jnew_1 _collidableDestroyableDamageableLayer)
  (define this (new Special1GameInputInterfaceProcessor% [jclass "Special1GameInputInterfaceProcessor"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



