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
;; package org.allbinary.graphics.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/displayable/StateControlledInterface.rkt"
  "./Paintable.rkt")
(provide (all-defined-out))

(define StatePaintable%
  (class Paintable%
    (super-new)
    (define/public (jm_setState_1 _state)
    (let ()
      (let/ec jreturn (void))))))
(define (StatePaintable.jclassValue) StatePaintable%)

(define (StatePaintable.jnew_0)
  (define this (new StatePaintable% [jclass "StatePaintable"]))
    (let ()
      (let/ec jreturn (void)))
  this)



