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
;; package org.allbinary.midlet

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define MidletIcon%
  (class JObject%
    (super-new)))
(define (MidletIcon.jclassValue) MidletIcon%)

(define MidletIcon.jcell_RESOURCE 'jnone)
(define (MidletIcon.jstatic_RESOURCE)
  (when (eq? MidletIcon.jcell_RESOURCE 'jnone) (set! MidletIcon.jcell_RESOURCE "icon"))
  MidletIcon.jcell_RESOURCE)
(define (MidletIcon.jsetstatic_RESOURCE value) (set! MidletIcon.jcell_RESOURCE value))

(define (MidletIcon.jnew_0)
  (define this (new MidletIcon% [jclass "MidletIcon"]))
  this)



