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
;; package org.allbinary.game.ag.ai

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/ai/ArtificialIntelligence.rkt")
(provide (all-defined-out))

(define NullAI%
  (class ArtificialIntelligence%
    (super-new)
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn (void))))))
(define (NullAI.jclassValue) NullAI%)

(define (NullAI.jnew_0)
  (define this (new NullAI% [jclass "NullAI"]))
    (let ()
      (let/ec jreturn (void)))
  this)



