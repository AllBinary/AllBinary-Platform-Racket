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
  "./HealthBarAnimation.rkt")
(provide (all-defined-out))

(define HealthBarTwodAnimation%
  (class HealthBarAnimation%
    (super-new)
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ([_ax JR.null])
      (let/ec jreturn
        (set! _ax (JR.className (JR.className (get-field f_allbinaryLayer this))))
        (JR.className (get-field f_basicSetColorUtil this))
        (send _graphics jm_fillRect_4 _ax (JR.i32 (- (send this jm_getY_0) 1)) (get-field f_x2 this) (get-field f_thickness this)))))))
(define (HealthBarTwodAnimation.jclassValue) HealthBarTwodAnimation%)

(define (HealthBarTwodAnimation.jnew_2 _layerInterface _location)
  (define this (new HealthBarTwodAnimation% [jclass "HealthBarTwodAnimation"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



