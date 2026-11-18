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
;; package org.allbinary.game.midlet

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./LicenseLoadingType.rkt" (LicenseLoadingType.jnew_1)])
(provide (all-defined-out))

(define LicenseLoadingTypeFactory%
  (class JObject%
    (super-new)
    (field [f_INITIAL_LOADING JR.null])
    (field [f_GAME_START JR.null])
    (field [f_LOGIN JR.null])
    (field [f_OTHER JR.null])))
(define (LicenseLoadingTypeFactory.jclassValue) LicenseLoadingTypeFactory%)

(define LicenseLoadingTypeFactory.jcell_instance 'jnone)
(define (LicenseLoadingTypeFactory.jstatic_instance)
  (when (eq? LicenseLoadingTypeFactory.jcell_instance 'jnone) (set! LicenseLoadingTypeFactory.jcell_instance (LicenseLoadingTypeFactory.jnew_0)))
  LicenseLoadingTypeFactory.jcell_instance)
(define (LicenseLoadingTypeFactory.jsetstatic_instance value) (set! LicenseLoadingTypeFactory.jcell_instance value))

(define (LicenseLoadingTypeFactory.jnew_0)
  (define this (new LicenseLoadingTypeFactory% [jclass "LicenseLoadingTypeFactory"]))
    (set-field! f_INITIAL_LOADING this (LicenseLoadingType.jnew_1 "Initial Loading"))
    (set-field! f_GAME_START this (LicenseLoadingType.jnew_1 "Game Start"))
    (set-field! f_LOGIN this (LicenseLoadingType.jnew_1 "Login"))
    (set-field! f_OTHER this (LicenseLoadingType.jnew_1 "Other/Usually The First Non Demo Level"))
  this)

(define (LicenseLoadingTypeFactory.jm_getIntance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LicenseLoadingTypeFactory.jstatic_instance)))))



