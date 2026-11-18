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
;; package org.allbinary.game.physics

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/physics/friction/FrictionData.rkt" (FrictionData.jm_getFrictionDenominator_0)])
(lazy-require ["../../../../org/allbinary/game/physics/velocity/DragVelocityBehavior.rkt" (DragVelocityBehavior.jstatic_instance)])
(provide (all-defined-out))

(define FrictionProperties%
  (class JObject%
    (super-new)
    (define/public (jm_friction_2 _velocityProperties _nominator)
    (let ()
      (let/ec jreturn
        (JR.className (DragVelocityBehavior.jstatic_instance)))))))
(define (FrictionProperties.jclassValue) FrictionProperties%)

(define (FrictionProperties.jnew_0)
  (define this (new FrictionProperties% [jclass "FrictionProperties"]))
    (let ()
      (let/ec jreturn (void)))
  this)



