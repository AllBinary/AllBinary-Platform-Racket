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
;; package org.allbinary.thirdparty.store

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ThirdPartyMessageFactory%
  (class JObject%
    (super-new)
    (field [f_AUTHORIZED JR.null])
    (field [f_NOT_AUTHORIZED JR.null])
    (field [f_LINKAGE_ERROR JR.null])))
(define (ThirdPartyMessageFactory.jclassValue) ThirdPartyMessageFactory%)

(define ThirdPartyMessageFactory.jcell_instance 'jnone)
(define (ThirdPartyMessageFactory.jstatic_instance)
  (when (eq? ThirdPartyMessageFactory.jcell_instance 'jnone) (set! ThirdPartyMessageFactory.jcell_instance (ThirdPartyMessageFactory.jnew_0)))
  ThirdPartyMessageFactory.jcell_instance)
(define (ThirdPartyMessageFactory.jsetstatic_instance value) (set! ThirdPartyMessageFactory.jcell_instance value))

(define (ThirdPartyMessageFactory.jnew_0)
  (define this (new ThirdPartyMessageFactory% [jclass "ThirdPartyMessageFactory"]))
    (set-field! f_AUTHORIZED this "Authorized")
    (set-field! f_NOT_AUTHORIZED this "Not Authorized")
    (set-field! f_LINKAGE_ERROR this "Linkage Error")
  this)

(define (ThirdPartyMessageFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ThirdPartyMessageFactory.jstatic_instance)))))



