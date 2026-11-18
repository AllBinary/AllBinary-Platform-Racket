#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary

(require racket/class racket/lazy-require
  "../../allbinary_java.rkt")
(provide (all-defined-out))

(define ThreedResources%
  (class JObject%
    (super-new)
    (define/public (jm_add_0)
    (let ()
      (let/ec jreturn (void))))))
(define (ThreedResources.jclassValue) ThreedResources%)

(define ThreedResources.jcell_threedResources 'jnone)
(define (ThreedResources.jstatic_threedResources)
  (when (eq? ThreedResources.jcell_threedResources 'jnone) (set! ThreedResources.jcell_threedResources (ThreedResources.jnew_0)))
  ThreedResources.jcell_threedResources)
(define (ThreedResources.jsetstatic_threedResources value) (set! ThreedResources.jcell_threedResources value))

(define (ThreedResources.jnew_0)
  (define this (new ThreedResources% [jclass "ThreedResources"]))
  this)

(define (ThreedResources.jm_getThreedResources_0)
    (let ()
      (let/ec jreturn
        (jreturn (ThreedResources.jstatic_threedResources)))))



