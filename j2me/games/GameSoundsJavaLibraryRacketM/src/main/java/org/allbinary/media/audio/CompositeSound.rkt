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
  "./Sound.rkt")
(lazy-require ["./PlayerComposite.rkt" (PlayerComposite.jnew_2)])
(lazy-require ["./AllBinaryMediaManager.rkt" (AllBinaryMediaManager.jm_createPlayer_1)])
(provide (all-defined-out))

(define CompositeSound%
  (class Sound%
    (super-new)
    (define/override (jm_init_0)
    (let ()
      (let/ec jreturn
        (send this jm_setPlayerP_1 (PlayerComposite.jnew_2 (AllBinaryMediaManager.jm_createPlayer_1 (send this jm_getResource_0)) 570)))))))
(define (CompositeSound.jclassValue) CompositeSound%)

(define (CompositeSound.jnew_1 _resource)
  (define this (new CompositeSound% [jclass "CompositeSound"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



