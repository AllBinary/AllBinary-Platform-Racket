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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./ScreenCapture.rkt" (ScreenCapture.jnew_0)])
(provide (all-defined-out))

(define ScreenCaptureNoneFactory%
  (class JObject%
    (super-new)))
(define (ScreenCaptureNoneFactory.jclassValue) ScreenCaptureNoneFactory%)

(define ScreenCaptureNoneFactory.jcell_instance 'jnone)
(define (ScreenCaptureNoneFactory.jstatic_instance)
  (when (eq? ScreenCaptureNoneFactory.jcell_instance 'jnone) (set! ScreenCaptureNoneFactory.jcell_instance (ScreenCapture.jnew_0)))
  ScreenCaptureNoneFactory.jcell_instance)
(define (ScreenCaptureNoneFactory.jsetstatic_instance value) (set! ScreenCaptureNoneFactory.jcell_instance value))

(define (ScreenCaptureNoneFactory.jnew_0)
  (define this (new ScreenCaptureNoneFactory% [jclass "ScreenCaptureNoneFactory"]))
  this)

(define (ScreenCaptureNoneFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ScreenCaptureNoneFactory.jstatic_instance)))))



