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

(define AdminRoleFactory%
  (class JObject%
    (super-new)
    (field [f_adminRoles JR.null])
    (field [f_storeAdminRoles JR.null])
    (field [f_storeManagementRoles JR.null])
    (field [f_productManagementRoles JR.null])
    (field [f_reviewManagementRoles JR.null])
    (field [f_customerManagementRoles JR.null])
    (field [f_workflowManagementRoles JR.null])
    (field [f_orderManagementRoles JR.null])
    (field [f_adjusterManagementRoles JR.null])
    (field [f_shippingManagementRoles JR.null])
    (field [f_webManagementRoles JR.null])
    (define/public (jm_getProductManagementRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_productManagementRoles this)))))
    (define/public (jm_getAdminRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_adminRoles this)))))
    (define/public (jm_getStoreAdminRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_storeAdminRoles this)))))
    (define/public (jm_getStoreManagementRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_storeManagementRoles this)))))
    (define/public (jm_getReviewManagementRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_reviewManagementRoles this)))))
    (define/public (jm_getCustomerManagementRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_customerManagementRoles this)))))
    (define/public (jm_getWorkflowManagementRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_workflowManagementRoles this)))))
    (define/public (jm_getWebManagementRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_webManagementRoles this)))))
    (define/public (jm_getShippingManagementRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_shippingManagementRoles this)))))
    (define/public (jm_getAdjusterManagementRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_adjusterManagementRoles this)))))
    (define/public (jm_getOrderManagementRoles_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_orderManagementRoles this)))))))
(define (AdminRoleFactory.jclassValue) AdminRoleFactory%)

(define AdminRoleFactory.jcell_instance 'jnone)
(define (AdminRoleFactory.jstatic_instance)
  (when (eq? AdminRoleFactory.jcell_instance 'jnone) (set! AdminRoleFactory.jcell_instance (AdminRoleFactory.jnew_0)))
  AdminRoleFactory.jcell_instance)
(define (AdminRoleFactory.jsetstatic_instance value) (set! AdminRoleFactory.jcell_instance value))

(define (AdminRoleFactory.jnew_0)
  (define this (new AdminRoleFactory% [jclass "AdminRoleFactory"]))
    (set-field! f_adminRoles this (BasicArrayListD.jnew_0))
    (set-field! f_storeAdminRoles this (BasicArrayListD.jnew_0))
    (set-field! f_storeManagementRoles this (BasicArrayListD.jnew_0))
    (set-field! f_productManagementRoles this (BasicArrayListD.jnew_0))
    (set-field! f_reviewManagementRoles this (BasicArrayListD.jnew_0))
    (set-field! f_customerManagementRoles this (BasicArrayListD.jnew_0))
    (set-field! f_workflowManagementRoles this (BasicArrayListD.jnew_0))
    (set-field! f_orderManagementRoles this (BasicArrayListD.jnew_0))
    (set-field! f_adjusterManagementRoles this (BasicArrayListD.jnew_0))
    (set-field! f_shippingManagementRoles this (BasicArrayListD.jnew_0))
    (set-field! f_webManagementRoles this (BasicArrayListD.jnew_0))
    (let ([_basicUserRoleFactory JR.null])
      (let/ec jreturn
        (set! _basicUserRoleFactory (BasicUserRoleFactory.jm_getInstance_0))
        (send (get-field f_adminRoles this) jm_add_1 (get-field f_ADMINISTRATOR _basicUserRoleFactory))
        (send (get-field f_storeAdminRoles this) jm_add_1 (get-field f_ADMINISTRATOR _basicUserRoleFactory))
        (send (get-field f_storeAdminRoles this) jm_add_1 (get-field f_STOREMANAGER _basicUserRoleFactory))
        (send (get-field f_storeManagementRoles this) jm_add_1 (get-field f_ADMINISTRATOR _basicUserRoleFactory))
        (send (get-field f_storeManagementRoles this) jm_add_1 (get-field f_STOREMANAGER _basicUserRoleFactory))
        (send (get-field f_storeManagementRoles this) jm_add_1 (get-field f_CUSTOMERMANAGER _basicUserRoleFactory))
        (send (get-field f_storeManagementRoles this) jm_add_1 (get-field f_ADJUSTER _basicUserRoleFactory))
        (send (get-field f_storeManagementRoles this) jm_add_1 (get-field f_PRODUCTMANAGER _basicUserRoleFactory))
        (send (get-field f_storeManagementRoles this) jm_add_1 (get-field f_REVIEWER _basicUserRoleFactory))
        (send (get-field f_storeManagementRoles this) jm_add_1 (get-field f_SHIPPING _basicUserRoleFactory))
        (send (get-field f_productManagementRoles this) jm_add_1 (get-field f_ADMINISTRATOR _basicUserRoleFactory))
        (send (get-field f_productManagementRoles this) jm_add_1 (get-field f_STOREMANAGER _basicUserRoleFactory))
        (send (get-field f_productManagementRoles this) jm_add_1 (get-field f_PRODUCTMANAGER _basicUserRoleFactory))
        (send (get-field f_reviewManagementRoles this) jm_add_1 (get-field f_ADMINISTRATOR _basicUserRoleFactory))
        (send (get-field f_reviewManagementRoles this) jm_add_1 (get-field f_STOREMANAGER _basicUserRoleFactory))
        (send (get-field f_reviewManagementRoles this) jm_add_1 (get-field f_REVIEWER _basicUserRoleFactory))
        (send (get-field f_customerManagementRoles this) jm_add_1 (get-field f_ADMINISTRATOR _basicUserRoleFactory))
        (send (get-field f_customerManagementRoles this) jm_add_1 (get-field f_STOREMANAGER _basicUserRoleFactory))
        (send (get-field f_customerManagementRoles this) jm_add_1 (get-field f_CUSTOMERMANAGER _basicUserRoleFactory))
        (send (get-field f_workflowManagementRoles this) jm_add_1 (get-field f_ADMINISTRATOR _basicUserRoleFactory))
        (send (get-field f_workflowManagementRoles this) jm_add_1 (get-field f_STOREMANAGER _basicUserRoleFactory))
        (send (get-field f_workflowManagementRoles this) jm_add_1 (get-field f_WORKFLOWEDITOR _basicUserRoleFactory))
        (send (get-field f_orderManagementRoles this) jm_add_1 (get-field f_ADMINISTRATOR _basicUserRoleFactory))
        (send (get-field f_orderManagementRoles this) jm_add_1 (get-field f_STOREMANAGER _basicUserRoleFactory))
        (send (get-field f_adjusterManagementRoles this) jm_add_1 (get-field f_ADMINISTRATOR _basicUserRoleFactory))
        (send (get-field f_adjusterManagementRoles this) jm_add_1 (get-field f_STOREMANAGER _basicUserRoleFactory))
        (send (get-field f_adjusterManagementRoles this) jm_add_1 (get-field f_ADJUSTER _basicUserRoleFactory))
        (send (get-field f_shippingManagementRoles this) jm_add_1 (get-field f_ADMINISTRATOR _basicUserRoleFactory))
        (send (get-field f_shippingManagementRoles this) jm_add_1 (get-field f_STOREMANAGER _basicUserRoleFactory))
        (send (get-field f_shippingManagementRoles this) jm_add_1 (get-field f_SHIPPING _basicUserRoleFactory))
        (send (get-field f_webManagementRoles this) jm_add_1 (get-field f_ADMINISTRATOR _basicUserRoleFactory))
        (send (get-field f_webManagementRoles this) jm_add_1 (get-field f_STOREMANAGER _basicUserRoleFactory))
        (send (get-field f_webManagementRoles this) jm_add_1 (get-field f_WEBMANAGER _basicUserRoleFactory))
        (send (get-field f_webManagementRoles this) jm_add_1 (get-field f_WORKFLOWEDITOR _basicUserRoleFactory))
        (send (get-field f_webManagementRoles this) jm_add_1 (get-field f_VIEWEDITOR _basicUserRoleFactory))))
  this)

(define (AdminRoleFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AdminRoleFactory.jstatic_instance)))))



