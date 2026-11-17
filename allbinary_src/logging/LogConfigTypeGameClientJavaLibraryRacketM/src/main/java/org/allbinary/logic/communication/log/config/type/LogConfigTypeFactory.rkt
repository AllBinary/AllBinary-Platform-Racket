#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary.logic.communication.log.config.type

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(lazy-require ["./LogConfigType.rkt" (LogConfigType.jnew_2)])
(lazy-require ["./LogConfigTypes.rkt" (LogConfigTypes.jstatic_LOGGING)])
(provide (all-defined-out))

(define LogConfigTypeFactory%
  (class JObject%
    (super-new)
    (field [f_NO_DESCRIPTION JR.null])
    (field [f_OS JR.null])
    (field [f_FACTORYERROR JR.null])))

(define LogConfigTypeFactory.jcell_instance 'jnone)
(define (LogConfigTypeFactory.jstatic_instance)
  (when (eq? LogConfigTypeFactory.jcell_instance 'jnone) (set! LogConfigTypeFactory.jcell_instance (LogConfigTypeFactory.jnew_0)))
  LogConfigTypeFactory.jcell_instance)

(define (LogConfigTypeFactory.jnew_0)
  (define this (new LogConfigTypeFactory% [jclass "LogConfigTypeFactory"]))
    (set-field! f_NO_DESCRIPTION this "No Description")
    (set-field! f_OS this (LogConfigType.jnew_2 "Operating System" (get-field f_NO_DESCRIPTION this)))
    (set-field! f_FACTORYERROR this (LogConfigType.jnew_2 "Factory Error" (get-field f_NO_DESCRIPTION this)))
    (let ()
      (let/ec jreturn
        (JR.className (LogConfigTypes.jstatic_LOGGING))
        (JR.className (LogConfigTypes.jstatic_LOGGING))))
  this)

(define (LogConfigTypeFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LogConfigTypeFactory.jstatic_instance)))))



