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
;; package org.allbinary.resources

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define KeyValueFactory%
  (class JObject%
    (super-new)
    (field [f_MAP JR.null])
    (define/public (jm_get_1 _key)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_MAP this) jm_containsKey_1 _key))
            (begin
            (jreturn _key)))
        (jreturn (send (get-field f_MAP this) jm_get_1 _key)))))))
(define (KeyValueFactory.jclassValue) KeyValueFactory%)

(define KeyValueFactory.jcell_instance 'jnone)
(define (KeyValueFactory.jstatic_instance)
  (when (eq? KeyValueFactory.jcell_instance 'jnone) (set! KeyValueFactory.jcell_instance (KeyValueFactory.jnew_0)))
  KeyValueFactory.jcell_instance)
(define (KeyValueFactory.jsetstatic_instance value) (set! KeyValueFactory.jcell_instance value))

(define (KeyValueFactory.jnew_0)
  (define this (new KeyValueFactory% [jclass "KeyValueFactory"]))
    (set-field! f_MAP this (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
  this)

(define (KeyValueFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (KeyValueFactory.jstatic_instance)))))



