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
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(provide (all-defined-out))

(define ImageRotationUtil%
  (class JObject%
    (super-new)
    (field [f_anchor 0])
    (define/public (jm_createRotatedImage_2 _originalImage _rotationInDegrees)
    (let ()
      (let/ec jreturn
        (jreturn _originalImage))))))
(define (ImageRotationUtil.jclassValue) ImageRotationUtil%)

(define ImageRotationUtil.jcell_instance 'jnone)
(define (ImageRotationUtil.jstatic_instance)
  (when (eq? ImageRotationUtil.jcell_instance 'jnone) (set! ImageRotationUtil.jcell_instance (ImageRotationUtil.jnew_0)))
  ImageRotationUtil.jcell_instance)
(define (ImageRotationUtil.jsetstatic_instance value) (set! ImageRotationUtil.jcell_instance value))

(define (ImageRotationUtil.jnew_0)
  (define this (new ImageRotationUtil% [jclass "ImageRotationUtil"]))
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ImageRotationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageRotationUtil.jstatic_instance)))))



