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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./J2MEGameInputMapping.rkt")
(lazy-require ["./NormalJ2MEDefaultGameInputMapping.rkt" (NormalJ2MEDefaultGameInputMapping.jnew_0)])
(provide (all-defined-out))

(define NormalJ2MEGameInputMapping%
  (class J2MEGameInputMapping%
    (super-new)
    (define/override (jm_getDefault_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (NormalJ2MEDefaultGameInputMapping.jnew_0) jm_getInputMapping_0)))))))
(define (NormalJ2MEGameInputMapping.jclassValue) NormalJ2MEGameInputMapping%)

(define (NormalJ2MEGameInputMapping.jnew_0)
  (define this (new NormalJ2MEGameInputMapping% [jclass "NormalJ2MEGameInputMapping"]))
  this)



