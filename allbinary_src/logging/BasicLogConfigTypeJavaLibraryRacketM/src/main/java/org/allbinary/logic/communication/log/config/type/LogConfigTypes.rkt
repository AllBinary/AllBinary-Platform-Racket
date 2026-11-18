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
;; package org.allbinary.logic.communication.log.config.type

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define LogConfigTypes%
  (class JObject%
    (super-new)))
(define (LogConfigTypes.jclassValue) LogConfigTypes%)

(define LogConfigTypes.jcell_LOGGING 'jnone)
(define (LogConfigTypes.jstatic_LOGGING)
  (when (eq? LogConfigTypes.jcell_LOGGING 'jnone) (set! LogConfigTypes.jcell_LOGGING (BasicArrayListD.jnew_0)))
  LogConfigTypes.jcell_LOGGING)
(define (LogConfigTypes.jsetstatic_LOGGING value) (set! LogConfigTypes.jcell_LOGGING value))

(define (LogConfigTypes.jnew_0)
  (define this (new LogConfigTypes% [jclass "LogConfigTypes"]))
    (let ()
      (let/ec jreturn (void)))
  this)



