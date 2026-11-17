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
;; package org.allbinary.logic.io.path

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define AbPathData%
  (class JObject%
    (super-new)
    (field [f_EXTENSION_SEP JR.null])
    (field [f_SEPARATORCHAR 0])
    (field [f_SEPARATOR JR.null])))

(define AbPathData.jcell_instance 'jnone)
(define (AbPathData.jstatic_instance)
  (when (eq? AbPathData.jcell_instance 'jnone) (set! AbPathData.jcell_instance (AbPathData.jnew_0)))
  AbPathData.jcell_instance)

(define (AbPathData.jnew_0)
  (define this (new AbPathData% [jclass "AbPathData"]))
    (set-field! f_EXTENSION_SEP this (get-field f_PERIOD (CommonSeps.jm_getInstance_0)))
    (set-field! f_SEPARATORCHAR this (char->integer #\/))
    (set-field! f_SEPARATOR this (get-field f_FORWARD_SLASH (CommonSeps.jm_getInstance_0)))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AbPathData.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AbPathData.jstatic_instance)))))



