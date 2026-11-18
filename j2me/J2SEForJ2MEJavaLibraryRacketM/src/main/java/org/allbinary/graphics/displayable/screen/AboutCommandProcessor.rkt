#lang racket/base
;;
;; AllBinary Open License Version 1
;; Copyright (c) 2022 AllBinary
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
;; package org.allbinary.graphics.displayable.screen

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define AboutCommandProcessor%
  (class JObject%
    (super-new)
    (define/public (jm_process_3 _midletCommandListener _command _canvas)
    (let ()
      (let/ec jreturn
        (send _midletCommandListener jm_commandAction_2 _command _canvas))))))
(define (AboutCommandProcessor.jclassValue) AboutCommandProcessor%)

(define AboutCommandProcessor.jcell_instance 'jnone)
(define (AboutCommandProcessor.jstatic_instance)
  (when (eq? AboutCommandProcessor.jcell_instance 'jnone) (set! AboutCommandProcessor.jcell_instance (AboutCommandProcessor.jnew_0)))
  AboutCommandProcessor.jcell_instance)
(define (AboutCommandProcessor.jsetstatic_instance value) (set! AboutCommandProcessor.jcell_instance value))

(define (AboutCommandProcessor.jnew_0)
  (define this (new AboutCommandProcessor% [jclass "AboutCommandProcessor"]))
  this)

(define (AboutCommandProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AboutCommandProcessor.jstatic_instance)))))



