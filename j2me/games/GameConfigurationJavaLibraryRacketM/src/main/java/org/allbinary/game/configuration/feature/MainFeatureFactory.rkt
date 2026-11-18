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
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./Feature.rkt" (Feature.jnew_1)])
(provide (all-defined-out))

(define MainFeatureFactory%
  (class JObject%
    (super-new)
    (field [f_FULL_SCREEN JR.null])
    (field [f_TITLE_BAR JR.null])
    (field [f_STATIC JR.null])
    (field [f_LOAD_ONDEMAND JR.null])
    (field [f_LOAD_ALL JR.null])))
(define (MainFeatureFactory.jclassValue) MainFeatureFactory%)

(define MainFeatureFactory.jcell_instance 'jnone)
(define (MainFeatureFactory.jstatic_instance)
  (when (eq? MainFeatureFactory.jcell_instance 'jnone) (set! MainFeatureFactory.jcell_instance (MainFeatureFactory.jnew_0)))
  MainFeatureFactory.jcell_instance)
(define (MainFeatureFactory.jsetstatic_instance value) (set! MainFeatureFactory.jcell_instance value))

(define (MainFeatureFactory.jnew_0)
  (define this (new MainFeatureFactory% [jclass "MainFeatureFactory"]))
    (set-field! f_FULL_SCREEN this (Feature.jnew_1 "Full Screen"))
    (set-field! f_TITLE_BAR this (Feature.jnew_1 "Title Bar"))
    (set-field! f_STATIC this (Feature.jnew_1 "Static Dependent Feature"))
    (set-field! f_LOAD_ONDEMAND this (Feature.jnew_1 "Load OnDemand"))
    (set-field! f_LOAD_ALL this (Feature.jnew_1 "Load All"))
  this)

(define (MainFeatureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MainFeatureFactory.jstatic_instance)))))



