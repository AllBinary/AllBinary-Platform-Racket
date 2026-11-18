#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.font

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

;OpenGLESBaseJavaLibrary
(define FontDebugBase%
  (class JObject%
    (super-new)
    (field [f_SET_FONT JR.null])
    (define/public (jm_debugMetrics_4 _currentFont _convertedTextSize _displayMetrics _stringBuffer)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_debugDpi_2 _densityDpi _stringBuffer)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_debugDimension_4 _currentFont _convertedTextSize _longestDimensionTotalPixels _stringBuffer)
    (let ()
      (let/ec jreturn (void))))))
(define (FontDebugBase.jclassValue) FontDebugBase%)

(define FontDebugBase.jcell_instanceBase 'jnone)
(define (FontDebugBase.jstatic_instanceBase)
  (when (eq? FontDebugBase.jcell_instanceBase 'jnone) (set! FontDebugBase.jcell_instanceBase (FontDebugBase.jnew_0)))
  FontDebugBase.jcell_instanceBase)
(define (FontDebugBase.jsetstatic_instanceBase value) (set! FontDebugBase.jcell_instanceBase value))

(define (FontDebugBase.jnew_0)
  (define this (new FontDebugBase% [jclass "FontDebugBase"]))
    (set-field! f_SET_FONT this "setFont")
  this)

(define (FontDebugBase.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FontDebugBase.jstatic_instanceBase)))))



