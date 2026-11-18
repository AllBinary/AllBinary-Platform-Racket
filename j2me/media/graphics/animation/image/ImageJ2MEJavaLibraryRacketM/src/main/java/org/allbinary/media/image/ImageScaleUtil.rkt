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
;; package org.allbinary.media.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ImageScaleUtil%
  (class JObject%
    (super-new)
    (define/public (jm_createImage2_7 _imageCache _originalImage _scaleNominatorX _scaleDenominatorX _scaleNominatorY _scaleDenominatorY _cached)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_createImage3_8 _imageCache _originalImage _scaleNominatorX _scaleDenominatorX _scaleNominatorY _scaleDenominatorY _cached #t)))))
    (define/public (jm_createImage3_8 _imageCache _originalImage _scaleNominatorX _scaleDenominatorX _scaleNominatorY _scaleDenominatorY _cached _mutable)
    (let ()
      (let/ec jreturn
        (jreturn _originalImage))))))
(define (ImageScaleUtil.jclassValue) ImageScaleUtil%)

(define ImageScaleUtil.jcell_instance 'jnone)
(define (ImageScaleUtil.jstatic_instance)
  (when (eq? ImageScaleUtil.jcell_instance 'jnone) (set! ImageScaleUtil.jcell_instance (ImageScaleUtil.jnew_0)))
  ImageScaleUtil.jcell_instance)
(define (ImageScaleUtil.jsetstatic_instance value) (set! ImageScaleUtil.jcell_instance value))

(define (ImageScaleUtil.jnew_0)
  (define this (new ImageScaleUtil% [jclass "ImageScaleUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ImageScaleUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageScaleUtil.jstatic_instance)))))



