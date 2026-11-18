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
;; package org.allbinary.logic.util.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./EventListenerInterface.rkt")
(provide (all-defined-out))

(define BasicEventListenerInterface%
  (class JObject%
    (super-new)))
(define (BasicEventListenerInterface.jclassValue) BasicEventListenerInterface%)

(define (BasicEventListenerInterface.jnew_0)
  (define this (new BasicEventListenerInterface% [jclass "BasicEventListenerInterface"]))
  this)



