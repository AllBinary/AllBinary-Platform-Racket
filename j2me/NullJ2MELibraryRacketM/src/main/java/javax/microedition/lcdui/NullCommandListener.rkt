#lang racket/base
;; Generated Code Do Not Modify
;; package javax.microedition.lcdui

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./CommandListener.rkt")
(provide (all-defined-out))

(define NullCommandListener%
  (class JObject%
    (super-new)
    (define/public (jm_commandAction_2 _c _d)
    (let ()
      (let/ec jreturn (void))))))
(define (NullCommandListener.jclassValue) NullCommandListener%)

(define NullCommandListener.jcell_NULL_COMMAND_LISTENER 'jnone)
(define (NullCommandListener.jstatic_NULL_COMMAND_LISTENER)
  (when (eq? NullCommandListener.jcell_NULL_COMMAND_LISTENER 'jnone) (set! NullCommandListener.jcell_NULL_COMMAND_LISTENER (NullCommandListener.jnew_0)))
  NullCommandListener.jcell_NULL_COMMAND_LISTENER)
(define (NullCommandListener.jsetstatic_NULL_COMMAND_LISTENER value) (set! NullCommandListener.jcell_NULL_COMMAND_LISTENER value))

(define (NullCommandListener.jnew_0)
  (define this (new NullCommandListener% [jclass "NullCommandListener"]))
  this)



