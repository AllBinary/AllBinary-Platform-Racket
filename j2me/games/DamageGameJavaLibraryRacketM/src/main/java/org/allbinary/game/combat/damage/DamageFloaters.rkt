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
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/paint/Paintable.rkt")
(provide (all-defined-out))

(define DamageFloaters%
  (class Paintable%
    (super-new)
    (define/public (jm_add_1 _damage)
    (let ()
      (let/ec jreturn (void))))))
(define (DamageFloaters.jclassValue) DamageFloaters%)

(define DamageFloaters.jcell_SINGLETON 'jnone)
(define (DamageFloaters.jstatic_SINGLETON)
  (when (eq? DamageFloaters.jcell_SINGLETON 'jnone) (set! DamageFloaters.jcell_SINGLETON (DamageFloaters.jnew_0)))
  DamageFloaters.jcell_SINGLETON)
(define (DamageFloaters.jsetstatic_SINGLETON value) (set! DamageFloaters.jcell_SINGLETON value))

(define (DamageFloaters.jnew_0)
  (define this (new DamageFloaters% [jclass "DamageFloaters"]))
  this)

(define (DamageFloaters.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DamageFloaters.jstatic_SINGLETON)))))



