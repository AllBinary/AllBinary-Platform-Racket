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
  "../../../../allbinary_java.rkt"
  "./ThirdPartyStore.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define NoThirdPartyStore%
  (class ThirdPartyStore%
    (super-new)
    (define/override (jm_authorize_1 _clientInformationInterface)
    (let ()
      (let/ec jreturn
        (send this jm_setAuthorized_1 #t))))))
(define (NoThirdPartyStore.jclassValue) NoThirdPartyStore%)

(define (NoThirdPartyStore.jnew_0)
  (define this (new NoThirdPartyStore% [jclass "NoThirdPartyStore"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



