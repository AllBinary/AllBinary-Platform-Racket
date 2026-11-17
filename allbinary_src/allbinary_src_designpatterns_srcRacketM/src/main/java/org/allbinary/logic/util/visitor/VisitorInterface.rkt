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
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define VisitorInterface%
  (class JObject%
    (super-new)
    (define/public (jm_visit_1 _anyType)
      (raise (JR.newException "AbstractMethodError" "visit")))))

(define (VisitorInterface.jnew_0)
  (define this (new VisitorInterface% [jclass "VisitorInterface"]))
  this)



