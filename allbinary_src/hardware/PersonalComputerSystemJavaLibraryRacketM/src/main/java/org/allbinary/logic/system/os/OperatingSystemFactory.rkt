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
;; package org.allbinary.logic.system.os

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/lang/System.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogFactory.rkt" (LogFactory.jm_getInstanceF_3)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.rkt" (LogConfigTypeFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypes.rkt" (LogConfigTypes.jstatic_LOGGING)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/os/linux/LinuxOperatingSystemFactory.rkt" (LinuxOperatingSystemFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/os/solaris/SolarisOperatingSystemFactory.rkt" (SolarisOperatingSystemFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/os/windows/WindowsOperatingSystemFactory.rkt" (WindowsOperatingSystemFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./NoOperatingSystem.rkt" (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM)])
(lazy-require ["./OperatingSystems.rkt" (OperatingSystems.jm_getInstance_0)])
(lazy-require ["./SystemProperties.rkt" (SystemProperties.jm_getInstance_0)])
(provide (all-defined-out))

(define OperatingSystemFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_genericOperatingSystem JR.null])
    (field [f_hasDetected #f])
    (define/public (jm_getOperatingSystemInstance_0)
    (let ([_operatingSystems JR.null][_systemProperties JR.null][_osName JR.null][_osArch JR.null][_osVersion JR.null][_log JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (when (JR.className (LogConfigTypes.jstatic_LOGGING))
                (begin
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_GET_INSTANCE (get-field f_commonStrings this)) _e)))
            (jreturn (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM)))])
            (set! _operatingSystems (OperatingSystems.jm_getInstance_0))
            (set! _systemProperties (SystemProperties.jm_getInstance_0))
            (set! _osName (send _systemProperties jm_getName_0))
            (set! _osArch (send _systemProperties jm_getArch_0))
            (set! _osVersion (send _systemProperties jm_getVersion_0))
            (when (not (get-field f_hasDetected this))
                (begin
                (send (get-field f_logUtil this) jm_putF_3 (JR.concat "osName: " _osName) this (get-field f_GET_INSTANCE (get-field f_commonStrings this)))
                (set-field! f_hasDetected this #t)
                (if (>= (JR.indexOf _osName (get-field f_LINUX _operatingSystems)) 0)
                    (begin
                    (when (JR.className (LogConfigTypes.jstatic_LOGGING))
                        (begin
                        (send (get-field f_logUtil this) jm_putF_3 "Found a Linux OS" this (get-field f_GET_INSTANCE (get-field f_commonStrings this)))))
                    (set-field! f_genericOperatingSystem this (send (LinuxOperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0)))
                    (if (>= (JR.indexOf _osName (get-field f_WINDOWS _operatingSystems)) 0)
                    (begin
                    (when (JR.className (LogConfigTypes.jstatic_LOGGING))
                        (begin
                        (send (get-field f_logUtil this) jm_putF_3 "Found a Windows OS" this (get-field f_GET_INSTANCE (get-field f_commonStrings this)))))
                    (set-field! f_genericOperatingSystem this (send (WindowsOperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0)))
                    (if (>= (JR.indexOf _osName (get-field f_SOLARIS _operatingSystems)) 0)
                    (begin
                    (when (JR.className (LogConfigTypes.jstatic_LOGGING))
                        (begin
                        (send (get-field f_logUtil this) jm_putF_3 "Found a Solaris OS" this (get-field f_GET_INSTANCE (get-field f_commonStrings this)))))
                    (set-field! f_genericOperatingSystem this (send (SolarisOperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0)))
                    (begin
                    (raise (JR.newException "Exception" (send (send (send (StringMaker.jnew_0) jm_append_1 "OS Not Supported: ") jm_append_1 _osName) jm_toString_0)))))))
                (set! _log (LogFactory.jm_getInstanceF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "OperatingSystem Info: ") jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (get-field f_genericOperatingSystem this))) jm_toString_0) this (get-field f_GET_INSTANCE (get-field f_commonStrings this))))
                (JR.println (send _log jm_toString_0))
                (send (get-field f_logUtil this) jm_putL_1 _log)))
            (jreturn (get-field f_genericOperatingSystem this))))))))
(define (OperatingSystemFactory.jclassValue) OperatingSystemFactory%)

(define OperatingSystemFactory.jcell_instance 'jnone)
(define (OperatingSystemFactory.jstatic_instance)
  (when (eq? OperatingSystemFactory.jcell_instance 'jnone) (set! OperatingSystemFactory.jcell_instance (OperatingSystemFactory.jnew_0)))
  OperatingSystemFactory.jcell_instance)
(define (OperatingSystemFactory.jsetstatic_instance value) (set! OperatingSystemFactory.jcell_instance value))

(define (OperatingSystemFactory.jnew_0)
  (define this (new OperatingSystemFactory% [jclass "OperatingSystemFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_genericOperatingSystem this (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM))
    (set-field! f_hasDetected this #f)
    (let ()
      (let/ec jreturn (void)))
  this)

(define (OperatingSystemFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OperatingSystemFactory.jstatic_instance)))))



