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
;; package org.allbinary.logic.math

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define PrimitiveLongSingleton%
  (class JObject%
    (super-new)
    (field [f_UNK JR.null])
    (field [f_NUMBER_ARRAY JR.null])
    (field [f_NUMBER_CHAR_ARRAY JR.null])
    (field [f_NUMBER_CHAR_ARRAYS JR.null])
    (field [f_ZERO JR.null])
    (define/public (jm_getNumberFromChar_1 _numberAsChar)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length (get-field f_NUMBER_CHAR_ARRAY this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (when (= (vector-ref (get-field f_NUMBER_CHAR_ARRAY this) _index) _numberAsChar)
                (begin
                (jreturn (vector-ref (get-field f_NUMBER_ARRAY this) _index)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (raise (JR.newException "Exception" (send (send (send (StringMaker.jnew_0) jm_append_1 "numberAsChar was not in array: ") jm_appendchar_1 _numberAsChar) jm_toString_0))))))))

(define PrimitiveLongSingleton.jcell_instance 'jnone)
(define (PrimitiveLongSingleton.jstatic_instance)
  (when (eq? PrimitiveLongSingleton.jcell_instance 'jnone) (set! PrimitiveLongSingleton.jcell_instance (PrimitiveLongSingleton.jnew_0)))
  PrimitiveLongSingleton.jcell_instance)

(define (PrimitiveLongSingleton.jnew_0)
  (define this (new PrimitiveLongSingleton% [jclass "PrimitiveLongSingleton"]))
    (set-field! f_UNK this (vector (char->integer #\U) (char->integer #\n) (char->integer #\k)))
    (set-field! f_NUMBER_ARRAY this (vector 0 1 2 3 4 5 6 7 8 9))
    (set-field! f_NUMBER_CHAR_ARRAY this (vector (char->integer #\0) (char->integer #\1) (char->integer #\2) (char->integer #\3) (char->integer #\4) (char->integer #\5) (char->integer #\6) (char->integer #\7) (char->integer #\8) (char->integer #\9)))
    (set-field! f_NUMBER_CHAR_ARRAYS this (vector (vector (char->integer #\0)) (vector (char->integer #\1)) (vector (char->integer #\2)) (vector (char->integer #\3)) (vector (char->integer #\4)) (vector (char->integer #\5)) (vector (char->integer #\6)) (vector (char->integer #\7)) (vector (char->integer #\8)) (vector (char->integer #\9))))
    (set-field! f_ZERO this (vector (vector-ref (get-field f_NUMBER_CHAR_ARRAY this) 0)))
  this)

(define (PrimitiveLongSingleton.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimitiveLongSingleton.jstatic_instance)))))



