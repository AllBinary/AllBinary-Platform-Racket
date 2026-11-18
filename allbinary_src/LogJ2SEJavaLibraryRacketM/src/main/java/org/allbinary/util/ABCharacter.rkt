#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2026 AllBinary 
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
;; package org.allbinary.util

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Character.rkt")
(provide (all-defined-out))

(define ABCharacter%
  (class JObject%
    (super-new)))
(define (ABCharacter.jclassValue) ABCharacter%)

(define (ABCharacter.jnew_0)
  (define this (new ABCharacter% [jclass "ABCharacter"]))
  this)

(define (ABCharacter.jm_toString_1 _ch)
    (let ()
      (let/ec jreturn
        (jreturn (JR.charString _ch)))))



