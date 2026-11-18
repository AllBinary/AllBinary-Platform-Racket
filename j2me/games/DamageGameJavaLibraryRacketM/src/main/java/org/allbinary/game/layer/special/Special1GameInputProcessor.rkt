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
  "./SpecialGameInputProcessor.rkt")
(provide (all-defined-out))

(define Special1GameInputProcessor%
  (class SpecialGameInputProcessor%
    (super-new)
    (define/override (jm_processEvent_2 _allbinaryLayerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (send (get-field f_collidableDestroyableDamageableLayer this) jm_special1_2 _allbinaryLayerManager _gameKeyEvent))))))
(define (Special1GameInputProcessor.jclassValue) Special1GameInputProcessor%)

(define (Special1GameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer)
  (define this (new Special1GameInputProcessor% [jclass "Special1GameInputProcessor"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



