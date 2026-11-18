#lang racket/base
;;
;; AllBinary Open License Version 1
;; Copyright (c) 2026 AllBinary
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
;; package org.allbinary

(require racket/class racket/lazy-require
  "../../allbinary_java.rkt"
  "../../java/io/IOException.rkt"
  "../../java/io/InputStream.rkt")
(lazy-require ["../../javax/microedition/lcdui/Image.rkt" (Image.jm_createImage_2 Image.jm_createImage_3 Image.jm_createImage_1)])
(lazy-require ["../../javax/microedition/media/Manager.rkt" (Manager.jm_createPlayer_2)])
(provide (all-defined-out))

;like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
(define MIDPUtil%
  (class JObject%
    (super-new)
    (define/public (jm_createImageWH_2 _width _height)
    (let ()
      (let/ec jreturn
        (jreturn (Image.jm_createImage_2 _width _height)))))
    (define/public (jm_createImageFromByteArray_3 _imageData _imageOffset _imageLength)
    (let ()
      (let/ec jreturn
        (jreturn (Image.jm_createImage_3 _imageData _imageOffset _imageLength)))))
    (define/public (jm_createImageFromInputStream_1 _inputStream)
    (let ()
      (let/ec jreturn
        (jreturn (Image.jm_createImage_1 _inputStream)))))
    (define/public (jm_createPlayerFromInputStream_2 _inputStream _type)
    (let ()
      (let/ec jreturn
        (jreturn (Manager.jm_createPlayer_2 _inputStream _type)))))
    (define/public (jm_appendItem_2 _form _item)
    (let ()
      (let/ec jreturn
        (jreturn (send _form jm_append_1 _item)))))))
(define (MIDPUtil.jclassValue) MIDPUtil%)

(define MIDPUtil.jcell_instance 'jnone)
(define (MIDPUtil.jstatic_instance)
  (when (eq? MIDPUtil.jcell_instance 'jnone) (set! MIDPUtil.jcell_instance (MIDPUtil.jnew_0)))
  MIDPUtil.jcell_instance)
(define (MIDPUtil.jsetstatic_instance value) (set! MIDPUtil.jcell_instance value))

(define (MIDPUtil.jnew_0)
  (define this (new MIDPUtil% [jclass "MIDPUtil"]))
  this)

(define (MIDPUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MIDPUtil.jstatic_instance)))))



