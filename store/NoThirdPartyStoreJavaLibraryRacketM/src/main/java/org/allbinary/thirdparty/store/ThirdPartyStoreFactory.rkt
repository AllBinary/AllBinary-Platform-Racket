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
;; package org.allbinary.thirdparty.store

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./NoThirdPartyStore.rkt" (NoThirdPartyStore.jnew_0)])
(provide (all-defined-out))

(define ThirdPartyStoreFactory%
  (class JObject%
    (super-new)))
(define (ThirdPartyStoreFactory.jclassValue) ThirdPartyStoreFactory%)

(define ThirdPartyStoreFactory.jcell_instance 'jnone)
(define (ThirdPartyStoreFactory.jstatic_instance)
  (when (eq? ThirdPartyStoreFactory.jcell_instance 'jnone) (set! ThirdPartyStoreFactory.jcell_instance (NoThirdPartyStore.jnew_0)))
  ThirdPartyStoreFactory.jcell_instance)
(define (ThirdPartyStoreFactory.jsetstatic_instance value) (set! ThirdPartyStoreFactory.jcell_instance value))

(define (ThirdPartyStoreFactory.jnew_0)
  (define this (new ThirdPartyStoreFactory% [jclass "ThirdPartyStoreFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ThirdPartyStoreFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ThirdPartyStoreFactory.jstatic_instance)))))



