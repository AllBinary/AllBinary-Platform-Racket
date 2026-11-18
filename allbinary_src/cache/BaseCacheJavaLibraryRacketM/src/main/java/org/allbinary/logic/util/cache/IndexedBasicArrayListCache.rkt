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
;; package org.allbinary.logic.util.cache

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./BaseBasicArrayListCache.rkt"
  "./CacheInterface.rkt")
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define IndexedBasicArrayListCache%
  (class BaseBasicArrayListCache%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_size 0])
    (field [f_index 0])
    (define/public (jm_init_1 _size)
    (let ([_index JR.null])
      (let/ec jreturn
        (when (< (get-field f_size this) _size)
            (begin
            (JR.className (get-field f_list this))
            (begin
                (set! _index (JR.i32 (- _size 1)))
                (let/ec jbreak (let jloop () (when (>= _index (get-field f_size this))
                    (let/ec jcontinue
                (send this jm_addDefault_0))
                    (set! _index (JR.i32 (- _index 1))) (jloop)))))
            (set-field! f_size this _size))))))
    (define/public (jm_getAt_1 _index)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_objectArray (get-field f_list this)) _index)))))
    (define/public (jm_addDefault_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_addObject_1 _anyType)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_list this)))))
    (define/public (jm_add_1 _cacheableInterface)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_list this)))))
    (define/public (jm_addArray_1 _cacheableInterfaces)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" "No Imple")))))
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (set-field! f_index this 0))))))
(define (IndexedBasicArrayListCache.jclassValue) IndexedBasicArrayListCache%)

(define (IndexedBasicArrayListCache.jnew_0)
  (define this (new IndexedBasicArrayListCache% [jclass "IndexedBasicArrayListCache"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_size this 0)
    (set-field! f_index this 0)
    (let ()
      (let/ec jreturn (void)))
  this)

(define (IndexedBasicArrayListCache.jm_createCache_1 _size)
    (let ([_indexedBasicArrayListCache JR.null])
      (let/ec jreturn
        (set! _indexedBasicArrayListCache (IndexedBasicArrayListCache.jnew_0))
        (send _indexedBasicArrayListCache jm_init_1 _size)
        (jreturn _indexedBasicArrayListCache))))



