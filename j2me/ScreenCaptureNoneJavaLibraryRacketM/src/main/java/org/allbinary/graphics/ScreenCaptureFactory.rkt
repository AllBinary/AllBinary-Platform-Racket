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
(lazy-require ["./ScreenCaptureNoneFactory.rkt" (ScreenCaptureNoneFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ScreenCaptureFactory%
  (class JObject%
    (super-new)))
(define (ScreenCaptureFactory.jclassValue) ScreenCaptureFactory%)

(define ScreenCaptureFactory.jcell_instance 'jnone)
(define (ScreenCaptureFactory.jstatic_instance)
  (when (eq? ScreenCaptureFactory.jcell_instance 'jnone) (set! ScreenCaptureFactory.jcell_instance (ScreenCaptureNoneFactory.jm_getInstance_0)))
  ScreenCaptureFactory.jcell_instance)
(define (ScreenCaptureFactory.jsetstatic_instance value) (set! ScreenCaptureFactory.jcell_instance value))

(define (ScreenCaptureFactory.jnew_0)
  (define this (new ScreenCaptureFactory% [jclass "ScreenCaptureFactory"]))
  this)

(define (ScreenCaptureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ScreenCaptureFactory.jstatic_instance)))))



