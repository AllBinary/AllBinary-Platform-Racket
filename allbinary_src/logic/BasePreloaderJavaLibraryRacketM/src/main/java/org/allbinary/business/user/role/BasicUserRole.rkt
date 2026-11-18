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
  "../../../../../allbinary_java.rkt"
  "../../../../../java/io/Serializable.rkt")
(lazy-require ["./BasicUserRoles.rkt" (BasicUserRoles.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicUserRole%
  (class JObject%
    (super-new)
    (field [f_m_int_RoleId 0])
    (field [f_role JR.null])
    (field [f_displayValue JR.null])
    (field [f_sessionTimeout 0])
    (field [f_sessionInactivityTimeout 0])
    (define/public (jm_getRoleId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_m_int_RoleId this)))))
    (define/public (jm_getRole_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_role this)))))
    (define/public (jm_getSessionTimeout_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_sessionTimeout this)))))
    (define/public (jm_getSessionInactivityTimeout_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_sessionInactivityTimeout this)))))
    (define/override (jm_equals_1 _basicUserRole)
    (let ()
      (let/ec jreturn
        (when (= (send this jm_getRoleId_0) (send _basicUserRole jm_getRoleId_0))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getRole_0)))))))
(define (BasicUserRole.jclassValue) BasicUserRole%)

(define (BasicUserRole.jnew_4 _aRole _a_int_RoleId _aSessionTimeout _aSessionInactivityTimeout)
  (define this (new BasicUserRole% [jclass "BasicUserRole"]))
    
    
    
    
    
    (let ()
      (let/ec jreturn
        (set! this (BasicUserRole.jnew_5 _aRole _aRole _a_int_RoleId _aSessionTimeout _aSessionInactivityTimeout))))
  this)

(define (BasicUserRole.jnew_5 _aRole _aDisplayValue _a_int_RoleId _aSessionTimeout _aSessionInactivityTimeout)
  (define this (new BasicUserRole% [jclass "BasicUserRole"]))
    
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_m_int_RoleId this _a_int_RoleId)
        (set-field! f_role this _aRole)
        (set-field! f_displayValue this _aDisplayValue)
        (set-field! f_sessionTimeout this _aSessionTimeout)
        (set-field! f_sessionInactivityTimeout this _aSessionInactivityTimeout)
        (JR.className (get-field f_roleVector (BasicUserRoles.jm_getInstance_0)))))
  this)



