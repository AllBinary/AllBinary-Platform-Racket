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
;; package org.allbinary.layer

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define LayerManagerLoggingBase%
  (class JObject%
    (super-new)
    (define/public (jm_append_1 _layerInterface)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_appendAt_2 _layerInterface _index)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_remove_1 _layerInterface)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_removeResult_3 _layerManager _layerInterface _result)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn (void))))))
(define (LayerManagerLoggingBase.jclassValue) LayerManagerLoggingBase%)

(define (LayerManagerLoggingBase.jnew_0)
  (define this (new LayerManagerLoggingBase% [jclass "LayerManagerLoggingBase"]))
  this)



