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
;; package org.allbinary.game.health

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/Animation.rkt")
(lazy-require ["../../../../org/allbinary/game/graphics/hud/BasicHudFactory.rkt" (BasicHudFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define HealthBarAnimation%
  (class Animation%
    (super-new)
    (field [f_basicColorFactory JR.null])
    (field [f_x2 0])
    (field [f_thickness 0])
    (field [f_location 0])
    (field [f_allbinaryLayer JR.null])
    (define/public (jm_onHealthChange_1 _newX2)
    (let ([_quarter JR.null])
      (let/ec jreturn
        (set-field! f_x2 this _newX2)
        (set! _quarter (arithmetic-shift (send (get-field f_allbinaryLayer this) jm_getWidth_0) (- (bitwise-and 2 31))))
        (if (> (get-field f_x2 this) (JR.i32 (* _quarter 3)))
            (begin
            (set-field! f_basicColor this (get-field f_GREEN (get-field f_basicColorFactory this)))
            (set-field! f_colorP this (JR.className (get-field f_basicColor this))))
            (if (> (get-field f_x2 this) (JR.i32 (* _quarter 2)))
            (begin
            (set-field! f_basicColor this (get-field f_YELLOW (get-field f_basicColorFactory this)))
            (set-field! f_colorP this (JR.className (get-field f_basicColor this))))
            (if (> (get-field f_x2 this) _quarter)
            (begin
            (set-field! f_basicColor this (get-field f_ORANGE (get-field f_basicColorFactory this)))
            (set-field! f_colorP this (JR.className (get-field f_basicColor this))))
            (begin
            (set-field! f_basicColor this (get-field f_RED (get-field f_basicColorFactory this)))
            (set-field! f_colorP this (JR.className (get-field f_basicColor this))))))))))
    (define/public (jm_getY_0)
    (let ([_basicHudFactory JR.null])
      (let/ec jreturn
        (set! _basicHudFactory (BasicHudFactory.jm_getInstance_0))
        (if (= (get-field f_location this) (get-field f_TOPLEFT _basicHudFactory))
            (begin
            (jreturn (JR.i32 (- (JR.className (send (get-field f_allbinaryLayer this) jm_getViewPosition_0)) 4))))
            (when (= (get-field f_location this) (get-field f_BOTTOMLEFT _basicHudFactory))
            (begin
            (jreturn (JR.i32 (+ (JR.className (send (get-field f_allbinaryLayer this) jm_getViewPosition_0)) 4))))))
        (jreturn (JR.i32 (- 1))))))))
(define (HealthBarAnimation.jclassValue) HealthBarAnimation%)

(define (HealthBarAnimation.jnew_2 _layerInterface _location)
  (define this (new HealthBarAnimation% [jclass "HealthBarAnimation"]))
    (set-field! f_basicColorFactory this (BasicColorFactory.jm_getInstance_0))
    
    
    
    
    (let ([_basicHudFactory JR.null])
      (let/ec jreturn
        (set-field! f_allbinaryLayer this _layerInterface)
        (set-field! f_location this _location)
        (set! _basicHudFactory (BasicHudFactory.jm_getInstance_0))
        (when (and (not (= (get-field f_location this) (get-field f_TOPLEFT _basicHudFactory))) (not (= (get-field f_location this) (get-field f_BOTTOMLEFT _basicHudFactory))))
            (begin
            (raise (JR.newException "Exception" "Location Not Valid"))))
        (if (> (send _layerInterface jm_getWidth_0) 40)
            (begin
            (set-field! f_thickness this 3))
            (if (> (send _layerInterface jm_getWidth_0) 20)
            (begin
            (set-field! f_thickness this 2))
            (begin
            (set-field! f_thickness this 1))))))
  this)



