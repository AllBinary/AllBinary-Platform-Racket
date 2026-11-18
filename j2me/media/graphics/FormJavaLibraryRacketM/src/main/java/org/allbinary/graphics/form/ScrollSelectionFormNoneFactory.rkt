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
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./ScrollSelectionForm.rkt" (ScrollSelectionForm.jm_getNullScrollSelectionFormHorizontal_0)])
(provide (all-defined-out))

(define ScrollSelectionFormNoneFactory%
  (class JObject%
    (super-new)))
(define (ScrollSelectionFormNoneFactory.jclassValue) ScrollSelectionFormNoneFactory%)

(define (ScrollSelectionFormNoneFactory.jnew_0)
  (define this (new ScrollSelectionFormNoneFactory% [jclass "ScrollSelectionFormNoneFactory"]))
  this)

(define (ScrollSelectionFormNoneFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ScrollSelectionForm.jm_getNullScrollSelectionFormHorizontal_0)))))



