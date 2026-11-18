#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary

(require racket/class racket/lazy-require
  "../../allbinary_java.rkt")
(provide (all-defined-out))

(define DisposalUtil%
  (class JObject%
    (super-new)
    (define/public (jm_disposeImage_1 _image)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_disposeResource_1 _resource)
    (let ()
      (let/ec jreturn
        (when (not (send _resource jm_isDisposed_0))
            (begin
            (send _resource jm_dispose_0))))))))
(define (DisposalUtil.jclassValue) DisposalUtil%)

(define DisposalUtil.jcell_instance 'jnone)
(define (DisposalUtil.jstatic_instance)
  (when (eq? DisposalUtil.jcell_instance 'jnone) (set! DisposalUtil.jcell_instance (DisposalUtil.jnew_0)))
  DisposalUtil.jcell_instance)
(define (DisposalUtil.jsetstatic_instance value) (set! DisposalUtil.jcell_instance value))

(define (DisposalUtil.jnew_0)
  (define this (new DisposalUtil% [jclass "DisposalUtil"]))
  this)

(define (DisposalUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DisposalUtil.jstatic_instance)))))



