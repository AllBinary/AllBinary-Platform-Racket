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
;; package org.allbinary.layer.event

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/EventListenerInterface.rkt")
(provide (all-defined-out))

(define ScrollMapEventListenerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_onMoveEvent_1 _layerManagerEvent)
      (raise (JR.newException "AbstractMethodError" "onMoveEvent")))))
(define (ScrollMapEventListenerInterface.jclassValue) ScrollMapEventListenerInterface%)

(define (ScrollMapEventListenerInterface.jnew_0)
  (define this (new ScrollMapEventListenerInterface% [jclass "ScrollMapEventListenerInterface"]))
  this)



