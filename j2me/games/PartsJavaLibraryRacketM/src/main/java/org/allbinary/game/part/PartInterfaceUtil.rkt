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
;; package org.allbinary.game.part

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define PartInterfaceUtil%
  (class JObject%
    (super-new)))
(define (PartInterfaceUtil.jclassValue) PartInterfaceUtil%)

(define PartInterfaceUtil.jcell_SINGLETON 'jnone)
(define (PartInterfaceUtil.jstatic_SINGLETON)
  (when (eq? PartInterfaceUtil.jcell_SINGLETON 'jnone) (set! PartInterfaceUtil.jcell_SINGLETON (JR.newArray JR.null 0)))
  PartInterfaceUtil.jcell_SINGLETON)
(define (PartInterfaceUtil.jsetstatic_SINGLETON value) (set! PartInterfaceUtil.jcell_SINGLETON value))

(define (PartInterfaceUtil.jnew_0)
  (define this (new PartInterfaceUtil% [jclass "PartInterfaceUtil"]))
  this)

(define (PartInterfaceUtil.jm_getZeroArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (PartInterfaceUtil.jstatic_SINGLETON)))))



