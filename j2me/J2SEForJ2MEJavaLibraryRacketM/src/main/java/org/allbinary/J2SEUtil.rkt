#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary

(require racket/class racket/lazy-require
  "../../allbinary_java.rkt"
  "../../java/util/HashMap.rkt"
  "../../java/util/Map.rkt"
  "../../java/util/Set.rkt")
(provide (all-defined-out))

;J2SEForJ2ME
(define J2SEUtil%
  (class JObject%
    (super-new)
    (define/public (jm_getHashMapAsArray_1 _hashMap)
    (let ([_objectArray JR.null])
      (let/ec jreturn
        (set! _objectArray (JR.className (send _hashMap jm_keySet_0)))
        (jreturn _objectArray))))
    (define/public (jm_getMapAsArray_1 _map)
    (let ([_objectArray JR.null])
      (let/ec jreturn
        (set! _objectArray (JR.className (send _map jm_keySet_0)))
        (jreturn _objectArray))))
    (define/public (jm_getSetAsArray_1 _set)
    (let ([_objectArray JR.null])
      (let/ec jreturn
        (set! _objectArray (send _set jm_toArray_0))
        (jreturn _objectArray))))))
(define (J2SEUtil.jclassValue) J2SEUtil%)

(define J2SEUtil.jcell_instance 'jnone)
(define (J2SEUtil.jstatic_instance)
  (when (eq? J2SEUtil.jcell_instance 'jnone) (set! J2SEUtil.jcell_instance (J2SEUtil.jnew_0)))
  J2SEUtil.jcell_instance)
(define (J2SEUtil.jsetstatic_instance value) (set! J2SEUtil.jcell_instance value))

(define (J2SEUtil.jnew_0)
  (define this (new J2SEUtil% [jclass "J2SEUtil"]))
  this)

(define (J2SEUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (J2SEUtil.jstatic_instance)))))



