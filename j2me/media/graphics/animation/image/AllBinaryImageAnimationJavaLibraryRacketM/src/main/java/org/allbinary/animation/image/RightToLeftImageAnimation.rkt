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
;; package org.allbinary.animation.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./ImageSegmentAnimation.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/game/Sprite.rkt" (Sprite.jstatic_TRANS_NONE)])
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(provide (all-defined-out))

(define RightToLeftImageAnimation%
  (class ImageSegmentAnimation%
    (super-new)
    (field [f_startWidth 0])
    (field [f_currentWidth 0])
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (super jm_previousFrame_0)
        (send this jm_update_0))))
    (define/override (jm_previousFrame_0)
    (let ()
      (let/ec jreturn
        (super jm_nextFrame_0)
        (send this jm_update_0))))
    (define/override (jm_setFrame_1 _index)
    (let ()
      (let/ec jreturn
        (super jm_setFrame_1 _index)
        (send this jm_update_0))))
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn
        (set-field! f_startWidth this (JR.idiv (JR.i32 (* (send this jm_getDrawWidth_0) (send this jm_getFrame_0))) (send this jm_getSize_0)))
        (set-field! f_currentWidth this (JR.i32 (- (send this jm_getDrawWidth_0) (get-field f_startWidth this)))))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send _graphics jm_drawRegion_9 (send this jm_getImage_0) (get-field f_startWidth this) (send this jm_getStartY_0) (get-field f_currentWidth this) (send this jm_getDrawHeight_0) (Sprite.jstatic_TRANS_NONE) (JR.i32 (+ _x (get-field f_startWidth this))) _y (get-field f_anchor this)))))))
(define (RightToLeftImageAnimation.jclassValue) RightToLeftImageAnimation%)

(define (RightToLeftImageAnimation.jnew_2 _image _animationBehavior)
  (define this (new RightToLeftImageAnimation% [jclass "RightToLeftImageAnimation"]))
    
    
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setFrame_1 (JR.i32 (- (send this jm_getSize_0) 1)))))
  this)



