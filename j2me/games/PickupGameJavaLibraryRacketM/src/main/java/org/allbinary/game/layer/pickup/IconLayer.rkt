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
;; package org.allbinary.game.layer.pickup

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/layer/AllBinaryLayer.rkt")
(lazy-require ["../../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/view/ViewPosition.rkt" (ViewPosition.jm_getInstanceD_0)])
(provide (all-defined-out))

(define IconLayer%
  (class AllBinaryLayer%
    (super-new)
    (field [f_animationInterface JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintXY_3 _graphics (get-field f_x this) (get-field f_y this)))))
    (define/override (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintThreedXYZ_4 _graphics (get-field f_x this) (get-field f_y this) (get-field f_z this)))))
    (define/public (jm_getAnimationInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationInterface this)))))))
(define (IconLayer.jclassValue) IconLayer%)

(define IconLayer.jcell_NULL_ICON_LAYER 'jnone)
(define (IconLayer.jstatic_NULL_ICON_LAYER)
  (when (eq? IconLayer.jcell_NULL_ICON_LAYER 'jnone) (set! IconLayer.jcell_NULL_ICON_LAYER (IconLayer.jnew_3 (JR.className (NullAnimationFactory.jm_getFactoryInstance_0)) 0 0)))
  IconLayer.jcell_NULL_ICON_LAYER)
(define (IconLayer.jsetstatic_NULL_ICON_LAYER value) (set! IconLayer.jcell_NULL_ICON_LAYER value))

(define (IconLayer.jnew_3 _animationInterface _width _height)
  (define this (new IconLayer% [jclass "IconLayer"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_animationInterface this _animationInterface)))
  this)



