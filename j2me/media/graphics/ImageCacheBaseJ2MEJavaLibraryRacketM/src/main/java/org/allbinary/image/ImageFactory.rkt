#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.image

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/io/InputStream.rkt")
(lazy-require ["../../../javax/microedition/lcdui/Image.rkt" (Image.jm_createImage_1)])
(lazy-require ["../../../org/allbinary/MIDPUtil.rkt" (MIDPUtil.jm_getInstance_0)])
(provide (all-defined-out))

;ImageCacheBaseJavaLibrary - J2ME
(define ImageFactory%
  (class JObject%
    (super-new)
    (define/public (jm_createImageUrl_1 _url)
    (let ()
      (let/ec jreturn
        (jreturn (Image.jm_createImage_1 _url)))))
    (define/public (jm_createImage_3 _caller _width _height)
    (let ()
      (let/ec jreturn
        (jreturn (send (MIDPUtil.jm_getInstance_0) jm_createImageWH_2 _width _height)))))
    (define/public (jm_createImageFromInputStream_2 _key _inputStream)
    (let ([_image JR.null])
      (let/ec jreturn
        (set! _image (send (MIDPUtil.jm_getInstance_0) jm_createImageFromInputStream_1 _inputStream))
        (jreturn _image))))
    (define/public (jm_createImageFromInputStream_1 _inputStream)
    (let ()
      (let/ec jreturn
        (jreturn (send (MIDPUtil.jm_getInstance_0) jm_createImageFromInputStream_1 _inputStream)))))))
(define (ImageFactory.jclassValue) ImageFactory%)

(define ImageFactory.jcell_instance 'jnone)
(define (ImageFactory.jstatic_instance)
  (when (eq? ImageFactory.jcell_instance 'jnone) (set! ImageFactory.jcell_instance (ImageFactory.jnew_0)))
  ImageFactory.jcell_instance)
(define (ImageFactory.jsetstatic_instance value) (set! ImageFactory.jcell_instance value))

(define (ImageFactory.jnew_0)
  (define this (new ImageFactory% [jclass "ImageFactory"]))
  this)

(define (ImageFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageFactory.jstatic_instance)))))



