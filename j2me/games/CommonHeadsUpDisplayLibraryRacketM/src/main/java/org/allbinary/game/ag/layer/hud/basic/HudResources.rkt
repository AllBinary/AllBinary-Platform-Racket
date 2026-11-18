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
;; package org.allbinary.game.ag.layer.hud.basic

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define HudResources%
  (class JObject%
    (super-new)
    (field [f_RESOURCE_LIFE JR.null])
    (field [f_RESOURCE_HEALTH JR.null])))
(define (HudResources.jclassValue) HudResources%)

(define HudResources.jcell_instance 'jnone)
(define (HudResources.jstatic_instance)
  (when (eq? HudResources.jcell_instance 'jnone) (set! HudResources.jcell_instance (HudResources.jnew_0)))
  HudResources.jcell_instance)
(define (HudResources.jsetstatic_instance value) (set! HudResources.jcell_instance value))

(define (HudResources.jnew_0)
  (define this (new HudResources% [jclass "HudResources"]))
    (set-field! f_RESOURCE_LIFE this "/hud_life_10_by_10.png")
    (set-field! f_RESOURCE_HEALTH this "/hud_health_10_by_10.png")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (HudResources.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (HudResources.jstatic_instance)))))



