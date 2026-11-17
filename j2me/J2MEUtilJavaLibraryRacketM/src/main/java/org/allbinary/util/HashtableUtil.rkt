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
;; package org.allbinary.util

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/util/Enumeration.rkt")
(lazy-require ["./EnumerationUtil.rkt" (EnumerationUtil.jm_getInstance_0)])
(lazy-require ["./BasicArrayListS.rkt" (BasicArrayListS.jnew_1)])
(provide (all-defined-out))

(define HashtableUtil%
  (class JObject%
    (super-new)
    (field [f_enumerationUtil JR.null])
    (define/public (jm_putAll_2 _fromHashtable _hashtable)
    (let ([_enumeration JR.null][_keyCanBeNull JR.null][_valueCanBeNull JR.null])
      (let/ec jreturn
        (set! _enumeration (send _fromHashtable jm_keys_0))
        (set! _keyCanBeNull JR.null)
        (set! _valueCanBeNull JR.null)
        (let/ec jbreak (let jloop () (when (send (get-field f_enumerationUtil this) jm_hasMoreElements_1 _enumeration)
                (let/ec jcontinue
            (set! _keyCanBeNull (send (get-field f_enumerationUtil this) jm_nextElement_1 _enumeration))
            (set! _valueCanBeNull (send _hashtable jm_get_1 _keyCanBeNull))
            (if (JR.null? _valueCanBeNull)
                (begin
                (void))
                (begin
                (send _hashtable jm_put_2 _keyCanBeNull _valueCanBeNull)))) (jloop)))))))
    (define/public (jm_getKeysAsArray_1 _hashtable)
    (let ([_objectArray JR.null][_index JR.null][_enumeration JR.null])
      (let/ec jreturn
        (set! _objectArray (JR.newArray JR.null (send _hashtable jm_size_0)))
        (set! _index 0)
        (set! _enumeration (send _hashtable jm_keys_0))
        (let/ec jbreak (let jloop () (when (send (get-field f_enumerationUtil this) jm_hasMoreElements_1 _enumeration)
                (let/ec jcontinue
            (vector-set! _objectArray (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue) (send (get-field f_enumerationUtil this) jm_nextElement_1 _enumeration))) (jloop))))
        (jreturn _objectArray))))
    (define/public (jm_getKeysAsList_1 _hashtable)
    (let ([_list JR.null][_enumeration JR.null])
      (let/ec jreturn
        (set! _list (BasicArrayListS.jnew_1 (send _hashtable jm_size_0)))
        (set! _enumeration (send _hashtable jm_keys_0))
        (let/ec jbreak (let jloop () (when (send (get-field f_enumerationUtil this) jm_hasMoreElements_1 _enumeration)
                (let/ec jcontinue
            (send _list jm_add_1 (send (get-field f_enumerationUtil this) jm_nextElement_1 _enumeration))) (jloop))))
        (jreturn _list))))))

(define HashtableUtil.jcell_instance 'jnone)
(define (HashtableUtil.jstatic_instance)
  (when (eq? HashtableUtil.jcell_instance 'jnone) (set! HashtableUtil.jcell_instance (HashtableUtil.jnew_0)))
  HashtableUtil.jcell_instance)

(define (HashtableUtil.jnew_0)
  (define this (new HashtableUtil% [jclass "HashtableUtil"]))
    (set-field! f_enumerationUtil this (EnumerationUtil.jm_getInstance_0))
  this)

(define (HashtableUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (HashtableUtil.jstatic_instance)))))



