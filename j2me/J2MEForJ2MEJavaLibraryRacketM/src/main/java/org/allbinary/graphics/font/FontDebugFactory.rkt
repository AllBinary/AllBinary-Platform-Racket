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
;; package org.allbinary.graphics.font

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define FontDebugFactory%
  (class JObject%
    (super-new)
    (define/public (jm_setFont_2 _font _graphics)
    (let ()
      (let/ec jreturn
        (send _graphics jm_setFont_1 _font))))))
(define (FontDebugFactory.jclassValue) FontDebugFactory%)

(define FontDebugFactory.jcell_instance 'jnone)
(define (FontDebugFactory.jstatic_instance)
  (when (eq? FontDebugFactory.jcell_instance 'jnone) (set! FontDebugFactory.jcell_instance (FontDebugFactory.jnew_0)))
  FontDebugFactory.jcell_instance)
(define (FontDebugFactory.jsetstatic_instance value) (set! FontDebugFactory.jcell_instance value))

(define (FontDebugFactory.jnew_0)
  (define this (new FontDebugFactory% [jclass "FontDebugFactory"]))
  this)

(define (FontDebugFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FontDebugFactory.jstatic_instance)))))



