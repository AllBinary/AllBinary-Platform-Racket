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
  "../../../../../org/allbinary/game/input/GameInputProcessor.rkt")
(provide (all-defined-out))

(define SpecialGameInputInterfaceProcessor%
  (class GameInputProcessor%
    (super-new)
    (field [f_specialGameInputInterface JR.null])))
(define (SpecialGameInputInterfaceProcessor.jclassValue) SpecialGameInputInterfaceProcessor%)

(define (SpecialGameInputInterfaceProcessor.jnew_1 _collidableDestroyableDamageableLayer)
  (define this (new SpecialGameInputInterfaceProcessor% [jclass "SpecialGameInputInterfaceProcessor"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_specialGameInputInterface this _collidableDestroyableDamageableLayer)))
  this)



