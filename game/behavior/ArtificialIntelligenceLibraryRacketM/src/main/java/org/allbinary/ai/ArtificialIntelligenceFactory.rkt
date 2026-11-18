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
;; package org.allbinary.ai

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./ArtificialIntelligenceFactoryInterface.rkt")
(provide (all-defined-out))

(define ArtificialIntelligenceFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_1 _anyType)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))))
(define (ArtificialIntelligenceFactory.jclassValue) ArtificialIntelligenceFactory%)

(define (ArtificialIntelligenceFactory.jnew_0)
  (define this (new ArtificialIntelligenceFactory% [jclass "ArtificialIntelligenceFactory"]))
  this)



