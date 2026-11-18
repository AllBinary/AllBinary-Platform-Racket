#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.logic.math.permutations

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/logic/util/visitor/Visitor.rkt"
  "../../../../../java/lang/System.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define IntPermutationVisitor%
  (class Visitor%
    (super-new)
    (field [f_data JR.null])
    (field [f_stringBuilder JR.null])
    (define/override (jm_visit_1 _anyType)
    (let ()
      (let/ec jreturn
        (send (get-field f_stringBuilder this) jm_delete_2 0 (send (get-field f_stringBuilder this) jm_length_0))
        (send this jm_print_2 (get-field f_data this) (get-field f_stringBuilder this))
        (jreturn (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))))
    (define/public (jm_print_1 _data)
    (let ([_stringBuilder JR.null])
      (let/ec jreturn
        (set! _stringBuilder (StringMaker.jnew_0))
        (send this jm_print_2 _data _stringBuilder))))
    (define/public (jm_print_2 _data _stringBuilder)
    (let ([_commonSeps JR.null][_size JR.null][_i JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set! _size (vector-length _data))
        (begin
            (set! _i 0)
            (let/ec jbreak (let jloop () (when (< _i _size)
                (let/ec jcontinue
            (send _stringBuilder jm_appendint_1 (vector-ref _data _i))
            (send _stringBuilder jm_append_1 (get-field f_SPACE _commonSeps)))
                (set! _i (JR.i32 (+ _i 1))) (jloop)))))
        (JR.println (send _stringBuilder jm_toString_0)))))))
(define (IntPermutationVisitor.jclassValue) IntPermutationVisitor%)

(define (IntPermutationVisitor.jnew_1 _data)
  (define this (new IntPermutationVisitor% [jclass "IntPermutationVisitor"]))
    
    (set-field! f_stringBuilder this (StringMaker.jnew_0))
    (let ()
      (let/ec jreturn
        (set-field! f_data this _data)))
  this)



