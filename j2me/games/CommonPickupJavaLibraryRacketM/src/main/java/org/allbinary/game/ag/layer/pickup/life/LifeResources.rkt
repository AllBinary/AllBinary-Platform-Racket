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
;; package org.allbinary.game.ag.layer.pickup.life

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define LifeResources%
  (class JObject%
    (super-new)
    (field [f_RESOURCE JR.null])))
(define (LifeResources.jclassValue) LifeResources%)

(define LifeResources.jcell_SINGLETON 'jnone)
(define (LifeResources.jstatic_SINGLETON)
  (when (eq? LifeResources.jcell_SINGLETON 'jnone) (set! LifeResources.jcell_SINGLETON (LifeResources.jnew_0)))
  LifeResources.jcell_SINGLETON)
(define (LifeResources.jsetstatic_SINGLETON value) (set! LifeResources.jcell_SINGLETON value))

(define (LifeResources.jnew_0)
  (define this (new LifeResources% [jclass "LifeResources"]))
    (set-field! f_RESOURCE this "life_drop_20_by_20.png")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (LifeResources.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LifeResources.jstatic_SINGLETON)))))



