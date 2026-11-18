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
;; package org.allbinary.logic.java.byteutil

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ByteUtil%
  (class JObject%
    (super-new)
    (define/public (jm_xor_2 _array _mask)
    (let ([_bytes JR.null][_size JR.null][_index JR.null][_currentByte JR.null])
      (let/ec jreturn
        (set! _bytes (JR.newArray 0 (vector-length _array)))
        (set! _size (vector-length _array))
        (set! _index 0)
        (set! _currentByte 0)
        (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _currentByte (vector-ref _array _index))
            (vector-set! _bytes _index (JR.i8 (bitwise-xor _currentByte _mask)))
            (set! _index (JR.i32 (+ _index 1)))) (jloop))))
        (jreturn _bytes))))
    (define/public (jm_not_1 _array)
    (let ([_bytes JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _bytes (JR.newArray 0 (vector-length _array)))
        (set! _size (vector-length _array))
        (set! _index 0)
        (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! _bytes _index (JR.i8 (bitwise-not (vector-ref _array _index))))
            (set! _index (JR.i32 (+ _index 1)))) (jloop))))
        (jreturn _bytes))))
    (define/public (jm_xorByte_2 _array _index)
    (let ([_mask JR.null])
      (let/ec jreturn
        (set! _mask 0)
        (when (= _index 0)
            (begin
            (set! _mask 1)))
        (when (= _index 1)
            (begin
            (set! _mask 2)))
        (when (= _index 2)
            (begin
            (set! _mask 4)))
        (when (= _index 3)
            (begin
            (set! _mask 8)))
        (when (= _index 4)
            (begin
            (set! _mask 16)))
        (when (= _index 5)
            (begin
            (set! _mask 32)))
        (when (= _index 6)
            (begin
            (set! _mask 64)))
        (when (= _index 7)
            (begin
            (set! _mask (JR.i8 (JR.i32 (- 127))))))
        (jreturn (send this jm_xor_2 _array _mask)))))
    (define/public (jm_compare_2 _newByteArray _oldByteArray)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (if (not (= (vector-length _newByteArray) (vector-length _oldByteArray)))
            (begin
            (jreturn #f))
            (begin
            (void)))
        (set! _size (vector-length _newByteArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (when (not (= (vector-ref _newByteArray _index) (vector-ref _oldByteArray _index)))
                (begin
                (jreturn #f))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn #t))))
    (define/public (jm_compareWithStats_4 _newByteArray _newSize _oldByteArray _stats)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (if (not (= _newSize (vector-length _oldByteArray)))
            (begin
            (vector-set! _stats 0 (JR.i32 (- 1)))
            (vector-set! _stats 2 _newSize)
            (vector-set! _stats 3 (vector-length _oldByteArray))
            (jreturn #f))
            (begin
            (vector-set! _stats 0 _newSize)))
        (vector-set! _stats 1 0)
        (set! _size _newSize)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (when (not (= (vector-ref _newByteArray _index) (vector-ref _oldByteArray _index)))
                (begin
                (jreturn #f)))
            (vector-set! _stats 1 (JR.i32 (+ (vector-ref _stats 1) 1))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn #t))))))
(define (ByteUtil.jclassValue) ByteUtil%)

(define ByteUtil.jcell_instance 'jnone)
(define (ByteUtil.jstatic_instance)
  (when (eq? ByteUtil.jcell_instance 'jnone) (set! ByteUtil.jcell_instance (ByteUtil.jnew_0)))
  ByteUtil.jcell_instance)
(define (ByteUtil.jsetstatic_instance value) (set! ByteUtil.jcell_instance value))

(define (ByteUtil.jnew_0)
  (define this (new ByteUtil% [jclass "ByteUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ByteUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ByteUtil.jstatic_instance)))))



