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
;; package org.allbinary.graphics.canvas.transition.progress

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./ProgressCanvas.rkt" (ProgressCanvas.jnew_3)])
(provide (all-defined-out))

(define ProgressCanvasFactory%
  (class JObject%
    (super-new)))
(define (ProgressCanvasFactory.jclassValue) ProgressCanvasFactory%)

(define ProgressCanvasFactory.jcell_PROGRESS_FORM_SCREEN 'jnone)
(define (ProgressCanvasFactory.jstatic_PROGRESS_FORM_SCREEN)
  (when (eq? ProgressCanvasFactory.jcell_PROGRESS_FORM_SCREEN 'jnone) (set! ProgressCanvasFactory.jcell_PROGRESS_FORM_SCREEN (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  ProgressCanvasFactory.jcell_PROGRESS_FORM_SCREEN)
(define (ProgressCanvasFactory.jsetstatic_PROGRESS_FORM_SCREEN value) (set! ProgressCanvasFactory.jcell_PROGRESS_FORM_SCREEN value))

(define (ProgressCanvasFactory.jnew_0)
  (define this (new ProgressCanvasFactory% [jclass "ProgressCanvasFactory"]))
  this)

(define (ProgressCanvasFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (ProgressCanvasFactory.jstatic_PROGRESS_FORM_SCREEN) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! ProgressCanvasFactory.jcell_PROGRESS_FORM_SCREEN (ProgressCanvas.jnew_3 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)) (get-field f_WHITE (BasicColorFactory.jm_getInstance_0))))))
        (jreturn (ProgressCanvasFactory.jstatic_PROGRESS_FORM_SCREEN)))))

(define (ProgressCanvasFactory.jm_getLazyInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullPaintable.jm_getInstance_0)))))



