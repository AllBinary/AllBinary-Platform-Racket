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
;; package org.allbinary.game.configuration

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define GameConfigurationSingleton%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (field [f_hashtable JR.null])
    (define/public (jm_getInstanceByName_1 _name)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_hashtable this) jm_get_1 _name)))))
    (define/public (jm_getOptionsBasicArrayList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))
    (define/public (jm_add_1 _gameConfiguration)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_add_1 _gameConfiguration))))
    (define/public (jm_getHashtable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_hashtable this)))))))
(define (GameConfigurationSingleton.jclassValue) GameConfigurationSingleton%)

(define GameConfigurationSingleton.jcell_SINGLETON 'jnone)
(define (GameConfigurationSingleton.jstatic_SINGLETON)
  (when (eq? GameConfigurationSingleton.jcell_SINGLETON 'jnone) (set! GameConfigurationSingleton.jcell_SINGLETON (GameConfigurationSingleton.jnew_0)))
  GameConfigurationSingleton.jcell_SINGLETON)
(define (GameConfigurationSingleton.jsetstatic_SINGLETON value) (set! GameConfigurationSingleton.jcell_SINGLETON value))

(define (GameConfigurationSingleton.jnew_0)
  (define this (new GameConfigurationSingleton% [jclass "GameConfigurationSingleton"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_list this (BasicArrayListD.jnew_0))
        (set-field! f_hashtable this (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))))
  this)

(define (GameConfigurationSingleton.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameConfigurationSingleton.jstatic_SINGLETON)))))



