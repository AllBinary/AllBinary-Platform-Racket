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
;; package org.allbinary.game.graphics.hud

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define HudGraphicsPosition%
  (class JObject%
    (super-new)
    (field [f_anchor 0])
    (field [f_point JR.null])
    (define/public (jm_getAnchor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_anchor this)))))
    (define/public (jm_setAnchor_1 _anchor)
    (let ()
      (let/ec jreturn
        (set-field! f_anchor this _anchor))))
    (define/public (jm_getPoint_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_point this)))))
    (define/public (jm_setPoint_1 _point)
    (let ()
      (let/ec jreturn
        (set-field! f_point this _point))))))
(define (HudGraphicsPosition.jclassValue) HudGraphicsPosition%)

(define HudGraphicsPosition.jcell_NULL_HUD_GRAPHICS_POSITION 'jnone)
(define (HudGraphicsPosition.jstatic_NULL_HUD_GRAPHICS_POSITION)
  (when (eq? HudGraphicsPosition.jcell_NULL_HUD_GRAPHICS_POSITION 'jnone) (set! HudGraphicsPosition.jcell_NULL_HUD_GRAPHICS_POSITION (HudGraphicsPosition.jnew_2 (get-field f_ZERO_ZERO (PointFactory.jm_getInstance_0)) 9)))
  HudGraphicsPosition.jcell_NULL_HUD_GRAPHICS_POSITION)
(define (HudGraphicsPosition.jsetstatic_NULL_HUD_GRAPHICS_POSITION value) (set! HudGraphicsPosition.jcell_NULL_HUD_GRAPHICS_POSITION value))

(define (HudGraphicsPosition.jnew_2 _point _anchor)
  (define this (new HudGraphicsPosition% [jclass "HudGraphicsPosition"]))
    
    (set-field! f_point this (get-field f_ZERO_ZERO (PointFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (send this jm_setAnchor_1 _anchor)
        (send this jm_setPoint_1 _point)))
  this)



