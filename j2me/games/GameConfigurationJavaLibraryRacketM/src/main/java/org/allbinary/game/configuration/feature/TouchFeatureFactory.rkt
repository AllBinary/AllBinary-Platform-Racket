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
(lazy-require ["./TouchFeature.rkt" (TouchFeature.jnew_1)])
(provide (all-defined-out))

(define TouchFeatureFactory%
  (class JObject%
    (super-new)
    (field [f_TOUCH_ENABLED JR.null])
    (field [f_SHOW_SCREEN_BUTTONS JR.null])
    (field [f_AUTO_HIDE_SHOW_SCREEN_BUTTONS JR.null])
    (field [f_HIDE_SCREEN_BUTTONS JR.null])))
(define (TouchFeatureFactory.jclassValue) TouchFeatureFactory%)

(define TouchFeatureFactory.jcell_instance 'jnone)
(define (TouchFeatureFactory.jstatic_instance)
  (when (eq? TouchFeatureFactory.jcell_instance 'jnone) (set! TouchFeatureFactory.jcell_instance (TouchFeatureFactory.jnew_0)))
  TouchFeatureFactory.jcell_instance)
(define (TouchFeatureFactory.jsetstatic_instance value) (set! TouchFeatureFactory.jcell_instance value))

(define (TouchFeatureFactory.jnew_0)
  (define this (new TouchFeatureFactory% [jclass "TouchFeatureFactory"]))
    (set-field! f_TOUCH_ENABLED this (TouchFeature.jnew_1 "Touch Enabled"))
    (set-field! f_SHOW_SCREEN_BUTTONS this (TouchFeature.jnew_1 "Show"))
    (set-field! f_AUTO_HIDE_SHOW_SCREEN_BUTTONS this (TouchFeature.jnew_1 "Auto Hide (One Level)"))
    (set-field! f_HIDE_SCREEN_BUTTONS this (TouchFeature.jnew_1 "Hide"))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (TouchFeatureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchFeatureFactory.jstatic_instance)))))



