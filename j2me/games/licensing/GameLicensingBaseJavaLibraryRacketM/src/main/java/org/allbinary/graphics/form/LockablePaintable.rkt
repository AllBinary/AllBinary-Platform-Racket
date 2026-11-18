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
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./ItemPaintable.rkt")
(lazy-require ["../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.rkt" (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/system/security/licensing/LockedResources.rkt" (LockedResources.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/system/security/licensing/LockedUtil.rkt" (LockedUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define LockablePaintable%
  (class ItemPaintable%
    (super-new)
    (field [f_animation JR.null])
    (field [f_lockedIndex 0])
    (define/override (jm_paint_4 _graphics _currentIndex _x _y)
    (let ()
      (let/ec jreturn
        (when (and (send (LockedUtil.jm_getInstance_0) jm_isLocked_0) (>= _currentIndex (send this jm_getLockedIndex_0)))
            (begin
            (send (send this jm_getAnimation_0) jm_paintXY_3 _graphics _x _y))))))
    (define/public (jm_getLockedIndex_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_lockedIndex this)))))
    (define/public (jm_getAnimation_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animation this)))))))
(define (LockablePaintable.jclassValue) LockablePaintable%)

(define (LockablePaintable.jnew_1 _lockedIndex)
  (define this (new LockablePaintable% [jclass "LockablePaintable"]))
    (set-field! f_animation this (JR.className (send (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) jm_get_1 (get-field f_LOCKED_DEMO_GAME_FEATURE_RESOURCE (LockedResources.jm_getInstance_0)))))
    
    (let ()
      (let/ec jreturn
        (set-field! f_lockedIndex this _lockedIndex)))
  this)



