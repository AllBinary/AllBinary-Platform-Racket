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
;; package org.allbinary.data.tree.dom

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define DomData%
  (class JObject%
    (super-new)))
(define (DomData.jclassValue) DomData%)

(define DomData.jcell_ID 'jnone)
(define (DomData.jstatic_ID)
  (when (eq? DomData.jcell_ID 'jnone) (set! DomData.jcell_ID "id"))
  DomData.jcell_ID)
(define (DomData.jsetstatic_ID value) (set! DomData.jcell_ID value))

(define DomData.jcell_CHILD 'jnone)
(define (DomData.jstatic_CHILD)
  (when (eq? DomData.jcell_CHILD 'jnone) (set! DomData.jcell_CHILD "child"))
  DomData.jcell_CHILD)
(define (DomData.jsetstatic_CHILD value) (set! DomData.jcell_CHILD value))

(define DomData.jcell_NAME 'jnone)
(define (DomData.jstatic_NAME)
  (when (eq? DomData.jcell_NAME 'jnone) (set! DomData.jcell_NAME "name"))
  DomData.jcell_NAME)
(define (DomData.jsetstatic_NAME value) (set! DomData.jcell_NAME value))

(define DomData.jcell_VALUE 'jnone)
(define (DomData.jstatic_VALUE)
  (when (eq? DomData.jcell_VALUE 'jnone) (set! DomData.jcell_VALUE "value"))
  DomData.jcell_VALUE)
(define (DomData.jsetstatic_VALUE value) (set! DomData.jcell_VALUE value))

(define DomData.jcell_INDEX 'jnone)
(define (DomData.jstatic_INDEX)
  (when (eq? DomData.jcell_INDEX 'jnone) (set! DomData.jcell_INDEX "index"))
  DomData.jcell_INDEX)
(define (DomData.jsetstatic_INDEX value) (set! DomData.jcell_INDEX value))

(define (DomData.jnew_0)
  (define this (new DomData% [jclass "DomData"]))
    (let ()
      (let/ec jreturn (void)))
  this)



