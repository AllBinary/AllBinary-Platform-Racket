#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../javax/microedition/lcdui/Canvas.rkt")
(provide (all-defined-out))

;Temp should not be in any build
(define NullDisplayable%
  (class Canvas%
    (super-new)
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (NullDisplayable.jclassValue) NullDisplayable%)

(define NullDisplayable.jcell_SINGLETON 'jnone)
(define (NullDisplayable.jstatic_SINGLETON)
  (when (eq? NullDisplayable.jcell_SINGLETON 'jnone) (set! NullDisplayable.jcell_SINGLETON (NullDisplayable.jnew_0)))
  NullDisplayable.jcell_SINGLETON)
(define (NullDisplayable.jsetstatic_SINGLETON value) (set! NullDisplayable.jcell_SINGLETON value))

(define (NullDisplayable.jnew_0)
  (define this (new NullDisplayable% [jclass "NullDisplayable"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NullDisplayable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullDisplayable.jstatic_SINGLETON)))))



