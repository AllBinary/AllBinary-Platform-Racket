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

(define PersistanceStrings%
  (class JObject%
    (super-new)
    (field [f_SAVING JR.null])
    (field [f_NUMBER_OF_RECORDS JR.null])
    (field [f_LOADING_ID JR.null])
    (field [f_LOAD_ALL JR.null])
    (field [f_DELETING_WITH_ID JR.null])
    (field [f_CLOSING_RECORDSTORE JR.null])
    (field [f_NOT_SAVING JR.null])
    (field [f_ERROR_LOADING JR.null])
    (field [f_ERROR_LOADING_ID JR.null])
    (field [f_ID JR.null])
    (field [f_GAME_ACTION_INPUT JR.null])))
(define (PersistanceStrings.jclassValue) PersistanceStrings%)

(define PersistanceStrings.jcell_instance 'jnone)
(define (PersistanceStrings.jstatic_instance)
  (when (eq? PersistanceStrings.jcell_instance 'jnone) (set! PersistanceStrings.jcell_instance (PersistanceStrings.jnew_0)))
  PersistanceStrings.jcell_instance)
(define (PersistanceStrings.jsetstatic_instance value) (set! PersistanceStrings.jcell_instance value))

(define (PersistanceStrings.jnew_0)
  (define this (new PersistanceStrings% [jclass "PersistanceStrings"]))
    (set-field! f_SAVING this "Saving: ")
    (set-field! f_NUMBER_OF_RECORDS this "Number of records: ")
    (set-field! f_LOADING_ID this "Loading data with id: ")
    (set-field! f_LOAD_ALL this "loadAll")
    (set-field! f_DELETING_WITH_ID this "Deleting data with id: ")
    (set-field! f_CLOSING_RECORDSTORE this "Closing RecordStore")
    (set-field! f_NOT_SAVING this "Not Saving: ")
    (set-field! f_ERROR_LOADING this "Error Loading gameActionInput: ")
    (set-field! f_ERROR_LOADING_ID this "Error Loading id: ")
    (set-field! f_ID this " id: ")
    (set-field! f_GAME_ACTION_INPUT this " GameActionInput: ")
  this)

(define (PersistanceStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PersistanceStrings.jstatic_instance)))))



