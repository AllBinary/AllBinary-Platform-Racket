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
;; package org.allbinary.logic.system.security.licensing

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/thirdparty/store/LongArrayIdentifierInterface.rkt"
  "./AbeClientInformation.rkt")
(provide (all-defined-out))

(define StoreAppClientInformation%
  (class AbeClientInformation%
    (super-new)
    (field [f_longArrayIdentifier JR.null])
    (define/public (jm_getLongArrayIdentifier_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_longArrayIdentifier this)))))))
(define (StoreAppClientInformation.jclassValue) StoreAppClientInformation%)

(define (StoreAppClientInformation.jnew_5 _name _version _specialName _shortName _longArrayIdentifier)
  (define this (new StoreAppClientInformation% [jclass "StoreAppClientInformation"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_longArrayIdentifier this _longArrayIdentifier)))
  this)



