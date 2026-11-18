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
(provide (all-defined-out))

;ActualPlatform
(define SystemProperties%
  (class JObject%
    (super-new)
    (field [f_OS_NAME JR.null])
    (field [f_OS_ARCH JR.null])
    (field [f_OS_VERSION JR.null])
    (field [f_USER_HOME JR.null])
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (System.jm_getProperty_1 (get-field f_OS_NAME this))))))
    (define/public (jm_getArch_0)
    (let ()
      (let/ec jreturn
        (jreturn (System.jm_getProperty_1 (get-field f_OS_ARCH this))))))
    (define/public (jm_getVersion_0)
    (let ()
      (let/ec jreturn
        (jreturn (System.jm_getProperty_1 (get-field f_OS_VERSION this))))))
    (define/public (jm_getUserHomePath_0)
    (let ()
      (let/ec jreturn
        (jreturn (System.jm_getProperty_1 (get-field f_USER_HOME this))))))))
(define (SystemProperties.jclassValue) SystemProperties%)

(define SystemProperties.jcell_instance 'jnone)
(define (SystemProperties.jstatic_instance)
  (when (eq? SystemProperties.jcell_instance 'jnone) (set! SystemProperties.jcell_instance (SystemProperties.jnew_0)))
  SystemProperties.jcell_instance)
(define (SystemProperties.jsetstatic_instance value) (set! SystemProperties.jcell_instance value))

(define (SystemProperties.jnew_0)
  (define this (new SystemProperties% [jclass "SystemProperties"]))
    (set-field! f_OS_NAME this "os.name")
    (set-field! f_OS_ARCH this "os.arch")
    (set-field! f_OS_VERSION this "os.version")
    (set-field! f_USER_HOME this "user.home")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (SystemProperties.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SystemProperties.jstatic_instance)))))



