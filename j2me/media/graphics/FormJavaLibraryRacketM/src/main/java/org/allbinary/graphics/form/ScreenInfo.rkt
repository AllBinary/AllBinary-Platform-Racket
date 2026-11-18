#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ScreenInfo%
  (class JObject%
    (super-new)
    (field [f_SMALL_WIDTH 0])
    (field [f_SMALL_HEIGHT 0])
    (field [f_MEDIUM_WIDTH 0])
    (field [f_MEDIUM_HEIGHT 0])))
(define (ScreenInfo.jclassValue) ScreenInfo%)

(define ScreenInfo.jcell_instance 'jnone)
(define (ScreenInfo.jstatic_instance)
  (when (eq? ScreenInfo.jcell_instance 'jnone) (set! ScreenInfo.jcell_instance (ScreenInfo.jnew_0)))
  ScreenInfo.jcell_instance)
(define (ScreenInfo.jsetstatic_instance value) (set! ScreenInfo.jcell_instance value))

(define (ScreenInfo.jnew_0)
  (define this (new ScreenInfo% [jclass "ScreenInfo"]))
    (set-field! f_SMALL_WIDTH this 320)
    (set-field! f_SMALL_HEIGHT this 240)
    (set-field! f_MEDIUM_WIDTH this 800)
    (set-field! f_MEDIUM_HEIGHT this 600)
  this)

(define (ScreenInfo.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ScreenInfo.jstatic_instance)))))



