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

(define ImageCompleteUtil%
  (class JObject%
    (super-new)
    (define/public (jm_waitForImage_2 _image _name)
    (let ()
      (let/ec jreturn (void))))))
(define (ImageCompleteUtil.jclassValue) ImageCompleteUtil%)

(define ImageCompleteUtil.jcell_instance 'jnone)
(define (ImageCompleteUtil.jstatic_instance)
  (when (eq? ImageCompleteUtil.jcell_instance 'jnone) (set! ImageCompleteUtil.jcell_instance (ImageCompleteUtil.jnew_0)))
  ImageCompleteUtil.jcell_instance)
(define (ImageCompleteUtil.jsetstatic_instance value) (set! ImageCompleteUtil.jcell_instance value))

(define (ImageCompleteUtil.jnew_0)
  (define this (new ImageCompleteUtil% [jclass "ImageCompleteUtil"]))
  this)

(define (ImageCompleteUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageCompleteUtil.jstatic_instance)))))



