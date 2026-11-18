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
;; package org.allbinary.game.layer.resources

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define OnDemandResources%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_waitFor_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_initAt_5 _imageCache _resourceAnimationInterfaceFactoryInterfaceFactory _portion _loadingString _index)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (OnDemandResources.jclassValue) OnDemandResources%)

(define OnDemandResources.jcell_NULL_ON_DEMAND_RESOURCES 'jnone)
(define (OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES)
  (when (eq? OnDemandResources.jcell_NULL_ON_DEMAND_RESOURCES 'jnone) (set! OnDemandResources.jcell_NULL_ON_DEMAND_RESOURCES (OnDemandResources.jnew_0)))
  OnDemandResources.jcell_NULL_ON_DEMAND_RESOURCES)
(define (OnDemandResources.jsetstatic_NULL_ON_DEMAND_RESOURCES value) (set! OnDemandResources.jcell_NULL_ON_DEMAND_RESOURCES value))

(define (OnDemandResources.jnew_0)
  (define this (new OnDemandResources% [jclass "OnDemandResources"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)



