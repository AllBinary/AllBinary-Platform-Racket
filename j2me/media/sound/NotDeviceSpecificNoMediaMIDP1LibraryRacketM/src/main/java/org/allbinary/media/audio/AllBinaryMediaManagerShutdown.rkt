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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./AllBinaryMediaManager.rkt" (AllBinaryMediaManager.jm_shutdown_1)])
(provide (all-defined-out))

(define AllBinaryMediaManagerShutdown%
  (class JObject%
    (super-new)))
(define (AllBinaryMediaManagerShutdown.jclassValue) AllBinaryMediaManagerShutdown%)

(define AllBinaryMediaManagerShutdown.jcell_instance 'jnone)
(define (AllBinaryMediaManagerShutdown.jstatic_instance)
  (when (eq? AllBinaryMediaManagerShutdown.jcell_instance 'jnone) (set! AllBinaryMediaManagerShutdown.jcell_instance (AllBinaryMediaManagerShutdown.jnew_0)))
  AllBinaryMediaManagerShutdown.jcell_instance)
(define (AllBinaryMediaManagerShutdown.jsetstatic_instance value) (set! AllBinaryMediaManagerShutdown.jcell_instance value))

(define (AllBinaryMediaManagerShutdown.jnew_0)
  (define this (new AllBinaryMediaManagerShutdown% [jclass "AllBinaryMediaManagerShutdown"]))
  this)

(define (AllBinaryMediaManagerShutdown.jm_shutdown_1 _soundsFactoryInterface)
    (let ([_logUtil JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (set! _logUtil (LogUtil.jm_getInstance_0))
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (send _logUtil jm_putF_3 (get-field f_START _commonStrings) (AllBinaryMediaManagerShutdown.jstatic_instance) "shutdown")
        (AllBinaryMediaManager.jm_shutdown_1 _soundsFactoryInterface))))



