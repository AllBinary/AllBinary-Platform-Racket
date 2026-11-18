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
;; package org.allbinary.init

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define UpdateInterface%
  (class JObject%
    (super-new)
    (define/public (jm_update_0)
      (raise (JR.newException "AbstractMethodError" "update")))))
(define (UpdateInterface.jclassValue) UpdateInterface%)

(define (UpdateInterface.jnew_0)
  (define this (new UpdateInterface% [jclass "UpdateInterface"]))
  this)



