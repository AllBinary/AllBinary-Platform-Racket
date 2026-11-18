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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./DemoPaintableInterface.rkt")
(provide (all-defined-out))

(define NullDemoPaintable%
  (class JObject%
    (super-new)
    (define/public (jm_showGamePaintable_0)
    (let ()
      (let/ec jreturn (void))))))
(define (NullDemoPaintable.jclassValue) NullDemoPaintable%)

(define NullDemoPaintable.jcell_NULL_DEMO_PAINTABLE 'jnone)
(define (NullDemoPaintable.jstatic_NULL_DEMO_PAINTABLE)
  (when (eq? NullDemoPaintable.jcell_NULL_DEMO_PAINTABLE 'jnone) (set! NullDemoPaintable.jcell_NULL_DEMO_PAINTABLE (NullDemoPaintable.jnew_0)))
  NullDemoPaintable.jcell_NULL_DEMO_PAINTABLE)
(define (NullDemoPaintable.jsetstatic_NULL_DEMO_PAINTABLE value) (set! NullDemoPaintable.jcell_NULL_DEMO_PAINTABLE value))

(define (NullDemoPaintable.jnew_0)
  (define this (new NullDemoPaintable% [jclass "NullDemoPaintable"]))
  this)



