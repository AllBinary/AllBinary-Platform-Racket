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
;; package org.allbinary.game.combat.damage

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ExplosionResources%
  (class JObject%
    (super-new)
    (field [f_EXPLOSION_90_RESOURCE JR.null])
    (field [f_EXPLOSION_60_RESOURCE JR.null])
    (field [f_HALF_EXPLOSION_RESOURCE JR.null])
    (field [f_THIRD_EXPLOSION_RESOURCE JR.null])))
(define (ExplosionResources.jclassValue) ExplosionResources%)

(define ExplosionResources.jcell_instance 'jnone)
(define (ExplosionResources.jstatic_instance)
  (when (eq? ExplosionResources.jcell_instance 'jnone) (set! ExplosionResources.jcell_instance (ExplosionResources.jnew_0)))
  ExplosionResources.jcell_instance)
(define (ExplosionResources.jsetstatic_instance value) (set! ExplosionResources.jcell_instance value))

(define (ExplosionResources.jnew_0)
  (define this (new ExplosionResources% [jclass "ExplosionResources"]))
    (set-field! f_EXPLOSION_90_RESOURCE this "/explosion_sprite_90_by_90.png")
    (set-field! f_EXPLOSION_60_RESOURCE this "/explosion_sprite_60_by_60.png")
    (set-field! f_HALF_EXPLOSION_RESOURCE this "/explosion_sprite_30_by_30.png")
    (set-field! f_THIRD_EXPLOSION_RESOURCE this "/explosion_sprite_15_by_15.png")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ExplosionResources.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ExplosionResources.jstatic_instance)))))



