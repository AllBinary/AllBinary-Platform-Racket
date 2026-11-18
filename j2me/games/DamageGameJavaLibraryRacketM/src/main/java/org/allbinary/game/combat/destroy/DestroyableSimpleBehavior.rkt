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
;; package org.allbinary.game.combat.destroy

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./DestroyableBaseBehavior.rkt")
(lazy-require ["./DestroyedLayerProcessor.rkt" (DestroyedLayerProcessor.jm_getInstance_0)])
(provide (all-defined-out))

(define DestroyableSimpleBehavior%
  (class DestroyableBaseBehavior%
    (super-new)
    (field [f_ownerLayer JR.null])
    (field [f_destroyed #f])
    (define/override (jm_isDestroyed_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_destroyed this)))))
    (define/override (jm_setDestroyed_1 _destroyed)
    (let ()
      (let/ec jreturn
        (set-field! f_destroyed this _destroyed)
        (when (send this jm_isDestroyed_0)
            (begin
            (send (DestroyedLayerProcessor.jm_getInstance_0) jm_add_1 (get-field f_ownerLayer this)))))))))
(define (DestroyableSimpleBehavior.jclassValue) DestroyableSimpleBehavior%)

(define (DestroyableSimpleBehavior.jnew_1 _ownerLayer)
  (define this (new DestroyableSimpleBehavior% [jclass "DestroyableSimpleBehavior"]))
    
    (set-field! f_destroyed this #f)
    (let ()
      (let/ec jreturn
        (set-field! f_ownerLayer this _ownerLayer)))
  this)



