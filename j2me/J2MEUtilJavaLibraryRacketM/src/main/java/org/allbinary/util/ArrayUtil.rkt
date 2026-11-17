#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.util

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/System.rkt")
(lazy-require ["../../../org/allbinary/logic/math/MathUtil.rkt" (MathUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define ArrayUtil%
  (class JObject%
    (super-new)
    (field [f_mathUtil JR.null])
    (define/public (jm_copyOf_2 _original _newLength)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_copyOfType_3 _original _newLength (JR.className _original))))))
    (define/public (jm_copyOfType_3 _original _newLength _newType)
    (let ([_copy JR.null])
      (let/ec jreturn
        (set! _copy (JR.newArray JR.null _newLength))
        (JR.arraycopy _original 0 _copy 0 (send (get-field f_mathUtil this) jm_min_2 (vector-length _original) _newLength))
        (jreturn _copy))))
    (define/public (jm_copyOfbyte_2 _original _newLength)
    (let ([_copy JR.null])
      (let/ec jreturn
        (set! _copy (JR.newArray 0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (send (get-field f_mathUtil this) jm_min_2 (vector-length _original) _newLength))
        (jreturn _copy))))
    (define/public (jm_copyOfshort_2 _original _newLength)
    (let ([_copy JR.null])
      (let/ec jreturn
        (set! _copy (JR.newArray 0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (send (get-field f_mathUtil this) jm_min_2 (vector-length _original) _newLength))
        (jreturn _copy))))
    (define/public (jm_copyOfint_2 _original _newLength)
    (let ([_copy JR.null])
      (let/ec jreturn
        (set! _copy (JR.newArray 0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (send (get-field f_mathUtil this) jm_min_2 (vector-length _original) _newLength))
        (jreturn _copy))))
    (define/public (jm_copyOflong_2 _original _newLength)
    (let ([_copy JR.null])
      (let/ec jreturn
        (set! _copy (JR.newArray 0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (send (get-field f_mathUtil this) jm_min_2 (vector-length _original) _newLength))
        (jreturn _copy))))
    (define/public (jm_copyOfchar_2 _original _newLength)
    (let ([_copy JR.null])
      (let/ec jreturn
        (set! _copy (JR.newArray 0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (send (get-field f_mathUtil this) jm_min_2 (vector-length _original) _newLength))
        (jreturn _copy))))
    (define/public (jm_copyOffloat_2 _original _newLength)
    (let ([_copy JR.null])
      (let/ec jreturn
        (set! _copy (JR.newArray 0.0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (send (get-field f_mathUtil this) jm_min_2 (vector-length _original) _newLength))
        (jreturn _copy))))
    (define/public (jm_copyOfdouble_2 _original _newLength)
    (let ([_copy JR.null])
      (let/ec jreturn
        (set! _copy (JR.newArray 0.0 _newLength))
        (JR.arraycopy _original 0 _copy 0 (send (get-field f_mathUtil this) jm_min_2 (vector-length _original) _newLength))
        (jreturn _copy))))
    (define/public (jm_copyOfboolean_2 _original _newLength)
    (let ([_copy JR.null])
      (let/ec jreturn
        (set! _copy (JR.newArray #f _newLength))
        (JR.arraycopy _original 0 _copy 0 (send (get-field f_mathUtil this) jm_min_2 (vector-length _original) _newLength))
        (jreturn _copy))))
    (define/public (jm_reverse_1 _intArray)
    (let ([_length JR.null][_temp JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _length (JR.i32 (- (vector-length _intArray) 1)))
        (set! _temp 0)
        (set! _size (JR.idiv _length 2))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (<= _index _size)
                (let/ec jcontinue
            (set! _temp (vector-ref _intArray _index))
            (vector-set! _intArray _index (vector-ref _intArray (JR.i32 (- _length _index))))
            (vector-set! _intArray (JR.i32 (- _length _index)) _temp))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_flip_3 _intArray _width _height)
    (let ([_length JR.null][_temp JR.null][_index JR.null][_rowIndex JR.null][_x JR.null][_y JR.null])
      (let/ec jreturn
        (set! _length (JR.i32 (- _height 1)))
        (set! _temp 0)
        (set! _index 0)
        (set! _rowIndex 0)
        (begin
            (set! _y 0)
            (let/ec jbreak (let jloop () (when (<= _y (JR.idiv _length 2))
                (let/ec jcontinue
            (begin
                (set! _x 0)
                (let/ec jbreak (let jloop () (when (< _x _width)
                    (let/ec jcontinue
                (set! _rowIndex (JR.i32 (* (JR.i32 (- _length _y)) _width)))
                (set! _index (JR.i32 (+ _x (JR.i32 (* _y _width)))))
                (set! _temp (vector-ref _intArray _index))
                (vector-set! _intArray _index (vector-ref _intArray (JR.i32 (+ _rowIndex _x))))
                (vector-set! _intArray (JR.i32 (+ _rowIndex _x)) _temp))
                    (set! _x (JR.i32 (+ _x 1))) (jloop))))))
                (set! _y (JR.i32 (+ _y 1))) (jloop))))))))
    (define/public (jm_toStringFromTwoDimensionaArray_1 _twoDimensionalIntArray)
    (let ([_stringBuffer JR.null][_commonSeps JR.null][_endIndex JR.null][_endIndex2 JR.null][_index2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set! _endIndex (vector-length _twoDimensionalIntArray))
        (set! _endIndex2 (vector-length (vector-ref _twoDimensionalIntArray 0)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _endIndex)
                (let/ec jcontinue
            (send _stringBuffer jm_append_1 (get-field f_BRACE_OPEN _commonSeps))
            (begin
                (set! _index2 0)
                (let/ec jbreak (let jloop () (when (< _index2 _endIndex2)
                    (let/ec jcontinue
                (send _stringBuffer jm_appendint_1 (vector-ref (vector-ref _twoDimensionalIntArray _index) _index2))
                (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonSeps)))
                    (set! _index2 (JR.i32 (+ _index2 1))) (jloop)))))
            (send _stringBuffer jm_append_1 (get-field f_BRACE_CLOSE _commonSeps))
            (send _stringBuffer jm_append_1 (get-field f_NEW_LINE _commonSeps)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_toStringFromObjectArray_1 _objectArray)
    (let ([_stringBuffer JR.null][_commonSeps JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _objectArray))
                (let/ec jcontinue
            (send _stringBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (vector-ref _objectArray _index)))
            (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonSeps)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_toStringFromByteArray_1 _byteArray)
    (let ([_stringBuffer JR.null][_commonSeps JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _byteArray))
                (let/ec jcontinue
            (send _stringBuffer jm_appendbyte_1 (vector-ref _byteArray _index))
            (send _stringBuffer jm_append_1 (get-field f_COMMA_SEP _commonSeps)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))))

(define ArrayUtil.jcell_instance 'jnone)
(define (ArrayUtil.jstatic_instance)
  (when (eq? ArrayUtil.jcell_instance 'jnone) (set! ArrayUtil.jcell_instance (ArrayUtil.jnew_0)))
  ArrayUtil.jcell_instance)

(define (ArrayUtil.jnew_0)
  (define this (new ArrayUtil% [jclass "ArrayUtil"]))
    (set-field! f_mathUtil this (MathUtil.jm_getInstance_0))
  this)

(define (ArrayUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ArrayUtil.jstatic_instance)))))



