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
;; package org.allbinary.logic.util.visitor

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./VisitorInterface.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define Visitor%
  (class JObject%
    (super-new)
    (field [f_nullUtil JR.null])
    (define/public (jm_visit_1 _anyType)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_OBJECT (get-field f_nullUtil this))))))))
(define (Visitor.jclassValue) Visitor%)

(define Visitor.jcell_instance 'jnone)
(define (Visitor.jstatic_instance)
  (when (eq? Visitor.jcell_instance 'jnone) (set! Visitor.jcell_instance (Visitor.jnew_0)))
  Visitor.jcell_instance)
(define (Visitor.jsetstatic_instance value) (set! Visitor.jcell_instance value))

(define (Visitor.jnew_0)
  (define this (new Visitor% [jclass "Visitor"]))
    (set-field! f_nullUtil this (NullUtil.jm_getInstance_0))
  this)

(define (Visitor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (Visitor.jstatic_instance)))))



