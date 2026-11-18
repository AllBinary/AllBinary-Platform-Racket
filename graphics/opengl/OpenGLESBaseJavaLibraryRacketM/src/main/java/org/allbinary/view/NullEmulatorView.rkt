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
;; package org.allbinary.view

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./EmulatorViewInterface.rkt")
(provide (all-defined-out))

(define NullEmulatorView%
  (class JObject%
    (super-new)
    (define/public (jm_setMidlet_1 _midlet)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onEmulatorInitComplete_1 _midletActivity)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onSetDisplayable_1 _displayable)
    (let ()
      (let/ec jreturn (void))))))
(define (NullEmulatorView.jclassValue) NullEmulatorView%)

(define NullEmulatorView.jcell_NULL_EMULATOR_VIEW 'jnone)
(define (NullEmulatorView.jstatic_NULL_EMULATOR_VIEW)
  (when (eq? NullEmulatorView.jcell_NULL_EMULATOR_VIEW 'jnone) (set! NullEmulatorView.jcell_NULL_EMULATOR_VIEW (NullEmulatorView.jnew_0)))
  NullEmulatorView.jcell_NULL_EMULATOR_VIEW)
(define (NullEmulatorView.jsetstatic_NULL_EMULATOR_VIEW value) (set! NullEmulatorView.jcell_NULL_EMULATOR_VIEW value))

(define (NullEmulatorView.jnew_0)
  (define this (new NullEmulatorView% [jclass "NullEmulatorView"]))
  this)



