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
;; package org.allbinary.game.ag.layer.pickup.points

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/layer/AllBinaryLayer.rkt")
(lazy-require ["../../../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/view/ViewPosition.rkt" (ViewPosition.jm_getInstanceD_0)])
(provide (all-defined-out))

(define PointsLayer%
  (class AllBinaryLayer%
    (super-new)
    (field [f_points 0])
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_visit_1 _scoreableInterface)
    (let ()
      (let/ec jreturn
        (send _scoreableInterface jm_addPoints_1 (get-field f_points this)))))))
(define (PointsLayer.jclassValue) PointsLayer%)

(define (PointsLayer.jnew_1 _points)
  (define this (new PointsLayer% [jclass "PointsLayer"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_points this _points)))
  this)



