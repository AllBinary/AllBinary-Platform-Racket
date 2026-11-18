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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/util/Enumeration.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/layer/Layer.rkt" (Layer.jstatic_ID)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../org/allbinary/util/EnumerationUtil.rkt" (EnumerationUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define LevelLayersFinder%
  (class JObject%
    (super-new)
    (field [f_enumerationUtil JR.null])
    (define/public (jm_get_1 _hashtable)
    (let ([_smallIntegerSingletonFactory JR.null][_list JR.null][_enumeration JR.null][_layerHashtableCanBeNull JR.null][_integerCanBeNull JR.null][_cachedIntegerCanBeNull JR.null])
      (let/ec jreturn
        (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (set! _list (BasicArrayListD.jnew_0))
        (set! _enumeration (send _hashtable jm_keys_0))
        (set! _layerHashtableCanBeNull JR.null)
        (set! _integerCanBeNull JR.null)
        (set! _cachedIntegerCanBeNull JR.null)
        (let/ec jbreak (let jloop () (when (send (get-field f_enumerationUtil this) jm_hasMoreElements_1 _enumeration)
                (let/ec jcontinue
            (set! _layerHashtableCanBeNull (send _hashtable jm_get_1 (send (get-field f_enumerationUtil this) jm_nextElement_1 _enumeration)))
            (set! _integerCanBeNull (send _layerHashtableCanBeNull jm_get_1 (Layer.jstatic_ID)))
            (set! _cachedIntegerCanBeNull (send _smallIntegerSingletonFactory jm_getAt_1 (send _integerCanBeNull jm_intValue_0)))
            (when (not (send _list jm_contains_1 _cachedIntegerCanBeNull))
                (begin
                (send _list jm_add_1 _cachedIntegerCanBeNull)))) (jloop))))
        (jreturn _list))))))
(define (LevelLayersFinder.jclassValue) LevelLayersFinder%)

(define LevelLayersFinder.jcell_instance 'jnone)
(define (LevelLayersFinder.jstatic_instance)
  (when (eq? LevelLayersFinder.jcell_instance 'jnone) (set! LevelLayersFinder.jcell_instance (LevelLayersFinder.jnew_0)))
  LevelLayersFinder.jcell_instance)
(define (LevelLayersFinder.jsetstatic_instance value) (set! LevelLayersFinder.jcell_instance value))

(define (LevelLayersFinder.jnew_0)
  (define this (new LevelLayersFinder% [jclass "LevelLayersFinder"]))
    (set-field! f_enumerationUtil this (EnumerationUtil.jm_getInstance_0))
  this)

(define (LevelLayersFinder.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LevelLayersFinder.jstatic_instance)))))



