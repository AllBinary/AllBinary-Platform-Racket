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
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/game/ag/life/LifeVisitorInterface.rkt"
  "../../../../../../../org/allbinary/layer/AllBinaryLayer.rkt")
(lazy-require ["../../../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/view/ViewPosition.rkt" (ViewPosition.jm_getInstanceD_0)])
(provide (all-defined-out))

(define LifeLayer%
  (class AllBinaryLayer%
    (super-new)
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_visit_1 _lifeInterface)
    (let ()
      (let/ec jreturn
        (send _lifeInterface jm_add_1 (JR.i16 1)))))))
(define (LifeLayer.jclassValue) LifeLayer%)

(define (LifeLayer.jnew_0)
  (define this (new LifeLayer% [jclass "LifeLayer"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



