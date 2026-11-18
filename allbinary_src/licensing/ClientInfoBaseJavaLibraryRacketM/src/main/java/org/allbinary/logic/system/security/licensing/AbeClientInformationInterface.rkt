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
  "../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define AbeClientInformationInterface%
  (class JObject%
    (super-new)
    (define/public (jm_init_0)
      (raise (JR.newException "AbstractMethodError" "init")))
    (define/public (jm_getOperatingSystemInterface_0)
      (raise (JR.newException "AbstractMethodError" "getOperatingSystemInterface")))
    (define/public (jm_getName_0)
      (raise (JR.newException "AbstractMethodError" "getName")))
    (define/public (jm_getSpecialName_0)
      (raise (JR.newException "AbstractMethodError" "getSpecialName")))
    (define/public (jm_getVersion_0)
      (raise (JR.newException "AbstractMethodError" "getVersion")))
    (define/public (jm_getLicenseId_0)
      (raise (JR.newException "AbstractMethodError" "getLicenseId")))
    (define/public (jm_getLicenseServers_0)
      (raise (JR.newException "AbstractMethodError" "getLicenseServers")))
    (define/public (jm_getLicenseServer_1 _index)
      (raise (JR.newException "AbstractMethodError" "getLicenseServer")))
    (define/public (jm_getNumberOfLicenseServers_0)
      (raise (JR.newException "AbstractMethodError" "getNumberOfLicenseServers")))
    (define/public (jm_toHashtable_0)
      (raise (JR.newException "AbstractMethodError" "toHashtable")))
    (define/public (jm_isSameId_1 _alicenseId)
      (raise (JR.newException "AbstractMethodError" "isSameId")))
    (define/public (jm_isLargerOrDifferentServerList_1 _vector)
      (raise (JR.newException "AbstractMethodError" "isLargerOrDifferentServerList")))
    (define/public (jm_isHardSale_0)
      (raise (JR.newException "AbstractMethodError" "isHardSale")))
    (define/public (jm_toShortString_0)
      (raise (JR.newException "AbstractMethodError" "toShortString")))))
(define (AbeClientInformationInterface.jclassValue) AbeClientInformationInterface%)

(define (AbeClientInformationInterface.jnew_0)
  (define this (new AbeClientInformationInterface% [jclass "AbeClientInformationInterface"]))
  this)



