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
(lazy-require ["../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(provide (all-defined-out))

(define FullScreenPaintableFactory%
  (class JObject%
    (super-new)
    (field [f_paintable JR.null])))
(define (FullScreenPaintableFactory.jclassValue) FullScreenPaintableFactory%)

(define FullScreenPaintableFactory.jcell_instance 'jnone)
(define (FullScreenPaintableFactory.jstatic_instance)
  (when (eq? FullScreenPaintableFactory.jcell_instance 'jnone) (set! FullScreenPaintableFactory.jcell_instance (FullScreenPaintableFactory.jnew_0)))
  FullScreenPaintableFactory.jcell_instance)
(define (FullScreenPaintableFactory.jsetstatic_instance value) (set! FullScreenPaintableFactory.jcell_instance value))

(define (FullScreenPaintableFactory.jnew_0)
  (define this (new FullScreenPaintableFactory% [jclass "FullScreenPaintableFactory"]))
    (set-field! f_paintable this (NullPaintable.jm_getInstance_0))
  this)

(define (FullScreenPaintableFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FullScreenPaintableFactory.jstatic_instance)))))



