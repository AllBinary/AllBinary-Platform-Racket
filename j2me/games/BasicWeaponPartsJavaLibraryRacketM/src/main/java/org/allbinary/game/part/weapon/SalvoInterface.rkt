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
;; package org.allbinary.game.part.weapon

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define SalvoInterface%
  (class JObject%
    (super-new)
    (define/public (jm_process_3 _allbinaryLayerManager _angle _otherAngle)
      (raise (JR.newException "AbstractMethodError" "process")))
    (define/public (jm_processScore_5 _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface)
      (raise (JR.newException "AbstractMethodError" "processScore")))))
(define (SalvoInterface.jclassValue) SalvoInterface%)

(define (SalvoInterface.jnew_0)
  (define this (new SalvoInterface% [jclass "SalvoInterface"]))
  this)



