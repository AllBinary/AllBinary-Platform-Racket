#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.game.health

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./HealthListenerInterface.rkt")
(provide (all-defined-out))

(define NullHealthListener%
  (class JObject%
    (super-new)
    (define/public (jm_onHealthChange_0)
    (let ()
      (let/ec jreturn (void))))))
(define (NullHealthListener.jclassValue) NullHealthListener%)

(define NullHealthListener.jcell_NULL_HEALTH_LISTENER 'jnone)
(define (NullHealthListener.jstatic_NULL_HEALTH_LISTENER)
  (when (eq? NullHealthListener.jcell_NULL_HEALTH_LISTENER 'jnone) (set! NullHealthListener.jcell_NULL_HEALTH_LISTENER (NullHealthListener.jnew_0)))
  NullHealthListener.jcell_NULL_HEALTH_LISTENER)
(define (NullHealthListener.jsetstatic_NULL_HEALTH_LISTENER value) (set! NullHealthListener.jcell_NULL_HEALTH_LISTENER value))

(define (NullHealthListener.jnew_0)
  (define this (new NullHealthListener% [jclass "NullHealthListener"]))
  this)



