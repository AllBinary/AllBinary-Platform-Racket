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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./Sound.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./NoPlayer.rkt" (NoPlayer.jstatic_NO_PLAYER)])
(provide (all-defined-out))

(define NoSound%
  (class Sound%
    (super-new)))
(define (NoSound.jclassValue) NoSound%)

(define NoSound.jcell_instance 'jnone)
(define (NoSound.jstatic_instance)
  (when (eq? NoSound.jcell_instance 'jnone) (set! NoSound.jcell_instance (NoSound.jnew_0)))
  NoSound.jcell_instance)
(define (NoSound.jsetstatic_instance value) (set! NoSound.jcell_instance value))

(define (NoSound.jnew_0)
  (define this (new NoSound% [jclass "NoSound"]))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setPlayerP_1 (NoPlayer.jstatic_NO_PLAYER))))
  this)

(define (NoSound.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoSound.jstatic_instance)))))



