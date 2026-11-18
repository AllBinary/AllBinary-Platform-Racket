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
;; package org.allbinary.game.resource

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/game/configuration/feature/GameFeatureControlledInterface.rkt")
(provide (all-defined-out))

(define ResourceRelativeRelationshipFactoryInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getResourceRelativeRelationshipList_1 _resource)
      (raise (JR.newException "AbstractMethodError" "getResourceRelativeRelationshipList")))
    (define/public (jm_addResourceRelativeRelationship_2 _resource _relativeRelationship)
      (raise (JR.newException "AbstractMethodError" "addResourceRelativeRelationship")))))
(define (ResourceRelativeRelationshipFactoryInterface.jclassValue) ResourceRelativeRelationshipFactoryInterface%)

(define (ResourceRelativeRelationshipFactoryInterface.jnew_0)
  (define this (new ResourceRelativeRelationshipFactoryInterface% [jclass "ResourceRelativeRelationshipFactoryInterface"]))
  this)



