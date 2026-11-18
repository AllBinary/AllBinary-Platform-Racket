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
  "./ClientInformation.rkt")
(lazy-require ["../../../../../../org/allbinary/business/init/LicenseInitInfoUtil.rkt" (LicenseInitInfoUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringValidationUtil.rkt" (StringValidationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/system/os/OperatingSystemFactory.rkt" (OperatingSystemFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

; This is the information sent to the license server
(define AbeClientInformation%
  (class ClientInformation%
    (super-new)
    (field [f_logUtil JR.null])
    (define/override (jm_init_0)
    (let ([_licenseInitInfo JR.null][_stringValidationUtil JR.null][_NONE JR.null][_commonStrings JR.null][_logUtil JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _logUtil (LogUtil.jm_getInstance_0))
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send _logUtil jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_CONSTRUCTOR _commonStrings) _e))])
            (send this jm_setOperatingSystemInterface_1 (send (OperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0))
            (set! _licenseInitInfo (send (LicenseInitInfoUtil.jm_getInstance_0) jm_read_0))
            (send this jm_setLicenseId_1 (send _licenseInitInfo jm_getLicenseId_0))
            (send this jm_setLicenseServers_1 (send _licenseInitInfo jm_getServerList_0))
            (set! _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
            (when (send _stringValidationUtil jm_isEmpty_1 (send this jm_getLicenseId_0))
                (begin
                (set! _NONE "No License Id")
                (send this jm_setLicenseId_1 _NONE)))
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Special Name: ") jm_append_1 (send this jm_getSpecialName_0)) jm_toString_0) this (get-field f_CONSTRUCTOR _commonStrings))))))))
(define (AbeClientInformation.jclassValue) AbeClientInformation%)

(define (AbeClientInformation.jnew_4 _name _version _specialName _shortName)
  (define this (new AbeClientInformation% [jclass "AbeClientInformation"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)



