#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.game.configuration.persistance

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../javax/microedition/rms/RecordComparator.rkt")
(provide (all-defined-out))

(define NullRecordComparator%
  (class JObject%
    (super-new)
    (define/public (jm_compare_2 _rec1 _rec2)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (NullRecordComparator.jclassValue) NullRecordComparator%)

(define NullRecordComparator.jcell_NULL_RECORD_COMPARATOR 'jnone)
(define (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR)
  (when (eq? NullRecordComparator.jcell_NULL_RECORD_COMPARATOR 'jnone) (set! NullRecordComparator.jcell_NULL_RECORD_COMPARATOR (NullRecordComparator.jnew_0)))
  NullRecordComparator.jcell_NULL_RECORD_COMPARATOR)
(define (NullRecordComparator.jsetstatic_NULL_RECORD_COMPARATOR value) (set! NullRecordComparator.jcell_NULL_RECORD_COMPARATOR value))

(define (NullRecordComparator.jnew_0)
  (define this (new NullRecordComparator% [jclass "NullRecordComparator"]))
  this)



