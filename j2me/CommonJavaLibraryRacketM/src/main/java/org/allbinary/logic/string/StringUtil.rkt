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
;; package org.allbinary.logic.string

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define StringUtil%
  (class JObject%
    (super-new)
    (field [f_INIT_STRING JR.null])
    (field [f_NULL_STRING JR.null])
    (field [f_EMPTY_STRING JR.null])
    (field [f_ONE_EMPTY_STRING_ARRAY JR.null])
    (field [f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS JR.null])
    (field [f_stringArray JR.null])
    (define/public (jm_getNonNull_1 _string)
    (let ()
      (let/ec jreturn
        (jreturn _string))))
    (define/public (jm_getArrayInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_stringArray this)))))
    (define/public (jm_count_2 _string _aChar)
    (let ([_count JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _count 0)
        (set! _size (string-length _string))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (when (eq? (JR.charAt _string _index) _aChar)
                (begin
                (set! _count (JR.i32 (+ _count 1))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _count))))
    (define/public (jm_toString_1 _anyType)
    (let ()
      (let/ec jreturn
        (if (not (JR.null? _anyType))
            (begin
            (jreturn (JR.toString _anyType)))
            (begin
            (jreturn (get-field f_NULL_STRING this)))))))))

(define StringUtil.jcell_instance 'jnone)
(define (StringUtil.jstatic_instance)
  (when (eq? StringUtil.jcell_instance 'jnone) (set! StringUtil.jcell_instance (StringUtil.jnew_0)))
  StringUtil.jcell_instance)

(define (StringUtil.jnew_0)
  (define this (new StringUtil% [jclass "StringUtil"]))
    (set-field! f_INIT_STRING this "")
    (set-field! f_NULL_STRING this "null")
    (set-field! f_EMPTY_STRING this "")
    (set-field! f_ONE_EMPTY_STRING_ARRAY this (vector (get-field f_EMPTY_STRING this)))
    (set-field! f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS this (JR.newArray JR.null 0 0))
    (set-field! f_stringArray this (JR.newArray JR.null 0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (StringUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (StringUtil.jstatic_instance)))))



