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
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/layer/NamedInterface.rkt")
(provide (all-defined-out))

(define GameInputInterface%
  (class JObject%
    (super-new)
    (define/public (jm_processInput_1 _layerManager)
      (raise (JR.newException "AbstractMethodError" "processInput")))
    (define/public (jm_initInputProcessors_0)
      (raise (JR.newException "AbstractMethodError" "initInputProcessors")))))
(define (GameInputInterface.jclassValue) GameInputInterface%)

(define (GameInputInterface.jnew_0)
  (define this (new GameInputInterface% [jclass "GameInputInterface"]))
  this)



