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
;; package org.allbinary.logic.java.character

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

;import java.nio.charset.Charset;
(define CharacterSet%
  (class JObject%
    (super-new)
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn "Default Character Set: Empty Implementation"))))))
(define (CharacterSet.jclassValue) CharacterSet%)

(define (CharacterSet.jnew_0)
  (define this (new CharacterSet% [jclass "CharacterSet"]))
    (let ()
      (let/ec jreturn (void)))
  this)



