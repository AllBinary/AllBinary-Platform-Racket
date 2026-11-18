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
;; package org.allbinary.media.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ImageModifierUtil%
  (class JObject%
    (super-new)
    (define/public (jm_setColor_4 _unusedOriginalImage _image _imageIndex _basicColor)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_changeColor_4 _unusedOriginalImage _image _imageIndex _basicColor)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setAlpha_4 _originalImage _image _imageIndex _alphaInt)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getImageArray_1 _originalImageArray)
    (let ()
      (let/ec jreturn
        (jreturn _originalImageArray))))
    (define/public (jm_handleImage_3 _imageArray _index _image)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_reset_0)
    (let ()
      (let/ec jreturn (void))))))
(define (ImageModifierUtil.jclassValue) ImageModifierUtil%)

(define ImageModifierUtil.jcell_instance 'jnone)
(define (ImageModifierUtil.jstatic_instance)
  (when (eq? ImageModifierUtil.jcell_instance 'jnone) (set! ImageModifierUtil.jcell_instance (ImageModifierUtil.jnew_0)))
  ImageModifierUtil.jcell_instance)
(define (ImageModifierUtil.jsetstatic_instance value) (set! ImageModifierUtil.jcell_instance value))

(define (ImageModifierUtil.jnew_0)
  (define this (new ImageModifierUtil% [jclass "ImageModifierUtil"]))
  this)

(define (ImageModifierUtil.jm_getInstanceOrCreate_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageModifierUtil.jstatic_instance)))))



