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
;; package org.allbinary.game.midlet

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./DemoGameMidletState.rkt" (DemoGameMidletState.jnew_0)])
(provide (all-defined-out))

(define DemoGameMidletStateFactory%
  (class JObject%
    (super-new)
    (field [f_NONE JR.null])
    (field [f_START_DEMO JR.null])
    (field [f_START_GAME JR.null])
    (field [f_START_INPUT_MAPPING JR.null])))
(define (DemoGameMidletStateFactory.jclassValue) DemoGameMidletStateFactory%)

(define DemoGameMidletStateFactory.jcell_STATE 'jnone)
(define (DemoGameMidletStateFactory.jstatic_STATE)
  (when (eq? DemoGameMidletStateFactory.jcell_STATE 'jnone) (set! DemoGameMidletStateFactory.jcell_STATE (DemoGameMidletStateFactory.jnew_0)))
  DemoGameMidletStateFactory.jcell_STATE)
(define (DemoGameMidletStateFactory.jsetstatic_STATE value) (set! DemoGameMidletStateFactory.jcell_STATE value))

(define (DemoGameMidletStateFactory.jnew_0)
  (define this (new DemoGameMidletStateFactory% [jclass "DemoGameMidletStateFactory"]))
    (set-field! f_NONE this (DemoGameMidletState.jnew_0))
    (set-field! f_START_DEMO this (DemoGameMidletState.jnew_0))
    (set-field! f_START_GAME this (DemoGameMidletState.jnew_0))
    (set-field! f_START_INPUT_MAPPING this (DemoGameMidletState.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (DemoGameMidletStateFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DemoGameMidletStateFactory.jstatic_STATE)))))



