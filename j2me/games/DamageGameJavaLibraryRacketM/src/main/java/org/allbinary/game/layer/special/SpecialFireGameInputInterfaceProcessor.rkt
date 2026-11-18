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

(define SpecialFireGameInputInterfaceProcessor%
  (class SpecialGameInputInterfaceProcessor%
    (super-new)
    (define/override (jm_processEvent_2 _allbinaryLayerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_specialGameInputInterface this)))))))
(define (SpecialFireGameInputInterfaceProcessor.jclassValue) SpecialFireGameInputInterfaceProcessor%)

(define (SpecialFireGameInputInterfaceProcessor.jnew_1 _collidableDestroyableDamageableLayer)
  (define this (new SpecialFireGameInputInterfaceProcessor% [jclass "SpecialFireGameInputInterfaceProcessor"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



