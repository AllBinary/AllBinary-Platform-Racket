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
  "./AnimationInterfaceFactoryInterface.rkt")
(lazy-require ["./NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(provide (all-defined-out))

(define AnimationInterfaceFactoryInterfaceComposite%
  (class JObject%
    (super-new)
    (field [f_animationInterfaceFactoryInterfaceArray JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (NullAnimationFactory.jm_getFactoryInstance_0))))))
    (define/public (jm_getAnimationInterfaceFactoryInterfaceArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationInterfaceFactoryInterfaceArray this)))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))))
(define (AnimationInterfaceFactoryInterfaceComposite.jclassValue) AnimationInterfaceFactoryInterfaceComposite%)

(define (AnimationInterfaceFactoryInterfaceComposite.jnew_1 _basicAnimationInterfaceFactoryInterfaceArray)
  (define this (new AnimationInterfaceFactoryInterfaceComposite% [jclass "AnimationInterfaceFactoryInterfaceComposite"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_animationInterfaceFactoryInterfaceArray this _basicAnimationInterfaceFactoryInterfaceArray)))
  this)



