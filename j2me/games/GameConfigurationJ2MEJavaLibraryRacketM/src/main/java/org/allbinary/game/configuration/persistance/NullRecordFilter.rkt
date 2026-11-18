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
  "../../../../../javax/microedition/rms/RecordFilter.rkt")
(provide (all-defined-out))

(define NullRecordFilter%
  (class JObject%
    (super-new)
    (define/public (jm_matches_1 _candidate)
    (let ()
      (let/ec jreturn
        (jreturn #t))))))
(define (NullRecordFilter.jclassValue) NullRecordFilter%)

(define NullRecordFilter.jcell_NULL_RECORD_FILTER 'jnone)
(define (NullRecordFilter.jstatic_NULL_RECORD_FILTER)
  (when (eq? NullRecordFilter.jcell_NULL_RECORD_FILTER 'jnone) (set! NullRecordFilter.jcell_NULL_RECORD_FILTER (NullRecordFilter.jnew_0)))
  NullRecordFilter.jcell_NULL_RECORD_FILTER)
(define (NullRecordFilter.jsetstatic_NULL_RECORD_FILTER value) (set! NullRecordFilter.jcell_NULL_RECORD_FILTER value))

(define (NullRecordFilter.jnew_0)
  (define this (new NullRecordFilter% [jclass "NullRecordFilter"]))
  this)



