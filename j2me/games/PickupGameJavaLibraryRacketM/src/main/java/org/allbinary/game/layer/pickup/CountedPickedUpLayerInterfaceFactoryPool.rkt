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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define CountedPickedUpLayerInterfaceFactoryPool%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))))
(define (CountedPickedUpLayerInterfaceFactoryPool.jclassValue) CountedPickedUpLayerInterfaceFactoryPool%)

(define CountedPickedUpLayerInterfaceFactoryPool.jcell_SINGLETON 'jnone)
(define (CountedPickedUpLayerInterfaceFactoryPool.jstatic_SINGLETON)
  (when (eq? CountedPickedUpLayerInterfaceFactoryPool.jcell_SINGLETON 'jnone) (set! CountedPickedUpLayerInterfaceFactoryPool.jcell_SINGLETON (CountedPickedUpLayerInterfaceFactoryPool.jnew_0)))
  CountedPickedUpLayerInterfaceFactoryPool.jcell_SINGLETON)
(define (CountedPickedUpLayerInterfaceFactoryPool.jsetstatic_SINGLETON value) (set! CountedPickedUpLayerInterfaceFactoryPool.jcell_SINGLETON value))

(define (CountedPickedUpLayerInterfaceFactoryPool.jnew_0)
  (define this (new CountedPickedUpLayerInterfaceFactoryPool% [jclass "CountedPickedUpLayerInterfaceFactoryPool"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_list this (BasicArrayListD.jnew_0))))
  this)

(define (CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CountedPickedUpLayerInterfaceFactoryPool.jstatic_SINGLETON)))))

(define (CountedPickedUpLayerInterfaceFactoryPool.jm_init_0)
    (let ()
      (let/ec jreturn
        (set! CountedPickedUpLayerInterfaceFactoryPool.jcell_SINGLETON (CountedPickedUpLayerInterfaceFactoryPool.jnew_0)))))



