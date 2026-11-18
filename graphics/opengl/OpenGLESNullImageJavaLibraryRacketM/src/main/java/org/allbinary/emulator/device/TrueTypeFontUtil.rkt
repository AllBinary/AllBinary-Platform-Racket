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
;; package org.allbinary.emulator.device

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./TrueTypeFontUtilBase.rkt")
(lazy-require ["../../../../org/allbinary/image/opengles/OpenGLESImage.rkt" (OpenGLESImage.jstatic_NULL_OPENGL_IMAGE)])
(provide (all-defined-out))

(define TrueTypeFontUtil%
  (class TrueTypeFontUtilBase%
    (super-new)
    (field [f_fontImage JR.null])
    (define/override (jm_getAsTextureSize_1 _textureSize)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/override (jm_getCellSize_1 _cellSize)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getFontBitmap_4 _filename _fontSize _cellSize _basicColor)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_saveFontAtlasAsFile_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getFontBitmapGL_4 _gl _filename _cellSize _basicColor)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getFontWidths_2 _filename _fontSize)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))))
(define (TrueTypeFontUtil.jclassValue) TrueTypeFontUtil%)

(define TrueTypeFontUtil.jcell_instance 'jnone)
(define (TrueTypeFontUtil.jstatic_instance)
  (when (eq? TrueTypeFontUtil.jcell_instance 'jnone) (set! TrueTypeFontUtil.jcell_instance (TrueTypeFontUtil.jnew_0)))
  TrueTypeFontUtil.jcell_instance)
(define (TrueTypeFontUtil.jsetstatic_instance value) (set! TrueTypeFontUtil.jcell_instance value))

(define (TrueTypeFontUtil.jnew_0)
  (define this (new TrueTypeFontUtil% [jclass "TrueTypeFontUtil"]))
    (set-field! f_fontImage this (OpenGLESImage.jstatic_NULL_OPENGL_IMAGE))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TrueTypeFontUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TrueTypeFontUtil.jstatic_instance)))))



