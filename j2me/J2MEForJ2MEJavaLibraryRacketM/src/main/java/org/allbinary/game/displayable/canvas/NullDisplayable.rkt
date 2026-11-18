#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../javax/microedition/lcdui/Canvas.rkt")
(lazy-require ["../../../../../org/allbinary/canvas/GameStatisticsFactory.rkt" (GameStatisticsFactory.jm_getInstance_0)])
(provide (all-defined-out))

;J2MEForJ2ME
(define NullDisplayable%
  (class Canvas%
    (super-new)
    (field [f_baseGameStatistics JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_baseGameStatistics this) jm_nextRefresh_0))))))
(define (NullDisplayable.jclassValue) NullDisplayable%)

(define NullDisplayable.jcell_SINGLETON 'jnone)
(define (NullDisplayable.jstatic_SINGLETON)
  (when (eq? NullDisplayable.jcell_SINGLETON 'jnone) (set! NullDisplayable.jcell_SINGLETON (NullDisplayable.jnew_0)))
  NullDisplayable.jcell_SINGLETON)
(define (NullDisplayable.jsetstatic_SINGLETON value) (set! NullDisplayable.jcell_SINGLETON value))

(define (NullDisplayable.jnew_0)
  (define this (new NullDisplayable% [jclass "NullDisplayable"]))
    (set-field! f_baseGameStatistics this (GameStatisticsFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NullDisplayable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullDisplayable.jstatic_SINGLETON)))))



