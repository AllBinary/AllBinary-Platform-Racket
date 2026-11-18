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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../javax/microedition/lcdui/Graphics.rkt" (Graphics.jstatic_TOP Graphics.jstatic_LEFT)])
(provide (all-defined-out))

(define Anchor%
  (class JObject%
    (super-new)))
(define (Anchor.jclassValue) Anchor%)

(define Anchor.jcell_TOP_LEFT 'jnone)
(define (Anchor.jstatic_TOP_LEFT)
  (when (eq? Anchor.jcell_TOP_LEFT 'jnone) (set! Anchor.jcell_TOP_LEFT (bitwise-and (Graphics.jstatic_TOP) (Graphics.jstatic_LEFT))))
  Anchor.jcell_TOP_LEFT)
(define (Anchor.jsetstatic_TOP_LEFT value) (set! Anchor.jcell_TOP_LEFT value))

(define (Anchor.jnew_0)
  (define this (new Anchor% [jclass "Anchor"]))
  this)



