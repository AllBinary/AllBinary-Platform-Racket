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
;; package org.allbinary.animation.caption

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define CaptionResources%
  (class JObject%
    (super-new)))
(define (CaptionResources.jclassValue) CaptionResources%)

(define CaptionResources.jcell_RESOURCE 'jnone)
(define (CaptionResources.jstatic_RESOURCE)
  (when (eq? CaptionResources.jcell_RESOURCE 'jnone) (set! CaptionResources.jcell_RESOURCE "/character_message_bubbled_box.png"))
  CaptionResources.jcell_RESOURCE)
(define (CaptionResources.jsetstatic_RESOURCE value) (set! CaptionResources.jcell_RESOURCE value))

(define (CaptionResources.jnew_0)
  (define this (new CaptionResources% [jclass "CaptionResources"]))
  this)



