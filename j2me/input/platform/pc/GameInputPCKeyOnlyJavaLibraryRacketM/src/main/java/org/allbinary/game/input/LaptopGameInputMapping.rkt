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
  "./PCGameInputMapping.rkt")
(lazy-require ["./LaptopDefaultGameInputMapping.rkt" (LaptopDefaultGameInputMapping.jnew_0)])
(provide (all-defined-out))

(define LaptopGameInputMapping%
  (class PCGameInputMapping%
    (super-new)
    (define/override (jm_getDefault_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (LaptopDefaultGameInputMapping.jnew_0) jm_getInputMapping_0)))))))
(define (LaptopGameInputMapping.jclassValue) LaptopGameInputMapping%)

(define (LaptopGameInputMapping.jnew_0)
  (define this (new LaptopGameInputMapping% [jclass "LaptopGameInputMapping"]))
  this)



