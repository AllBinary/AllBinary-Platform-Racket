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
  "./ResourceRelativeRelationshipFactoryInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ResourceRelativeRelationshipFactory%
  (class JObject%
    (super-new)
    (field [f_basicArrayListUtil JR.null])
    (field [f_hashtable JR.null])
    (field [f_initialized #f])
    (define/public (jm_init_1 _level)
    (let ()
      (let/ec jreturn
        (send this jm_setInitialized_1 #t))))
    (define/public (jm_getResourceRelativeRelationshipList_1 _resource)
    (let ([_listCanBeNull JR.null])
      (let/ec jreturn
        (set! _listCanBeNull (send (get-field f_hashtable this) jm_get_1 _resource))
        (when (JR.null? _listCanBeNull)
            (begin
            (jreturn (send (get-field f_basicArrayListUtil this) jm_getImmutableInstance_0))))
        (jreturn _listCanBeNull))))
    (define/public (jm_addResourceRelativeRelationship_2 _resource _hardPoint)
    (let ([_list JR.null])
      (let/ec jreturn
        (set! _list (send this jm_getResourceRelativeRelationshipList_1 _resource))
        (when (eq? _list (send (get-field f_basicArrayListUtil this) jm_getImmutableInstance_0))
            (begin
            (set! _list (BasicArrayListD.jnew_0))))
        (send _list jm_add_1 _hardPoint)
        (send (get-field f_hashtable this) jm_put_2 _resource _list))))
    (define/public (jm_isLoadingLevel_1 _level)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_isFeature_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_setInitialized_1 _initialized)
    (let ()
      (let/ec jreturn
        (set-field! f_initialized this _initialized))))
    (define/public (jm_isInitialized_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initialized this)))))))
(define (ResourceRelativeRelationshipFactory.jclassValue) ResourceRelativeRelationshipFactory%)

(define (ResourceRelativeRelationshipFactory.jnew_0)
  (define this (new ResourceRelativeRelationshipFactory% [jclass "ResourceRelativeRelationshipFactory"]))
    (set-field! f_basicArrayListUtil this (BasicArrayListUtil.jm_getInstance_0))
    (set-field! f_hashtable this (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
    
  this)



