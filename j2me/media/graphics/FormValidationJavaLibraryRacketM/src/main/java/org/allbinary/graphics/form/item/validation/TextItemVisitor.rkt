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
;; package org.allbinary.graphics.form.item.validation

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/visitor/Visitor.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/java/bool/BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define TextItemVisitor%
  (class Visitor%
    (super-new)
    (define/override (jm_visit_1 _anyType)
    (let ([_value JR.null])
      (let/ec jreturn
        (set! _value _anyType)
        (if (< (string-length _value) 2)
            (begin
            (jreturn (get-field f_TRUE (BooleanFactory.jm_getInstance_0))))
            (begin
            (jreturn (get-field f_FALSE (BooleanFactory.jm_getInstance_0))))))))))
(define (TextItemVisitor.jclassValue) TextItemVisitor%)

(define (TextItemVisitor.jnew_0)
  (define this (new TextItemVisitor% [jclass "TextItemVisitor"]))
    (let ()
      (let/ec jreturn (void)))
  this)



