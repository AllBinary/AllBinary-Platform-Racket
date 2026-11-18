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
;; package org.allbinary.image

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define PreResourceImageUtil%
  (class JObject%
    (super-new)
    (define/public (jm_encapsulate_1 _image)
    (let ()
      (let/ec jreturn
        (jreturn _image))))
    (define/public (jm_updateGL_2 _gl _image)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_update_2 _graphics _image)
    (let ()
      (let/ec jreturn (void))))))
(define (PreResourceImageUtil.jclassValue) PreResourceImageUtil%)

(define PreResourceImageUtil.jcell_instance 'jnone)
(define (PreResourceImageUtil.jstatic_instance)
  (when (eq? PreResourceImageUtil.jcell_instance 'jnone) (set! PreResourceImageUtil.jcell_instance (PreResourceImageUtil.jnew_0)))
  PreResourceImageUtil.jcell_instance)
(define (PreResourceImageUtil.jsetstatic_instance value) (set! PreResourceImageUtil.jcell_instance value))

(define (PreResourceImageUtil.jnew_0)
  (define this (new PreResourceImageUtil% [jclass "PreResourceImageUtil"]))
  this)

(define (PreResourceImageUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PreResourceImageUtil.jstatic_instance)))))



