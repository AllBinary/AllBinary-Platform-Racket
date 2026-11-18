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
;; package org.allbinary.game.ag.layer.pickup.health

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define HealthResources%
  (class JObject%
    (super-new)
    (field [f_RESOURCE JR.null])))
(define (HealthResources.jclassValue) HealthResources%)

(define HealthResources.jcell_SINGLETON 'jnone)
(define (HealthResources.jstatic_SINGLETON)
  (when (eq? HealthResources.jcell_SINGLETON 'jnone) (set! HealthResources.jcell_SINGLETON (HealthResources.jnew_0)))
  HealthResources.jcell_SINGLETON)
(define (HealthResources.jsetstatic_SINGLETON value) (set! HealthResources.jcell_SINGLETON value))

(define (HealthResources.jnew_0)
  (define this (new HealthResources% [jclass "HealthResources"]))
    (set-field! f_RESOURCE this "health_drop_20_by_20.png")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (HealthResources.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (HealthResources.jstatic_SINGLETON)))))



