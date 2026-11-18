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
  "../../../../java/lang/Integer.rkt")
(lazy-require ["./ResourceLoadingLevel.rkt" (ResourceLoadingLevel.jnew_2)])
(provide (all-defined-out))

(define ResourceLoadingLevelFactory%
  (class JObject%
    (super-new)
    (field [f_LOAD_EARLY JR.null])
    (field [f_LOAD_TOUCH JR.null])
    (field [f_LOAD_GAME JR.null])
    (field [f_LEVEL JR.null])
    (field [f_MAX_LEVEL JR.null])
    (field [f_LOAD_ALL JR.null])
    (field [f_RESOURCE_LOADING_LEVEL_ARRAY JR.null])
    (define/public (jm_getLevelString_1 _level)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length (get-field f_RESOURCE_LOADING_LEVEL_ARRAY this)))
                (let/ec jcontinue
            (when (= _level (JR.className (vector-ref (get-field f_RESOURCE_LOADING_LEVEL_ARRAY this) _index)))
                (begin
                (jreturn (JR.className (vector-ref (get-field f_RESOURCE_LOADING_LEVEL_ARRAY this) _index))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (JR.str _level)))))))
(define (ResourceLoadingLevelFactory.jclassValue) ResourceLoadingLevelFactory%)

(define ResourceLoadingLevelFactory.jcell_instance 'jnone)
(define (ResourceLoadingLevelFactory.jstatic_instance)
  (when (eq? ResourceLoadingLevelFactory.jcell_instance 'jnone) (set! ResourceLoadingLevelFactory.jcell_instance (ResourceLoadingLevelFactory.jnew_0)))
  ResourceLoadingLevelFactory.jcell_instance)
(define (ResourceLoadingLevelFactory.jsetstatic_instance value) (set! ResourceLoadingLevelFactory.jcell_instance value))

(define (ResourceLoadingLevelFactory.jnew_0)
  (define this (new ResourceLoadingLevelFactory% [jclass "ResourceLoadingLevelFactory"]))
    (set-field! f_LOAD_EARLY this (ResourceLoadingLevel.jnew_2 "Load Early" (Integer.jstatic_MAX_VALUE)))
    (set-field! f_LOAD_TOUCH this (ResourceLoadingLevel.jnew_2 "Load Touch" (JR.i32 (- (Integer.jstatic_MAX_VALUE) 1))))
    (set-field! f_LOAD_GAME this (ResourceLoadingLevel.jnew_2 "Load Game" (JR.i32 (- (Integer.jstatic_MAX_VALUE) 2))))
    (set-field! f_LEVEL this (ResourceLoadingLevel.jnew_2 "Level" (JR.i32 (- (Integer.jstatic_MAX_VALUE) 99))))
    (set-field! f_MAX_LEVEL this (ResourceLoadingLevel.jnew_2 "Max Level" (JR.i32 (- (Integer.jstatic_MAX_VALUE) 100))))
    (set-field! f_LOAD_ALL this (ResourceLoadingLevel.jnew_2 "Load All" (JR.i32 (- 1))))
    (set-field! f_RESOURCE_LOADING_LEVEL_ARRAY this (vector (get-field f_LOAD_ALL this) (get-field f_MAX_LEVEL this) (get-field f_LEVEL this) (get-field f_LOAD_GAME this) (get-field f_LOAD_TOUCH this) (get-field f_LOAD_EARLY this)))
  this)

(define (ResourceLoadingLevelFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ResourceLoadingLevelFactory.jstatic_instance)))))



