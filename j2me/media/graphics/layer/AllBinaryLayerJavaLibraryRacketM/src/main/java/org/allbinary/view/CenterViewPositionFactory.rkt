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
;; package org.allbinary.view

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./CenterStaticViewPositionFactory.rkt")
(provide (all-defined-out))

(define CenterViewPositionFactory%
  (class CenterStaticViewPositionFactory%
    (super-new)))
(define (CenterViewPositionFactory.jclassValue) CenterViewPositionFactory%)

(define (CenterViewPositionFactory.jnew_0)
  (define this (new CenterViewPositionFactory% [jclass "CenterViewPositionFactory"]))
  this)



