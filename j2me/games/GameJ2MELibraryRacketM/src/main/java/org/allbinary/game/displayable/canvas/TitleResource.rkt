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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define TitleResource%
  (class JObject%
    (super-new)))
(define (TitleResource.jclassValue) TitleResource%)

(define TitleResource.jcell_RESOURCE_TITLE 'jnone)
(define (TitleResource.jstatic_RESOURCE_TITLE)
  (when (eq? TitleResource.jcell_RESOURCE_TITLE 'jnone) (set! TitleResource.jcell_RESOURCE_TITLE "/title_sprite_100_by_100.png"))
  TitleResource.jcell_RESOURCE_TITLE)
(define (TitleResource.jsetstatic_RESOURCE_TITLE value) (set! TitleResource.jcell_RESOURCE_TITLE value))

(define (TitleResource.jnew_0)
  (define this (new TitleResource% [jclass "TitleResource"]))
  this)



