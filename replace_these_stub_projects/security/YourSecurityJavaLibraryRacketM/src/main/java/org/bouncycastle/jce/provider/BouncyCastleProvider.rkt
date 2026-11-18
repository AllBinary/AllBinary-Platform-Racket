#lang racket/base
;; Generated Code Do Not Modify
;; package org.bouncycastle.jce.provider

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/security/Provider.rkt")
(provide (all-defined-out))

(define BouncyCastleProvider%
  (class Provider%
    (super-new)
    (define/public (jm_setParameter_2 _parameterName _parameter)
    (let ()
      (let/ec jreturn (void))))))
(define (BouncyCastleProvider.jclassValue) BouncyCastleProvider%)

(define BouncyCastleProvider.jcell_info 'jnone)
(define (BouncyCastleProvider.jstatic_info)
  (when (eq? BouncyCastleProvider.jcell_info 'jnone) (set! BouncyCastleProvider.jcell_info "BouncyCastle Security Provider v1.41"))
  BouncyCastleProvider.jcell_info)
(define (BouncyCastleProvider.jsetstatic_info value) (set! BouncyCastleProvider.jcell_info value))

(define BouncyCastleProvider.jcell_PROVIDER_NAME 'jnone)
(define (BouncyCastleProvider.jstatic_PROVIDER_NAME)
  (when (eq? BouncyCastleProvider.jcell_PROVIDER_NAME 'jnone) (set! BouncyCastleProvider.jcell_PROVIDER_NAME "BC"))
  BouncyCastleProvider.jcell_PROVIDER_NAME)
(define (BouncyCastleProvider.jsetstatic_PROVIDER_NAME value) (set! BouncyCastleProvider.jcell_PROVIDER_NAME value))

(define (BouncyCastleProvider.jnew_0)
  (define this (new BouncyCastleProvider% [jclass "BouncyCastleProvider"]))
    (let ()
      (let/ec jreturn
        (JR.superInit this 'jsuper_3 (BouncyCastleProvider.jstatic_PROVIDER_NAME) 1.41 (BouncyCastleProvider.jstatic_info))))
  this)



