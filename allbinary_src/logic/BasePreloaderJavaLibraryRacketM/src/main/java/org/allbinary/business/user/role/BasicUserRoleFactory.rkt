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
(lazy-require ["./BasicUserRole.rkt" (BasicUserRole.jnew_4 BasicUserRole.jnew_5)])
(provide (all-defined-out))

(define BasicUserRoleFactory%
  (class JObject%
    (super-new)
    (field [f_INACTIVITYTIMEOUT 0])
    (field [f_CUSTOMERTIMEOUT 0])
    (field [f_CUSTOMERMAXSESSIONTIME 0])
    (field [f_MAXSESSIONTIME 0])
    (field [f_INSTALLER JR.null])
    (field [f_ADMINISTRATOR JR.null])
    (field [f_CUSTOMER JR.null])
    (field [f_SUBSCRIBERCUSTOMER JR.null])
    (field [f_WHOLESALECUSTOMER JR.null])
    (field [f_STOREMANAGER JR.null])
    (field [f_PRODUCTMANAGER JR.null])
    (field [f_CUSTOMERMANAGER JR.null])
    (field [f_PAYMENTMANAGER JR.null])
    (field [f_ORDERMANAGER JR.null])
    (field [f_WEBMANAGER JR.null])
    (field [f_REVIEWER JR.null])
    (field [f_SHIPPING JR.null])
    (field [f_ADJUSTER JR.null])
    (field [f_WORKFLOWEDITOR JR.null])
    (field [f_WIZARD JR.null])
    (field [f_VIEWEDITOR JR.null])))

(define BasicUserRoleFactory.jcell_instance 'jnone)
(define (BasicUserRoleFactory.jstatic_instance)
  (when (eq? BasicUserRoleFactory.jcell_instance 'jnone) (set! BasicUserRoleFactory.jcell_instance (BasicUserRoleFactory.jnew_0)))
  BasicUserRoleFactory.jcell_instance)

(define (BasicUserRoleFactory.jnew_0)
  (define this (new BasicUserRoleFactory% [jclass "BasicUserRoleFactory"]))
    (set-field! f_INACTIVITYTIMEOUT this 360000000)
    (set-field! f_CUSTOMERTIMEOUT this 360000000)
    (set-field! f_CUSTOMERMAXSESSIONTIME this 360000000)
    (set-field! f_MAXSESSIONTIME this 360000000)
    (set-field! f_INSTALLER this (BasicUserRole.jnew_4 "Installer" 16 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_ADMINISTRATOR this (BasicUserRole.jnew_4 "Administrator" 0 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_CUSTOMER this (BasicUserRole.jnew_5 "CustomerUser" "Customer User" 1 (get-field f_CUSTOMERTIMEOUT this) (get-field f_CUSTOMERMAXSESSIONTIME this)))
    (set-field! f_SUBSCRIBERCUSTOMER this (BasicUserRole.jnew_5 "SubscriberUser" "Subscriber User" 2 (get-field f_CUSTOMERTIMEOUT this) (get-field f_CUSTOMERMAXSESSIONTIME this)))
    (set-field! f_WHOLESALECUSTOMER this (BasicUserRole.jnew_5 "WholesaleUser" "Wholesale User" 3 (get-field f_CUSTOMERTIMEOUT this) (get-field f_CUSTOMERMAXSESSIONTIME this)))
    (set-field! f_STOREMANAGER this (BasicUserRole.jnew_5 "StoreManager" "Store Manager" 4 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_PRODUCTMANAGER this (BasicUserRole.jnew_5 "ProductManager" "Product Manager" 5 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_CUSTOMERMANAGER this (BasicUserRole.jnew_5 "UserManager" "User Manager" 6 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_PAYMENTMANAGER this (BasicUserRole.jnew_5 "PaymentManager" "Payment Manager" 7 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_ORDERMANAGER this (BasicUserRole.jnew_5 "OrderManager" "Order Manager" 8 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_WEBMANAGER this (BasicUserRole.jnew_5 "WebManager" "Web Manager" 9 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_REVIEWER this (BasicUserRole.jnew_4 "Reviewer" 10 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_SHIPPING this (BasicUserRole.jnew_4 "Shipping" 11 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_ADJUSTER this (BasicUserRole.jnew_4 "Adjuster" 12 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_WORKFLOWEDITOR this (BasicUserRole.jnew_5 "WorkFlowEditor" "WorkFlow Editor" 13 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_WIZARD this (BasicUserRole.jnew_5 "WizardUser" "Wizard User" 14 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
    (set-field! f_VIEWEDITOR this (BasicUserRole.jnew_5 "ViewEditor" "View Editor" 15 (get-field f_MAXSESSIONTIME this) (get-field f_INACTIVITYTIMEOUT this)))
  this)

(define (BasicUserRoleFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicUserRoleFactory.jstatic_instance)))))



