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
;; package org.allbinary.logic.io

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define AbIOSystem%
  (class JObject%
    (super-new)
    (field [f_type JR.null])
    (define/public (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_type this)))))
    (define/public (jm_isType_1 _type)
    (let ()
      (let/ec jreturn
        (if (eq? (JR.compareTo (get-field f_type this) _type) 0)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))))
(define (AbIOSystem.jclassValue) AbIOSystem%)

(define AbIOSystem.jcell_instance 'jnone)
(define (AbIOSystem.jstatic_instance)
  (when (eq? AbIOSystem.jcell_instance 'jnone) (set! AbIOSystem.jcell_instance (AbIOSystem.jnew_0)))
  AbIOSystem.jcell_instance)
(define (AbIOSystem.jsetstatic_instance value) (set! AbIOSystem.jcell_instance value))

(define (AbIOSystem.jnew_0)
  (define this (new AbIOSystem% [jclass "AbIOSystem"]))
    (set-field! f_type this "java.io")
  this)

(define (AbIOSystem.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AbIOSystem.jstatic_instance)))))



