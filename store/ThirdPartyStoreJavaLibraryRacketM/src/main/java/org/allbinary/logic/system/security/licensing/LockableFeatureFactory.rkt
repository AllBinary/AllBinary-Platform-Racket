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
;; package org.allbinary.logic.system.security.licensing

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define LockableFeatureFactory%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))))
(define (LockableFeatureFactory.jclassValue) LockableFeatureFactory%)

(define LockableFeatureFactory.jcell_instance 'jnone)
(define (LockableFeatureFactory.jstatic_instance)
  (when (eq? LockableFeatureFactory.jcell_instance 'jnone) (set! LockableFeatureFactory.jcell_instance (LockableFeatureFactory.jnew_0)))
  LockableFeatureFactory.jcell_instance)
(define (LockableFeatureFactory.jsetstatic_instance value) (set! LockableFeatureFactory.jcell_instance value))

(define (LockableFeatureFactory.jnew_0)
  (define this (new LockableFeatureFactory% [jclass "LockableFeatureFactory"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
  this)

(define (LockableFeatureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LockableFeatureFactory.jstatic_instance)))))



