#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.logic.string

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/System.rkt"
  "../../../../java/lang/Integer.rkt"
  "../../../../java/lang/Long.rkt"
  "../../../../java/lang/Float.rkt")
(provide (all-defined-out))

(define StringMaker%
  (class JObject%
    (super-new)
    (field [f_charArray JR.null])
    (field [f_currentLength 0])
    (define/public (jm_append_1 _string)
    (let ([_stringLength JR.null])
      (let/ec jreturn
        (set! _stringLength (string-length _string))
        (send this jm_ensureCapacity_1 (JR.i32 (+ (get-field f_currentLength this) _stringLength)))
        (JR.getChars _string 0 _stringLength (get-field f_charArray this) (get-field f_currentLength this))
        (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) _stringLength)))
        (jreturn this))))
    (define/public (jm_appendchar_1 _c)
    (let ()
      (let/ec jreturn
        (send this jm_ensureCapacity_1 (JR.i32 (+ (get-field f_currentLength this) 1)))
        (vector-set! (get-field f_charArray this) (let ([jvalue (get-field f_currentLength this)]) (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) 1))) jvalue) _c)
        (jreturn this))))
    (define/public (jm_appendCharArray_3 _charArray _start _end)
    (let ([_index JR.null])
      (let/ec jreturn
        (send this jm_ensureCapacity_1 (JR.i32 (+ (get-field f_currentLength this) (JR.i32 (- _end _start)))))
        (begin
            (set! _index _start)
            (let/ec jbreak (let jloop () (when (< _index _end)
                (let/ec jcontinue
            (vector-set! (get-field f_charArray this) (let ([jvalue (get-field f_currentLength this)]) (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) 1))) jvalue) (vector-ref _charArray _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn this))))
    (define/public (jm_appendbyte_1 _b)
    (let ()
      (let/ec jreturn
        (send this jm_append_1 (JR.str _b))
        (jreturn this))))
    (define/public (jm_appendshort_1 _b)
    (let ()
      (let/ec jreturn
        (send this jm_append_1 (JR.str _b))
        (jreturn this))))
    (define/public (jm_appendint_1 _i)
    (let ()
      (let/ec jreturn
        (send this jm_append_1 (JR.str _i))
        (jreturn this))))
    (define/public (jm_appendlong_1 _l)
    (let ()
      (let/ec jreturn
        (send this jm_append_1 (JR.str _l))
        (jreturn this))))
    (define/public (jm_appendfloat_1 _f)
    (let ()
      (let/ec jreturn
        (send this jm_append_1 (JR.float _f))
        (jreturn this))))
    (define/public (jm_appendboolean_1 _bool)
    (let ()
      (let/ec jreturn
        (if _bool
            (begin
            (send this jm_ensureCapacity_1 (JR.i32 (+ (get-field f_currentLength this) 4)))
            (vector-set! (get-field f_charArray this) (let ([jvalue (get-field f_currentLength this)]) (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) 1))) jvalue) (char->integer #\t))
            (vector-set! (get-field f_charArray this) (let ([jvalue (get-field f_currentLength this)]) (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) 1))) jvalue) (char->integer #\r))
            (vector-set! (get-field f_charArray this) (let ([jvalue (get-field f_currentLength this)]) (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) 1))) jvalue) (char->integer #\u))
            (vector-set! (get-field f_charArray this) (let ([jvalue (get-field f_currentLength this)]) (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) 1))) jvalue) (char->integer #\e)))
            (begin
            (send this jm_ensureCapacity_1 (JR.i32 (+ (get-field f_currentLength this) 5)))
            (vector-set! (get-field f_charArray this) (let ([jvalue (get-field f_currentLength this)]) (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) 1))) jvalue) (char->integer #\f))
            (vector-set! (get-field f_charArray this) (let ([jvalue (get-field f_currentLength this)]) (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) 1))) jvalue) (char->integer #\a))
            (vector-set! (get-field f_charArray this) (let ([jvalue (get-field f_currentLength this)]) (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) 1))) jvalue) (char->integer #\l))
            (vector-set! (get-field f_charArray this) (let ([jvalue (get-field f_currentLength this)]) (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) 1))) jvalue) (char->integer #\s))
            (vector-set! (get-field f_charArray this) (let ([jvalue (get-field f_currentLength this)]) (set-field! f_currentLength this (JR.i32 (+ (get-field f_currentLength this) 1))) jvalue) (char->integer #\e))))
        (jreturn this))))
    (define/public (jm_ensureCapacity_1 _minSize)
    (let ([_oldCapacity JR.null][_newCapacity JR.null][_copy JR.null][_min JR.null])
      (let/ec jreturn
        (set! _oldCapacity (vector-length (get-field f_charArray this)))
        (when (> _minSize _oldCapacity)
            (begin
            (set! _newCapacity (JR.i32 (* _oldCapacity 3)))
            (when (< _newCapacity _minSize)
                (begin
                (set! _newCapacity _minSize)))
            (set! _copy (JR.newArray 0 _newCapacity))
            (set! _min (send this jm_min_2 (vector-length (get-field f_charArray this)) _newCapacity))
            (JR.arraycopy (get-field f_charArray this) 0 _copy 0 _min)
            (set-field! f_charArray this _copy))))))
    (define/public (jm_min_2 _value _value2)
    (let ()
      (let/ec jreturn
        (jreturn (if (<= _value _value2) _value _value2)))))
    (define/public (jm_delete_2 _start _end)
    (let ()
      (let/ec jreturn
        (set-field! f_currentLength this (JR.i32 (- (get-field f_currentLength this) (JR.i32 (- _end _start)))))
        (jreturn this))))
    (define/public (jm_length_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_currentLength this)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.fromChars (get-field f_charArray this) 0 (get-field f_currentLength this))))))))

(define (StringMaker.jnew_0)
  (define this (new StringMaker% [jclass "StringMaker"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_charArray this (JR.newArray 0 20))))
  this)



