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
;; package org.allbinary.logic

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/System.rkt")
(provide (all-defined-out))

(define ABSystemWrapper%
  (class JObject%
    (super-new)
    (define/public (jm_arraycopy_5 _src _srcPos _dest _destPos _length)
    (let ()
      (let/ec jreturn
        (JR.arraycopy _src _srcPos _dest _destPos _length))))
    (define/public (jm_currentTimeMillis_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.currentTimeMillis)))))))
(define (ABSystemWrapper.jclassValue) ABSystemWrapper%)

(define ABSystemWrapper.jcell_instance 'jnone)
(define (ABSystemWrapper.jstatic_instance)
  (when (eq? ABSystemWrapper.jcell_instance 'jnone) (set! ABSystemWrapper.jcell_instance (ABSystemWrapper.jnew_0)))
  ABSystemWrapper.jcell_instance)
(define (ABSystemWrapper.jsetstatic_instance value) (set! ABSystemWrapper.jcell_instance value))

(define (ABSystemWrapper.jnew_0)
  (define this (new ABSystemWrapper% [jclass "ABSystemWrapper"]))
  this)

(define (ABSystemWrapper.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ABSystemWrapper.jstatic_instance)))))



