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
;; package org.allbinary.game.rand

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/util/Random.rkt"
  "../../../../java/lang/System.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/logic/math/MathUtil.rkt" (MathUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

;Do not use in client code for money related things.
(define MyRandomFactory%
  (class JObject%
    (super-new)
    (field [f_mathUtil JR.null])
    (field [f_rand JR.null])
    (define/public (jm_setSeed_1 _seed)
    (let ()
      (let/ec jreturn
        (set-field! f_rand this (Random.jnew_1 _seed)))))
    (define/public (jm_getNextInt_1 _range)
    (let ([_div JR.null])
      (let/ec jreturn
        (set! _div (JR.i32 (+ (JR.idiv (Integer.jstatic_MAX_VALUE) _range) 1)))
        (jreturn (JR.idiv (send (get-field f_rand this) jm_nextInt_0) _div)))))
    (define/public (jm_getAbsoluteNextInt_1 _range)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_mathUtil this) jm_abs_1 (send this jm_getNextInt_1 _range))))))
    (define/public (jm_getAbsoluteNextIntAllowZero_1 _range)
    (let ()
      (let/ec jreturn
        (if (= _range 0)
            (begin
            (jreturn 0))
            (begin
            (jreturn (send (get-field f_mathUtil this) jm_abs_1 (send this jm_getNextInt_1 _range))))))))
    (define/public (jm_shuffle_1 _intArray)
    (let ()
      (let/ec jreturn
        (send this jm_shuffleTotal_2 _intArray (JR.i32 (* (vector-length _intArray) 7))))))
    (define/public (jm_shuffleTotal_2 _intArray _shuffleTotal)
    (let ([_size JR.null][_randomIndex JR.null][_randomIndex2 JR.null][_value JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length _intArray))
        (set! _randomIndex 0)
        (set! _randomIndex2 0)
        (set! _value 0)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _shuffleTotal)
                (let/ec jcontinue
            (set! _randomIndex (send this jm_getAbsoluteNextIntAllowZero_1 _size))
            (set! _randomIndex2 (send this jm_getAbsoluteNextIntAllowZero_1 _size))
            (set! _value (vector-ref _intArray _randomIndex))
            (vector-set! _intArray _randomIndex (vector-ref _intArray _randomIndex2))
            (vector-set! _intArray _randomIndex2 _value))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_shuffle2_2 _intArray _intArray2)
    (let ()
      (let/ec jreturn
        (send this jm_shuffle2Total_3 _intArray _intArray2 (JR.i32 (* (vector-length _intArray) 7))))))
    (define/public (jm_shuffle2Total_3 _intArray _intArray2 _shuffleTotal)
    (let ([_size JR.null][_randomIndex JR.null][_randomIndex2 JR.null][_value JR.null][_value2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length _intArray))
        (set! _randomIndex 0)
        (set! _randomIndex2 0)
        (set! _value 0)
        (set! _value2 0)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _shuffleTotal)
                (let/ec jcontinue
            (set! _randomIndex (send this jm_getAbsoluteNextIntAllowZero_1 _size))
            (set! _randomIndex2 (send this jm_getAbsoluteNextIntAllowZero_1 _size))
            (set! _value (vector-ref _intArray _randomIndex))
            (set! _value2 (vector-ref _intArray2 _randomIndex))
            (vector-set! _intArray _randomIndex (vector-ref _intArray _randomIndex2))
            (vector-set! _intArray _randomIndex2 _value)
            (vector-set! _intArray2 _randomIndex (vector-ref _intArray2 _randomIndex2))
            (vector-set! _intArray2 _randomIndex2 _value2))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (MyRandomFactory.jclassValue) MyRandomFactory%)

(define MyRandomFactory.jcell_instance 'jnone)
(define (MyRandomFactory.jstatic_instance)
  (when (eq? MyRandomFactory.jcell_instance 'jnone) (set! MyRandomFactory.jcell_instance (MyRandomFactory.jnew_0)))
  MyRandomFactory.jcell_instance)
(define (MyRandomFactory.jsetstatic_instance value) (set! MyRandomFactory.jcell_instance value))

(define (MyRandomFactory.jnew_0)
  (define this (new MyRandomFactory% [jclass "MyRandomFactory"]))
    (set-field! f_mathUtil this (MathUtil.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_rand this (Random.jnew_1 (JR.currentTimeMillis)))))
  this)

(define (MyRandomFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MyRandomFactory.jstatic_instance)))))

(define (MyRandomFactory.jm_main_1 _args)
    (let ([_randomFactory JR.null][_stringBuilder JR.null][_commonSeps JR.null][_size2 JR.null][_index JR.null][_intArray JR.null][_intArray2 JR.null][_size JR.null][_found JR.null][_index2 JR.null])
      (let/ec jreturn
        (set! _randomFactory (MyRandomFactory.jm_getInstance_0))
        (set! _stringBuilder (StringMaker.jnew_0))
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set! _size2 100)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size2)
                (let/ec jcontinue
            (send (send _stringBuilder jm_appendint_1 (send _randomFactory jm_getAbsoluteNextInt_1 3)) jm_append_1 (get-field f_COMMA _commonSeps)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (JR.println (send _stringBuilder jm_toString_0))
        (send _stringBuilder jm_delete_2 0 (send _stringBuilder jm_length_0))
        (set! _intArray (JR.newArray 0 52))
        (set! _intArray2 (JR.newArray 0 52))
        (set! _size (vector-length _intArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! _intArray _index _index)
            (vector-set! _intArray2 _index _index))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send _randomFactory jm_shuffle2_2 _intArray _intArray2)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send (send _stringBuilder jm_appendint_1 (vector-ref _intArray _index)) jm_append_1 (get-field f_COMMA _commonSeps)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (JR.println (send _stringBuilder jm_toString_0))
        (send _stringBuilder jm_delete_2 0 (send _stringBuilder jm_length_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send (send _stringBuilder jm_appendint_1 (vector-ref _intArray2 _index)) jm_append_1 (get-field f_COMMA _commonSeps)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (JR.println (send _stringBuilder jm_toString_0))
        (set! _found #f)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _found #f)
            (begin
                (set! _index2 0)
                (let/ec jbreak (let jloop () (when (< _index2 _size)
                    (let/ec jcontinue
                (when (= (vector-ref _intArray _index2) _index)
                    (begin
                    (set! _found #t))))
                    (set! _index2 (JR.i32 (+ _index2 1))) (jloop)))))
            (when (not _found)
                (begin
                (raise (JR.newException "RuntimeException")))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))



