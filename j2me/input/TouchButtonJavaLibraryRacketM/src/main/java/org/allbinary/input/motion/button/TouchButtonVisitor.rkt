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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define TouchButtonVisitor%
  (class JObject%
    (super-new)
    (define/public (jm_process_2 _touchButtonInput _string)
    (let ()
      (let/ec jreturn (void))))))
(define (TouchButtonVisitor.jclassValue) TouchButtonVisitor%)

(define (TouchButtonVisitor.jnew_0)
  (define this (new TouchButtonVisitor% [jclass "TouchButtonVisitor"]))
  this)



