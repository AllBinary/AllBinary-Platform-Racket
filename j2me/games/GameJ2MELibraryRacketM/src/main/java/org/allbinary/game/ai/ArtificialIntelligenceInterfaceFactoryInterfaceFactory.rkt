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
;; package org.allbinary.game.ai

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(lazy-require ["./BasicAI.rkt" (BasicAI.jstatic_ID)])
(provide (all-defined-out))

(define ArtificialIntelligenceInterfaceFactoryInterfaceFactory%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (set-field! f_list this (BasicArrayListD.jnew_0)))))
    (define/public (jm_getInstanceFromCollection_1 _hashtable)
    (let ([_typeInteger JR.null][_type JR.null][_artificialIntelligenceInterfaceFactoryInterface JR.null])
      (let/ec jreturn
        (set! _typeInteger (send _hashtable jm_get_1 (BasicAI.jstatic_ID)))
        (set! _type (send _typeInteger jm_intValue_0))
        (set! _artificialIntelligenceInterfaceFactoryInterface (vector-ref (get-field f_objectArray (get-field f_list this)) (JR.i32 (- _type 1))))
        (jreturn _artificialIntelligenceInterfaceFactoryInterface))))
    (define/public (jm_add_1 _artificialIntelligenceInterfaceFactoryInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_add_1 _artificialIntelligenceInterfaceFactoryInterface))))))
(define (ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jclassValue) ArtificialIntelligenceInterfaceFactoryInterfaceFactory%)

(define ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jcell_SINGLETON 'jnone)
(define (ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jstatic_SINGLETON)
  (when (eq? ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jcell_SINGLETON 'jnone) (set! ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jcell_SINGLETON (ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jnew_0)))
  ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jcell_SINGLETON)
(define (ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jsetstatic_SINGLETON value) (set! ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jcell_SINGLETON value))

(define (ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jnew_0)
  (define this (new ArtificialIntelligenceInterfaceFactoryInterfaceFactory% [jclass "ArtificialIntelligenceInterfaceFactoryInterfaceFactory"]))
    (set-field! f_list this (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))
  this)

(define (ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jstatic_SINGLETON)))))



