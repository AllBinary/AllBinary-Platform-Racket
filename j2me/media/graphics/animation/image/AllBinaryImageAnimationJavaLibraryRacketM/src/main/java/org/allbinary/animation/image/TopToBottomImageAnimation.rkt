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
(provide (all-defined-out))

(define TopToBottomImageAnimation%
  (class ImageSegmentAnimation%
    (super-new)
    (field [f_currentHeight 0])
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (if (eq? (vector-ref (send this jm_getSequence_0) 0) (JR.i32 (- 1)))
            (begin
            (super jm_previousFrame_0))
            (begin
            (super jm_nextFrame_0)))
        (send this jm_update_0))))
    (define/override (jm_previousFrame_0)
    (let ()
      (let/ec jreturn
        (if (eq? (vector-ref (send this jm_getSequence_0) 0) (JR.i32 (- 1)))
            (begin
            (super jm_nextFrame_0))
            (begin
            (super jm_previousFrame_0)))
        (send this jm_update_0))))
    (define/override (jm_setFrame_1 _index)
    (let ()
      (let/ec jreturn
        (super jm_setFrame_1 _index)
        (send this jm_update_0))))
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn
        (set-field! f_currentHeight this (JR.idiv (JR.i32 (* (send this jm_getDrawHeight_0) (send this jm_getFrame_0))) (send this jm_getSize_0))))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send _graphics jm_drawRegion_9 (send this jm_getImage_0) (send this jm_getStartX_0) (send this jm_getStartY_0) (send this jm_getDrawWidth_0) (get-field f_currentHeight this) (Sprite.jstatic_TRANS_NONE) _x _y (get-field f_anchor this)))))))
(define (TopToBottomImageAnimation.jclassValue) TopToBottomImageAnimation%)

(define (TopToBottomImageAnimation.jnew_3 _image _sequenceArray _animationBehavior)
  (define this (new TopToBottomImageAnimation% [jclass "TopToBottomImageAnimation"]))
    
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_currentHeight this 0)
        (when (eq? (vector-ref (send this jm_getSequence_0) 0) (JR.i32 (- 1)))
            (begin
            (send this jm_setFrame_1 (JR.i32 (- (send this jm_getSize_0) 1)))))))
  this)



