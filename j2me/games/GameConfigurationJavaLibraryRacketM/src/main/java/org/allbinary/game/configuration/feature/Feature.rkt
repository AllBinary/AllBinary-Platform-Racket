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
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener.rkt" (ChangedGameFeatureListener.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define Feature%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getName_0)))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))))
(define (Feature.jclassValue) Feature%)

(define Feature.jcell_hashtable 'jnone)
(define (Feature.jstatic_hashtable)
  (when (eq? Feature.jcell_hashtable 'jnone) (set! Feature.jcell_hashtable (send (StdUtil.jm_getInstance_0) jm_createHashtable_0)))
  Feature.jcell_hashtable)
(define (Feature.jsetstatic_hashtable value) (set! Feature.jcell_hashtable value))

(define (Feature.jnew_1 _name)
  (define this (new Feature% [jclass "Feature"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name)
        (Feature.jm_add_2 _name this)
        (send (ChangedGameFeatureListener.jm_getInstance_0) jm_add_1 this)))
  this)

(define (Feature.jm_getInstance_1 _name)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (Feature.jstatic_hashtable))))))

(define (Feature.jm_add_2 _name _gameFeature)
    (let ()
      (let/ec jreturn
        (JR.className (Feature.jstatic_hashtable)))))



