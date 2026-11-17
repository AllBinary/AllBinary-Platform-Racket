#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2026 AllBinary 
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
(provide (all-defined-out))

(define BasicUserRoles%
  (class JObject%
    (super-new)
    (field [f_roleVector JR.null])
    (define/public (jm_getRole_1 _role)
    (let ([_roleVector JR.null][_size JR.null][_userRole JR.null][_index JR.null])
      (let/ec jreturn
        (set! _roleVector (send this jm_getAll_0))
        (set! _size (send _roleVector jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _userRole (send _roleVector jm_get_1 _index))
            (when (eq? (JR.compareTo _role (send _userRole jm_toString_0)) 0)
                (begin
                (jreturn _userRole))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (raise (JR.newException "Exception" "Unable to get role - Unknown Role")))))
    (define/public (jm_getAll_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_roleVector this)))))))

(define BasicUserRoles.jcell_instance 'jnone)
(define (BasicUserRoles.jstatic_instance)
  (when (eq? BasicUserRoles.jcell_instance 'jnone) (set! BasicUserRoles.jcell_instance (BasicUserRoles.jnew_0)))
  BasicUserRoles.jcell_instance)

(define (BasicUserRoles.jnew_0)
  (define this (new BasicUserRoles% [jclass "BasicUserRoles"]))
    (set-field! f_roleVector this (BasicArrayListD.jnew_0))
  this)

(define (BasicUserRoles.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicUserRoles.jstatic_instance)))))



