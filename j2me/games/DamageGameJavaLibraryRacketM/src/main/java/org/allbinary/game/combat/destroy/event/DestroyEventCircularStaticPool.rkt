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
;; package org.allbinary.game.combat.destroy.event

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/util/event/AllBinaryEventCircularPool.rkt" (AllBinaryEventCircularPool.jnew_1)])
(lazy-require ["./DestroyEventFactory.rkt" (DestroyEventFactory.jnew_1)])
(provide (all-defined-out))

(define DestroyEventCircularStaticPool%
  (class JObject%
    (super-new)
    (field [f_EVENT_POOL JR.null])
    (define/public (jm_init_1 _combatGameCanvas)
    (let ()
      (let/ec jreturn
        (send (get-field f_EVENT_POOL this) jm_initAllBinaryEventCircularPool_1 (DestroyEventFactory.jnew_1 _combatGameCanvas)))))
    (define/public (jm_getInstanceForLayer_1 _layerInterface)
    (let ([_destroyedEvent JR.null])
      (let/ec jreturn
        (set! _destroyedEvent (send (get-field f_EVENT_POOL this) jm_getNextInstance_0))
        (send _destroyedEvent jm_setLayerInterfaceForCircularStaticPool_1 _layerInterface)
        (jreturn _destroyedEvent))))))
(define (DestroyEventCircularStaticPool.jclassValue) DestroyEventCircularStaticPool%)

(define DestroyEventCircularStaticPool.jcell_instance 'jnone)
(define (DestroyEventCircularStaticPool.jstatic_instance)
  (when (eq? DestroyEventCircularStaticPool.jcell_instance 'jnone) (set! DestroyEventCircularStaticPool.jcell_instance (DestroyEventCircularStaticPool.jnew_0)))
  DestroyEventCircularStaticPool.jcell_instance)
(define (DestroyEventCircularStaticPool.jsetstatic_instance value) (set! DestroyEventCircularStaticPool.jcell_instance value))

(define (DestroyEventCircularStaticPool.jnew_0)
  (define this (new DestroyEventCircularStaticPool% [jclass "DestroyEventCircularStaticPool"]))
    (set-field! f_EVENT_POOL this (AllBinaryEventCircularPool.jnew_1 20))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (DestroyEventCircularStaticPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DestroyEventCircularStaticPool.jstatic_instance)))))



