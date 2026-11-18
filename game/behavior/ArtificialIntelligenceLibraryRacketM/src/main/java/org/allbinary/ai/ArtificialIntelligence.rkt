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
;; package org.allbinary.ai

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./ArtificialIntelligenceInterface.rkt")
(provide (all-defined-out))

(define ArtificialIntelligence%
  (class JObject%
    (super-new)
    (define/public (jm_processAI_1 _layerManager)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getId_0)
    (let ()
      (let/ec jreturn
        (jreturn 1))))))
(define (ArtificialIntelligence.jclassValue) ArtificialIntelligence%)

(define ArtificialIntelligence.jcell_AI_ID 'jnone)
(define (ArtificialIntelligence.jstatic_AI_ID)
  (when (eq? ArtificialIntelligence.jcell_AI_ID 'jnone) (set! ArtificialIntelligence.jcell_AI_ID 2))
  ArtificialIntelligence.jcell_AI_ID)
(define (ArtificialIntelligence.jsetstatic_AI_ID value) (set! ArtificialIntelligence.jcell_AI_ID value))

(define ArtificialIntelligence.jcell_instance 'jnone)
(define (ArtificialIntelligence.jstatic_instance)
  (when (eq? ArtificialIntelligence.jcell_instance 'jnone) (set! ArtificialIntelligence.jcell_instance (ArtificialIntelligence.jnew_0)))
  ArtificialIntelligence.jcell_instance)
(define (ArtificialIntelligence.jsetstatic_instance value) (set! ArtificialIntelligence.jcell_instance value))

(define (ArtificialIntelligence.jnew_0)
  (define this (new ArtificialIntelligence% [jclass "ArtificialIntelligence"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ArtificialIntelligence.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ArtificialIntelligence.jstatic_instance)))))



