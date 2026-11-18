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
;; package org.allbinary.logic.system.security.licensing.registration

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define RegistrationConfiguration%
  (class JObject%
    (super-new)
    (field [f_registrationCode JR.null])
    (field [f_NAME JR.null])
    (define/public (jm_read_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_write_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (StringMaker.jnew_0) jm_append_1 "Registration Code: ") jm_append_1 (send this jm_getRegistrationCode_0)) jm_toString_0)))))
    (define/public (jm_setRegistrationCode_1 _registrationCode)
    (let ()
      (let/ec jreturn
        (set-field! f_registrationCode this _registrationCode))))
    (define/public (jm_getRegistrationCode_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_registrationCode this)))))))
(define (RegistrationConfiguration.jclassValue) RegistrationConfiguration%)

(define RegistrationConfiguration.jcell_SINGLETON 'jnone)
(define (RegistrationConfiguration.jstatic_SINGLETON)
  (when (eq? RegistrationConfiguration.jcell_SINGLETON 'jnone) (set! RegistrationConfiguration.jcell_SINGLETON (RegistrationConfiguration.jnew_0)))
  RegistrationConfiguration.jcell_SINGLETON)
(define (RegistrationConfiguration.jsetstatic_SINGLETON value) (set! RegistrationConfiguration.jcell_SINGLETON value))

(define (RegistrationConfiguration.jnew_0)
  (define this (new RegistrationConfiguration% [jclass "RegistrationConfiguration"]))
    (set-field! f_registrationCode this "No Registration Code")
    (set-field! f_NAME this "registrationid")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (RegistrationConfiguration.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (RegistrationConfiguration.jstatic_SINGLETON)))))



