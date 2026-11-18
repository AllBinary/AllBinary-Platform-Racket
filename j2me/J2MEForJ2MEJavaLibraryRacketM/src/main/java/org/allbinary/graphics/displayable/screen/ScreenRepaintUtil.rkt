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
;; package org.allbinary.graphics.displayable.screen

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ScreenRepaintUtil%
  (class JObject%
    (super-new)))
(define (ScreenRepaintUtil.jclassValue) ScreenRepaintUtil%)

(define (ScreenRepaintUtil.jnew_0)
  (define this (new ScreenRepaintUtil% [jclass "ScreenRepaintUtil"]))
  this)

(define (ScreenRepaintUtil.jm_repaint_1 _displayable)
    (let ()
      (let/ec jreturn (void))))



