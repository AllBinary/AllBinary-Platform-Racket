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
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GamePersistanceStrings%
  (class JObject%
    (super-new)
    (field [f_SAVED_GAME_RECORD_ID JR.null])
    (field [f_SAVED_GAME_CONFIGURATION_RECORD_ID JR.null])
    (field [f_DEFAULT_INPUT_MAPPING_RECORD_ID JR.null])
    (field [f_SAVED_INPUT_CONFIGURATION_RECORD_ID JR.null])))
(define (GamePersistanceStrings.jclassValue) GamePersistanceStrings%)

(define GamePersistanceStrings.jcell_instance 'jnone)
(define (GamePersistanceStrings.jstatic_instance)
  (when (eq? GamePersistanceStrings.jcell_instance 'jnone) (set! GamePersistanceStrings.jcell_instance (GamePersistanceStrings.jnew_0)))
  GamePersistanceStrings.jcell_instance)
(define (GamePersistanceStrings.jsetstatic_instance value) (set! GamePersistanceStrings.jcell_instance value))

(define (GamePersistanceStrings.jnew_0)
  (define this (new GamePersistanceStrings% [jclass "GamePersistanceStrings"]))
    (set-field! f_SAVED_GAME_RECORD_ID this "_SG")
    (set-field! f_SAVED_GAME_CONFIGURATION_RECORD_ID this "_SGC")
    (set-field! f_DEFAULT_INPUT_MAPPING_RECORD_ID this "_DIM")
    (set-field! f_SAVED_INPUT_CONFIGURATION_RECORD_ID this "_SIC")
  this)

(define (GamePersistanceStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GamePersistanceStrings.jstatic_instance)))))



