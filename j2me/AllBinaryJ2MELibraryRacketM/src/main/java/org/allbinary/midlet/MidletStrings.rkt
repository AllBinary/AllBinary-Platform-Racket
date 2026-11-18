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

(define MidletStrings%
  (class JObject%
    (super-new)
    (field [f_COMMAND_ACTION JR.null])))
(define (MidletStrings.jclassValue) MidletStrings%)

(define MidletStrings.jcell_instance 'jnone)
(define (MidletStrings.jstatic_instance)
  (when (eq? MidletStrings.jcell_instance 'jnone) (set! MidletStrings.jcell_instance (MidletStrings.jnew_0)))
  MidletStrings.jcell_instance)
(define (MidletStrings.jsetstatic_instance value) (set! MidletStrings.jcell_instance value))

(define (MidletStrings.jnew_0)
  (define this (new MidletStrings% [jclass "MidletStrings"]))
    (set-field! f_COMMAND_ACTION this "commandAction")
  this)

(define (MidletStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MidletStrings.jstatic_instance)))))



