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
(provide (all-defined-out))

(define LicenseLevelUtil%
  (class JObject%
    (super-new)
    (define/public (jm_getMaxLevel_2 _maxLevel _demoLevel)
    (let ()
      (let/ec jreturn
        (jreturn _demoLevel))))))
(define (LicenseLevelUtil.jclassValue) LicenseLevelUtil%)

(define LicenseLevelUtil.jcell_instance 'jnone)
(define (LicenseLevelUtil.jstatic_instance)
  (when (eq? LicenseLevelUtil.jcell_instance 'jnone) (set! LicenseLevelUtil.jcell_instance (LicenseLevelUtil.jnew_0)))
  LicenseLevelUtil.jcell_instance)
(define (LicenseLevelUtil.jsetstatic_instance value) (set! LicenseLevelUtil.jcell_instance value))

(define (LicenseLevelUtil.jnew_0)
  (define this (new LicenseLevelUtil% [jclass "LicenseLevelUtil"]))
  this)

(define (LicenseLevelUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LicenseLevelUtil.jstatic_instance)))))



