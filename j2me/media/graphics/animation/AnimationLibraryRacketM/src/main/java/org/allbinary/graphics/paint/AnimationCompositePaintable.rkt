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
;; package org.allbinary.graphics.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./InitUpdatePaintable.rkt")
(provide (all-defined-out))

(define AnimationCompositePaintable%
  (class InitUpdatePaintable%
    (super-new)
    (field [f_animationInterface JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintXY_3 _graphics 0 0))))
    (define/override (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintThreedXYZ_4 _graphics 0 0 0))))))
(define (AnimationCompositePaintable.jclassValue) AnimationCompositePaintable%)

(define (AnimationCompositePaintable.jnew_1 _animationInterface)
  (define this (new AnimationCompositePaintable% [jclass "AnimationCompositePaintable"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_animationInterface this _animationInterface)))
  this)



