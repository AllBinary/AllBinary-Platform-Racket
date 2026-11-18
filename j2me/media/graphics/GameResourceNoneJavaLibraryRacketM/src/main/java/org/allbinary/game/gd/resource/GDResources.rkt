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
;; package org.allbinary.game.gd.resource

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GDResources%
  (class JObject%
    (super-new)
    (field [f_resourceStringArray JR.null])
    (field [f_currentLayoutRequiredTotal 0])))
(define (GDResources.jclassValue) GDResources%)

(define GDResources.jcell_instance 'jnone)
(define (GDResources.jstatic_instance)
  (when (eq? GDResources.jcell_instance 'jnone) (set! GDResources.jcell_instance (GDResources.jnew_0)))
  GDResources.jcell_instance)
(define (GDResources.jsetstatic_instance value) (set! GDResources.jcell_instance value))

(define (GDResources.jnew_0)
  (define this (new GDResources% [jclass "GDResources"]))
    (set-field! f_resourceStringArray this (vector))
    
  this)

(define (GDResources.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GDResources.jstatic_instance)))))



