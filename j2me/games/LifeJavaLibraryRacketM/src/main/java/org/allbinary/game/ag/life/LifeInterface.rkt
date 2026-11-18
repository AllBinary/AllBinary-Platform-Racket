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
;; package org.allbinary.game.ag.life

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define LifeInterface%
  (class JObject%
    (super-new)
    (define/public (jm_get_0)
      (raise (JR.newException "AbstractMethodError" "get")))
    (define/public (jm_set_1 _lives)
      (raise (JR.newException "AbstractMethodError" "set")))
    (define/public (jm_reset_0)
      (raise (JR.newException "AbstractMethodError" "reset")))
    (define/public (jm_add_1 _lives)
      (raise (JR.newException "AbstractMethodError" "add")))
    (define/public (jm_deaths_1 _lives)
      (raise (JR.newException "AbstractMethodError" "deaths")))
    (define/public (jm_getMaxlives_0)
      (raise (JR.newException "AbstractMethodError" "getMaxlives")))
    (define/public (jm_isAlive_0)
      (raise (JR.newException "AbstractMethodError" "isAlive")))))
(define (LifeInterface.jclassValue) LifeInterface%)

(define (LifeInterface.jnew_0)
  (define this (new LifeInterface% [jclass "LifeInterface"]))
  this)



