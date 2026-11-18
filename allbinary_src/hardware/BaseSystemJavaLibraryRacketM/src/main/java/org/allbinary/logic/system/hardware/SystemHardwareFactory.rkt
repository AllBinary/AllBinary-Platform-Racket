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
;; package org.allbinary.logic.system.hardware

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./NoHardware.rkt" (NoHardware.jm_getInstance_0)])
(lazy-require ["./HardwareFactory.rkt" (HardwareFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define SystemHardwareFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_hardwareInterface JR.null])
    (define/public (jm_getInstance_1 _operatingSystemInterface)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)) _e))])
            (when (eq? (get-field f_hardwareInterface this) (NoHardware.jm_getInstance_0))
                (begin
                (set-field! f_hardwareInterface this (send (HardwareFactory.jm_getInstance_0) jm_getInstance_1 _operatingSystemInterface))))
            (send (get-field f_logUtil this) jm_putF_3 "Found Hardware" this (get-field f_CONSTRUCTOR (get-field f_commonStrings this))))
        (jreturn (get-field f_hardwareInterface this)))))))
(define (SystemHardwareFactory.jclassValue) SystemHardwareFactory%)

(define SystemHardwareFactory.jcell_instance 'jnone)
(define (SystemHardwareFactory.jstatic_instance)
  (when (eq? SystemHardwareFactory.jcell_instance 'jnone) (set! SystemHardwareFactory.jcell_instance (SystemHardwareFactory.jnew_0)))
  SystemHardwareFactory.jcell_instance)
(define (SystemHardwareFactory.jsetstatic_instance value) (set! SystemHardwareFactory.jcell_instance value))

(define (SystemHardwareFactory.jnew_0)
  (define this (new SystemHardwareFactory% [jclass "SystemHardwareFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_hardwareInterface this (NoHardware.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (SystemHardwareFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SystemHardwareFactory.jstatic_instance)))))

(define (SystemHardwareFactory.jm_static_toString_0)
    (let ([_systemHardwareFactory JR.null][_osBuffer JR.null])
      (let/ec jreturn
        (set! _systemHardwareFactory (SystemHardwareFactory.jm_getInstance_0))
        (set! _osBuffer (StringMaker.jnew_0))
        (send _osBuffer jm_append_1 "Hardware Info: \n")
        (if (not (JR.null? (get-field f_hardwareInterface _systemHardwareFactory)))
            (begin
            (send _osBuffer jm_append_1 (JR.toString (get-field f_hardwareInterface _systemHardwareFactory))))
            (begin
            (send _osBuffer jm_append_1 (get-field f_NULL_STRING (StringUtil.jm_getInstance_0)))))
        (jreturn (send _osBuffer jm_toString_0)))))



