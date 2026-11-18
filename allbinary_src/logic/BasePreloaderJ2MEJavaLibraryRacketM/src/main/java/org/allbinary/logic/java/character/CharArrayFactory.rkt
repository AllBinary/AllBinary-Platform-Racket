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

(define CharArrayFactory%
  (class JObject%
    (super-new)
    (field [f_zeroCharArray JR.null])
    (define/public (jm_getZeroCharArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_zeroCharArray this)))))))
(define (CharArrayFactory.jclassValue) CharArrayFactory%)

(define CharArrayFactory.jcell_instance 'jnone)
(define (CharArrayFactory.jstatic_instance)
  (when (eq? CharArrayFactory.jcell_instance 'jnone) (set! CharArrayFactory.jcell_instance (CharArrayFactory.jnew_0)))
  CharArrayFactory.jcell_instance)
(define (CharArrayFactory.jsetstatic_instance value) (set! CharArrayFactory.jcell_instance value))

(define (CharArrayFactory.jnew_0)
  (define this (new CharArrayFactory% [jclass "CharArrayFactory"]))
    (set-field! f_zeroCharArray this (JR.newArray 0 0))
  this)

(define (CharArrayFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CharArrayFactory.jstatic_instance)))))



