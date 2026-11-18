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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/input/mapping/PersistentInputMapping.rkt" (PersistentInputMapping.jm_getNullInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./LaptopGameInputMapping.rkt" (LaptopGameInputMapping.jnew_0)])
(provide (all-defined-out))

(define PlatformInputMappingFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_inputToGameKeyMapping JR.null])
    (define/public (jm_getPersistentInputMappingInstance_0)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_GET_INSTANCE _commonStrings) _e))])
            (when (eq? (get-field f_inputToGameKeyMapping this) (PersistentInputMapping.jm_getNullInstance_0))
                (begin
                (set-field! f_inputToGameKeyMapping this (LaptopGameInputMapping.jnew_0)))))
        (jreturn (get-field f_inputToGameKeyMapping this)))))))
(define (PlatformInputMappingFactory.jclassValue) PlatformInputMappingFactory%)

(define PlatformInputMappingFactory.jcell_instance 'jnone)
(define (PlatformInputMappingFactory.jstatic_instance)
  (when (eq? PlatformInputMappingFactory.jcell_instance 'jnone) (set! PlatformInputMappingFactory.jcell_instance (PlatformInputMappingFactory.jnew_0)))
  PlatformInputMappingFactory.jcell_instance)
(define (PlatformInputMappingFactory.jsetstatic_instance value) (set! PlatformInputMappingFactory.jcell_instance value))

(define (PlatformInputMappingFactory.jnew_0)
  (define this (new PlatformInputMappingFactory% [jclass "PlatformInputMappingFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_inputToGameKeyMapping this (PersistentInputMapping.jm_getNullInstance_0))
  this)

(define (PlatformInputMappingFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PlatformInputMappingFactory.jstatic_instance)))))



