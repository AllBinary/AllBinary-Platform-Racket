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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./Animation.rkt"
  "./IndexedAnimationInterface.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define IndexedAnimation%
  (class Animation%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_animationBehaviorP JR.null])
    (define/public (jm_getAnimationBehavior_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationBehaviorP this)))))
    (define/public (jm_reset_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationBehaviorP this) jm_reset_0)
        (send this jm_setFrame_1 0))))
    (define/public (jm_setFrame_1 _index)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_getAnimationSize_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_previousFrame_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isLastFrame_0)
    (let ()
      (let/ec jreturn
        (if (= (send this jm_getFrame_0) (JR.i32 (- (send this jm_getSize_0) 1)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_setSequence_1 _sequence)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getSequence_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))
    (define/public (jm_setState_1 _indexedAnimation)
    (let ()
      (let/ec jreturn
        (send this jm_setFrame_1 (send _indexedAnimation jm_getFrame_0))
        (send this jm_setDx_1 (send _indexedAnimation jm_getDx_0))
        (send this jm_setDy_1 (send _indexedAnimation jm_getDy_0)))))
    (define/public (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_getHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (IndexedAnimation.jclassValue) IndexedAnimation%)

(define (IndexedAnimation.jnew_1 _animationBehavior)
  (define this (new IndexedAnimation% [jclass "IndexedAnimation"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_animationBehaviorP this _animationBehavior)))
  this)



