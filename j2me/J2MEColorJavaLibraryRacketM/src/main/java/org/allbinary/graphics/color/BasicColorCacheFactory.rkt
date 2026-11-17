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
;; package org.allbinary.graphics.color

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["./BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicColorCacheFactory%
  (class JObject%
    (super-new)
    (field [f_hashtable JR.null])
    (define/public (jm_add_1 _basicDefaultColor)
    (let ()
      (let/ec jreturn
        (send (get-field f_hashtable this) jm_put_2 (send _basicDefaultColor jm_intValue_0) _basicDefaultColor))))
    (define/public (jm_getAndOrCreate_1 _integer)
    (let ([_basicColor JR.null])
      (let/ec jreturn
        (set! _basicColor (send (get-field f_hashtable this) jm_get_1 _integer))
        (when (JR.null? _basicColor)
            (begin
            (set! _basicColor (send (BasicColorFactory.jm_getInstance_0) jm_createInstance_1 (send _integer jm_intValue_0)))
            (send (get-field f_hashtable this) jm_put_2 _integer _basicColor)))
        (jreturn _basicColor))))))

(define BasicColorCacheFactory.jcell_instance 'jnone)
(define (BasicColorCacheFactory.jstatic_instance)
  (when (eq? BasicColorCacheFactory.jcell_instance 'jnone) (set! BasicColorCacheFactory.jcell_instance (BasicColorCacheFactory.jnew_0)))
  BasicColorCacheFactory.jcell_instance)

(define (BasicColorCacheFactory.jnew_0)
  (define this (new BasicColorCacheFactory% [jclass "BasicColorCacheFactory"]))
    (set-field! f_hashtable this (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (BasicColorCacheFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicColorCacheFactory.jstatic_instance)))))



