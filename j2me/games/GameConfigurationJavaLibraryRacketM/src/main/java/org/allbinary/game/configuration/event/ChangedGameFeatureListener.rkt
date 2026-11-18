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
;; package org.allbinary.game.configuration.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./BaseChangedGameFeatureListener.rkt")
(provide (all-defined-out))

(define ChangedGameFeatureListener%
  (class BaseChangedGameFeatureListener%
    (super-new)
    (define/public (jm_isChangedGameConfiguration_1 _gameConfiguration)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (get-field f_list this))))))))
(define (ChangedGameFeatureListener.jclassValue) ChangedGameFeatureListener%)

(define ChangedGameFeatureListener.jcell_gameFeatureListener 'jnone)
(define (ChangedGameFeatureListener.jstatic_gameFeatureListener)
  (when (eq? ChangedGameFeatureListener.jcell_gameFeatureListener 'jnone) (set! ChangedGameFeatureListener.jcell_gameFeatureListener (ChangedGameFeatureListener.jnew_0)))
  ChangedGameFeatureListener.jcell_gameFeatureListener)
(define (ChangedGameFeatureListener.jsetstatic_gameFeatureListener value) (set! ChangedGameFeatureListener.jcell_gameFeatureListener value))

(define (ChangedGameFeatureListener.jnew_0)
  (define this (new ChangedGameFeatureListener% [jclass "ChangedGameFeatureListener"]))
  this)

(define (ChangedGameFeatureListener.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ChangedGameFeatureListener.jstatic_gameFeatureListener)))))



