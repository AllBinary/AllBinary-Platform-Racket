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
  "../../../../../javax/microedition/rms/RecordStore.rkt")
(provide (all-defined-out))

(define NullRecordStore%
  (class RecordStore%
    (super-new)))
(define (NullRecordStore.jclassValue) NullRecordStore%)

(define NullRecordStore.jcell_NULL_RECORD_STORE 'jnone)
(define (NullRecordStore.jstatic_NULL_RECORD_STORE)
  (when (eq? NullRecordStore.jcell_NULL_RECORD_STORE 'jnone) (set! NullRecordStore.jcell_NULL_RECORD_STORE (NullRecordStore.jnew_0)))
  NullRecordStore.jcell_NULL_RECORD_STORE)
(define (NullRecordStore.jsetstatic_NULL_RECORD_STORE value) (set! NullRecordStore.jcell_NULL_RECORD_STORE value))

(define (NullRecordStore.jnew_0)
  (define this (new NullRecordStore% [jclass "NullRecordStore"]))
  this)



