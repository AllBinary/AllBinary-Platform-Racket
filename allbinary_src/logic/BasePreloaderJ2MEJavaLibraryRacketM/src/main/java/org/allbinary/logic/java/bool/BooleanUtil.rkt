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
;; package org.allbinary.logic.java.bool

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringValidationUtil.rkt" (StringValidationUtil.jm_getInstance_0)])
(lazy-require ["./BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BooleanUtil%
  (class JObject%
    (super-new)
    (field [f_tsUtil JR.null])
    (define/public (jm_getFromString_1 _booleanString)
    (let ([_stringValidationUtil JR.null][_booleanFactory JR.null][_booleanStringLowerCase JR.null])
      (let/ec jreturn
        (set! _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (set! _booleanFactory (BooleanFactory.jm_getInstance_0))
        (when (send _stringValidationUtil jm_isEmpty_1 _booleanString)
            (begin
            (jreturn #f)))
        (set! _booleanStringLowerCase (JR.toLowerCase _booleanString))
        (if (= (send (get-field f_tsUtil this) jm_compareTo_2 _booleanStringLowerCase (get-field f_TRUE_STRING _booleanFactory)) 0)
            (begin
            (jreturn #t))
            (if (= (send (get-field f_tsUtil this) jm_compareTo_2 _booleanStringLowerCase (get-field f_FALSE_STRING _booleanFactory)) 0)
            (begin
            (jreturn #f))
            (begin
            (raise (JR.newException "Exception" "Invalid booleanString - Must be true or false"))))))))
    (define/public (jm_isStringBoolean_1 _booleanString)
    (let ([_booleanFactory JR.null][_booleanStringLowerCase JR.null])
      (let/ec jreturn
        (set! _booleanFactory (BooleanFactory.jm_getInstance_0))
        (set! _booleanStringLowerCase (JR.toLowerCase _booleanString))
        (when (or (eq? (JR.compareTo _booleanStringLowerCase (get-field f_TRUE_STRING _booleanFactory)) 0) (eq? (JR.compareTo _booleanStringLowerCase (get-field f_FALSE_STRING _booleanFactory)) 0))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_toStringFromBooleanArray_1 _booleanArray)
    (let ([_stringMaker JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringMaker (StringMaker.jnew_0))
        (set! _size (vector-length _booleanArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send _stringMaker jm_appendboolean_1 (vector-ref _booleanArray _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send _stringMaker jm_toString_0)))))))

(define BooleanUtil.jcell_instance 'jnone)
(define (BooleanUtil.jstatic_instance)
  (when (eq? BooleanUtil.jcell_instance 'jnone) (set! BooleanUtil.jcell_instance (BooleanUtil.jnew_0)))
  BooleanUtil.jcell_instance)

(define (BooleanUtil.jnew_0)
  (define this (new BooleanUtil% [jclass "BooleanUtil"]))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (BooleanUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BooleanUtil.jstatic_instance)))))



