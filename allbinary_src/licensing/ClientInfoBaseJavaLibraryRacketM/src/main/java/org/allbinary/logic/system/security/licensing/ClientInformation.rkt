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
  "./AbeClientInformationInterface.rkt")
(lazy-require ["../../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/system/hardware/SystemHardwareFactory.rkt" (SystemHardwareFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/system/os/NoOperatingSystem.rkt" (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM)])
(lazy-require ["../../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["./AbeClientInformationData.rkt" (AbeClientInformationData.jm_getInstance_0)])
(provide (all-defined-out))

; This is the information sent to the license server
(define ClientInformation%
  (class JObject%
    (super-new)
    (field [f_operatingSystemInterface JR.null])
    (field [f_tsUtil JR.null])
    (field [f_name JR.null])
    (field [f_shortName JR.null])
    (field [f_version JR.null])
    (field [f_specialName JR.null])
    (field [f_hardSale #f])
    (field [f_licenseId JR.null])
    (field [f_licenseServers JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getOperatingSystemInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_operatingSystemInterface this)))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_getSpecialName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_specialName this)))))
    (define/public (jm_getVersion_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_version this)))))
    (define/public (jm_getLicenseId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_licenseId this)))))
    (define/public (jm_getLicenseServers_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_licenseServers this)))))
    (define/public (jm_getLicenseServer_1 _index)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_objectArray (get-field f_licenseServers this)) _index)))))
    (define/public (jm_getNumberOfLicenseServers_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_licenseServers this) jm_size_0)))))
    (define/public (jm_toHashtable_0)
    (let ([_abeClientInformationData JR.null][_genericOperatingSystem JR.null][_clientInfoHashtable JR.null][_hardwareInterface JR.null][_hardwareString JR.null])
      (let/ec jreturn
        (set! _abeClientInformationData (AbeClientInformationData.jm_getInstance_0))
        (set! _genericOperatingSystem (send this jm_getOperatingSystemInterface_0))
        (set! _clientInfoHashtable (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
        (send _clientInfoHashtable jm_put_2 (get-field f_NAME _abeClientInformationData) (get-field f_name this))
        (send _clientInfoHashtable jm_put_2 (get-field f_VERSION _abeClientInformationData) (get-field f_version this))
        (send _clientInfoHashtable jm_put_2 (get-field f_SPECIALNAME _abeClientInformationData) (get-field f_specialName this))
        (send _clientInfoHashtable jm_put_2 (get-field f_LICENSEID _abeClientInformationData) (send this jm_getLicenseId_0))
        (send _clientInfoHashtable jm_put_2 (get-field f_OSNAME _abeClientInformationData) (send _genericOperatingSystem jm_getName_0))
        (send _clientInfoHashtable jm_put_2 (get-field f_OSARCH _abeClientInformationData) (send _genericOperatingSystem jm_getArch_0))
        (send _clientInfoHashtable jm_put_2 (get-field f_OSVERSION _abeClientInformationData) (send _genericOperatingSystem jm_getVersion_0))
        (send _clientInfoHashtable jm_put_2 (get-field f_OS _abeClientInformationData) (send _genericOperatingSystem jm_toString_0))
        (set! _hardwareInterface (send (SystemHardwareFactory.jm_getInstance_0) jm_getInstance_1 _genericOperatingSystem))
        (set! _hardwareString (send _hardwareInterface jm_toString_0))
        (send _clientInfoHashtable jm_put_2 (get-field f_HARDWARE _abeClientInformationData) _hardwareString)
        (jreturn _clientInfoHashtable))))
    (define/public (jm_isSameId_1 _alicenseId)
    (let ()
      (let/ec jreturn
        (if (= (send (get-field f_tsUtil this) jm_compareTo_2 (send this jm_getLicenseId_0) _alicenseId) 0)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_isLargerOrDifferentServerList_1 _list)
    (let ([_size JR.null][_currentSize JR.null][_newServerName JR.null][_nextOldServerName JR.null][_index2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (JR.i32 (- (send _list jm_size_0) 1)))
        (set! _currentSize (JR.i32 (- (send (get-field f_licenseServers this) jm_size_0) 1)))
        (when (> _size _currentSize)
            (begin
            (jreturn #t)))
        (begin
            (set! _index _size)
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _newServerName (vector-ref (get-field f_objectArray _list) _index))
            (begin
                (set! _index2 _currentSize)
                (let/ec jbreak (let jloop () (when (>= _index2 0)
                    (let/ec jcontinue
                (set! _nextOldServerName (vector-ref (get-field f_objectArray (get-field f_licenseServers this)) _index))
                (when (not (= (send (get-field f_tsUtil this) jm_compareTo_2 _newServerName _nextOldServerName) 0))
                    (begin
                    (jreturn #t))))
                    (set! _index2 (JR.i32 (- _index2 1))) (jloop))))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn #f))))
    (define/public (jm_setHardSale_1 _hardSale)
    (let ()
      (let/ec jreturn
        (set-field! f_hardSale this _hardSale))))
    (define/public (jm_isHardSale_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_hardSale this)))))
    (define/public (jm_setOperatingSystemInterface_1 _operatingSystemInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_operatingSystemInterface this _operatingSystemInterface))))
    (define/public (jm_setLicenseId_1 _licenseId)
    (let ()
      (let/ec jreturn
        (set-field! f_licenseId this _licenseId))))
    (define/public (jm_setLicenseServers_1 _licenseServers)
    (let ()
      (let/ec jreturn
        (set-field! f_licenseServers this _licenseServers))))
    (define/public (jm_toShortString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_shortName this)))))))
(define (ClientInformation.jclassValue) ClientInformation%)

(define (ClientInformation.jnew_4 _name _version _specialName _shortName)
  (define this (new ClientInformation% [jclass "ClientInformation"]))
    (set-field! f_operatingSystemInterface this (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    
    
    
    
    (set-field! f_hardSale this #t)
    (set-field! f_licenseId this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_licenseServers this (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name)
        (set-field! f_version this _version)
        (set-field! f_specialName this _specialName)
        (set-field! f_shortName this (send (send (send (send (StringMaker.jnew_0) jm_append_1 _shortName) jm_append_1 (get-field f_UNDERSCORE (CommonSeps.jm_getInstance_0))) jm_append_1 _version) jm_toString_0))
        (send this jm_init_0)))
  this)



