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
(lazy-require ["./OnDemandResources.rkt" (OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES)])
(provide (all-defined-out))

(define OnDemandResourcesFactory%
  (class JObject%
    (super-new)
    (define/public (jm_size_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_remove_1 _layerId)
    (let ()
      (let/ec jreturn
        (jreturn (OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES)))))))
(define (OnDemandResourcesFactory.jclassValue) OnDemandResourcesFactory%)

(define (OnDemandResourcesFactory.jnew_0)
  (define this (new OnDemandResourcesFactory% [jclass "OnDemandResourcesFactory"]))
  this)



