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
;; package org.allbinary.business.init

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./LicenseInitInfo.rkt" (LicenseInitInfo.jnew_0)])
(provide (all-defined-out))

(define LicenseInitInfoUtil%
  (class JObject%
    (super-new)
    (field [f_INITFILENAME JR.null])
    (field [f_ABOUT JR.null])
    (field [f_PRIVACY_POLICY JR.null])
    (field [f_OFFICIAL_ALLBINARY_SERVICES_SERVER JR.null])
    (define/public (jm_setFilePath_1 _filePath)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_write_1 _initData)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_read_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_readAgain_1 0)))))
    (define/public (jm_readAgain_1 _initializeCounter)
    (let ([_licenseInitInfo JR.null])
      (let/ec jreturn
        (set! _licenseInitInfo (LicenseInitInfo.jnew_0))
        (send _licenseInitInfo jm_clearServers_0)
        (send _licenseInitInfo jm_addServer_1 (get-field f_OFFICIAL_ALLBINARY_SERVICES_SERVER this))
        (jreturn _licenseInitInfo))))))
(define (LicenseInitInfoUtil.jclassValue) LicenseInitInfoUtil%)

(define LicenseInitInfoUtil.jcell_instance 'jnone)
(define (LicenseInitInfoUtil.jstatic_instance)
  (when (eq? LicenseInitInfoUtil.jcell_instance 'jnone) (set! LicenseInitInfoUtil.jcell_instance (LicenseInitInfoUtil.jnew_0)))
  LicenseInitInfoUtil.jcell_instance)
(define (LicenseInitInfoUtil.jsetstatic_instance value) (set! LicenseInitInfoUtil.jcell_instance value))

(define (LicenseInitInfoUtil.jnew_0)
  (define this (new LicenseInitInfoUtil% [jclass "LicenseInitInfoUtil"]))
    (set-field! f_INITFILENAME this "licenseinitdata.dat")
    (set-field! f_ABOUT this "about")
    (set-field! f_PRIVACY_POLICY this "privacy_policy")
    (set-field! f_OFFICIAL_ALLBINARY_SERVICES_SERVER this "https://services.allbinary.com/LicServ/serverssl.php")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (LicenseInitInfoUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LicenseInitInfoUtil.jstatic_instance)))))



