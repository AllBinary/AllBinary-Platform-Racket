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
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./Feature.rkt")
(provide (all-defined-out))

(define InputFeature%
  (class Feature%
    (super-new)))
(define (InputFeature.jclassValue) InputFeature%)

(define (InputFeature.jnew_1 _name)
  (define this (new InputFeature% [jclass "InputFeature"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



