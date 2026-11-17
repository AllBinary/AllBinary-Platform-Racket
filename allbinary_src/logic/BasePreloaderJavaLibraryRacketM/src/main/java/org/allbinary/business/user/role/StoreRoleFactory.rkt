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
;; package org.allbinary.business.user.role

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./BasicUserRoleFactory.rkt" (BasicUserRoleFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define StoreRoleFactory%
  (class JObject%
    (super-new)
    (field [f_roles JR.null])
    (field [f_subscriberRoles JR.null])
    (field [f_wholesaleRoles JR.null])
    (define/public (jm_getRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_roles this)))))
    (define/public (jm_getSubscriberRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_subscriberRoles this)))))
    (define/public (jm_getWholesaleRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_wholesaleRoles this)))))))

(define StoreRoleFactory.jcell_instance 'jnone)
(define (StoreRoleFactory.jstatic_instance)
  (when (eq? StoreRoleFactory.jcell_instance 'jnone) (set! StoreRoleFactory.jcell_instance (StoreRoleFactory.jnew_0)))
  StoreRoleFactory.jcell_instance)

(define (StoreRoleFactory.jnew_0)
  (define this (new StoreRoleFactory% [jclass "StoreRoleFactory"]))
    (set-field! f_roles this (BasicArrayListD.jnew_0))
    (set-field! f_subscriberRoles this (BasicArrayListD.jnew_0))
    (set-field! f_wholesaleRoles this (BasicArrayListD.jnew_0))
    (let ([_basicUserRoleFactory JR.null])
      (let/ec jreturn
        (set! _basicUserRoleFactory (BasicUserRoleFactory.jm_getInstance_0))
        (send (get-field f_roles this) jm_add_1 (get-field f_CUSTOMER _basicUserRoleFactory))
        (send (get-field f_roles this) jm_add_1 (get-field f_SUBSCRIBERCUSTOMER _basicUserRoleFactory))
        (send (get-field f_roles this) jm_add_1 (get-field f_WHOLESALECUSTOMER _basicUserRoleFactory))
        (send (get-field f_subscriberRoles this) jm_add_1 (get-field f_SUBSCRIBERCUSTOMER _basicUserRoleFactory))
        (send (get-field f_wholesaleRoles this) jm_add_1 (get-field f_WHOLESALECUSTOMER _basicUserRoleFactory))))
  this)

(define (StoreRoleFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (StoreRoleFactory.jstatic_instance)))))



