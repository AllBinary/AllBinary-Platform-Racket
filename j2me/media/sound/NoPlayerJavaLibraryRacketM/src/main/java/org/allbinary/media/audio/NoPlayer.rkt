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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./BasicPlayer.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./NullControl.rkt" (NullControl.jnew_0)])
(provide (all-defined-out))

(define NoPlayer%
  (class BasicPlayer%
    (super-new)
    (define/override (jm_close_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getContentType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_STRING (StringUtil.jm_getInstance_0))))))
    (define/override (jm_getControl_1 _controlType)
    (let ()
      (let/ec jreturn
        (jreturn (NullControl.jnew_0)))))
    (define/override (jm_getControls_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.newArray JR.null 0)))))))
(define (NoPlayer.jclassValue) NoPlayer%)

(define NoPlayer.jcell_NO_PLAYER 'jnone)
(define (NoPlayer.jstatic_NO_PLAYER)
  (when (eq? NoPlayer.jcell_NO_PLAYER 'jnone) (set! NoPlayer.jcell_NO_PLAYER (NoPlayer.jnew_0)))
  NoPlayer.jcell_NO_PLAYER)
(define (NoPlayer.jsetstatic_NO_PLAYER value) (set! NoPlayer.jcell_NO_PLAYER value))

(define (NoPlayer.jnew_0)
  (define this (new NoPlayer% [jclass "NoPlayer"]))
    (let ()
      (let/ec jreturn (void)))
  this)



