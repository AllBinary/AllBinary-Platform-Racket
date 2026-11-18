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
;; package org.allbinary.logic.math.permutations

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/util/Arrays.rkt"
  "../../../../../java/lang/System.rkt")
(lazy-require ["../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["./ComparableObject.rkt" (ComparableObject.jnew_0)])
(lazy-require ["./ObjectPermutationVisitor.rkt" (ObjectPermutationVisitor.jnew_1)])
(provide (all-defined-out))

(define OrderedObjectArrayPermutationUtil%
  (class JObject%
    (super-new)
    (field [f_TOTAL_ITERATIONS_TABLE JR.null])
    (field [f_FINISHED JR.null])
    (define/public (jm_getNext_1 _data)
    (let ([_length JR.null][_i JR.null][_tsUtil JR.null][_j JR.null])
      (let/ec jreturn
        (set! _length (vector-length _data))
        (set! _i (JR.i32 (- _length 1)))
        (set! _tsUtil (TsUtil.jm_getInstance_0))
        (let/ec jbreak (let jloop () (when (>= (send _tsUtil jm_hashCode_1 (vector-ref _data (JR.i32 (- _i 1)))) (send _tsUtil jm_hashCode_1 (vector-ref _data _i)))
                (let/ec jcontinue
            (set! _i (JR.i32 (- _i 1)))) (jloop))))
        (set! _j _length)
        (let/ec jbreak (let jloop () (when (<= (send _tsUtil jm_hashCode_1 (vector-ref _data (JR.i32 (- _j 1)))) (send _tsUtil jm_hashCode_1 (vector-ref _data (JR.i32 (- _i 1)))))
                (let/ec jcontinue
            (set! _j (JR.i32 (- _j 1)))) (jloop))))
        (send this jm_swap_3 _data (JR.i32 (- _i 1)) (JR.i32 (- _j 1)))
        (set! _i (JR.i32 (+ _i 1)))
        (set! _j _length)
        (let/ec jbreak (let jloop () (when (< _i _j)
                (let/ec jcontinue
            (send this jm_swap_3 _data (JR.i32 (- _i 1)) (JR.i32 (- _j 1)))
            (set! _i (JR.i32 (+ _i 1)))
            (set! _j (JR.i32 (- _j 1)))) (jloop)))))))
    (define/public (jm_swap_3 _data _a _b)
    (let ([_temp JR.null])
      (let/ec jreturn
        (set! _temp (vector-ref _data _a))
        (vector-set! _data _a (vector-ref _data _b))
        (vector-set! _data _b _temp))))
    (define/public (jm_factorial_1 _dataLength)
    (let ([_temp JR.null][_i JR.null])
      (let/ec jreturn
        (set! _temp 1)
        (when (> _dataLength 1)
            (begin
            (begin
                (set! _i 1)
                (let/ec jbreak (let jloop () (when (<= _i _dataLength)
                    (let/ec jcontinue
                (set! _temp (JR.i64 (* _temp _i))))
                    (set! _i (JR.i32 (+ _i 1))) (jloop)))))))
        (jreturn _temp))))
    (define/public (jm_generate_2 _data _visitor)
    (let ([_iterations JR.null][_count JR.null])
      (let/ec jreturn
        (set! _iterations (send this jm_factorial_1 (vector-length _data)))
        (JR.print (get-field f_TOTAL_ITERATIONS_TABLE this))
        (JR.println (JR.str _iterations))
        (begin
            (set! _count 0)
            (let/ec jbreak (let jloop () (when (< _count (JR.i64 (- _iterations 1)))
                (let/ec jcontinue
            (send this jm_getNext_1 _data)
            (send _visitor jm_visit_1 this))
                (set! _count (JR.i64 (+ _count 1))) (jloop)))))
        (JR.println (get-field f_FINISHED this)))))))
(define (OrderedObjectArrayPermutationUtil.jclassValue) OrderedObjectArrayPermutationUtil%)

(define OrderedObjectArrayPermutationUtil.jcell_instance 'jnone)
(define (OrderedObjectArrayPermutationUtil.jstatic_instance)
  (when (eq? OrderedObjectArrayPermutationUtil.jcell_instance 'jnone) (set! OrderedObjectArrayPermutationUtil.jcell_instance (OrderedObjectArrayPermutationUtil.jnew_0)))
  OrderedObjectArrayPermutationUtil.jcell_instance)
(define (OrderedObjectArrayPermutationUtil.jsetstatic_instance value) (set! OrderedObjectArrayPermutationUtil.jcell_instance value))

(define (OrderedObjectArrayPermutationUtil.jnew_0)
  (define this (new OrderedObjectArrayPermutationUtil% [jclass "OrderedObjectArrayPermutationUtil"]))
    (set-field! f_TOTAL_ITERATIONS_TABLE this "Total Iterations: ")
    (set-field! f_FINISHED this "\nFINISHED")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (OrderedObjectArrayPermutationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OrderedObjectArrayPermutationUtil.jstatic_instance)))))

(define (OrderedObjectArrayPermutationUtil.jm_main_1 _args)
    (let ([_TOTAL JR.null][_data JR.null][_i JR.null][_permutationVisitor JR.null][_ORIGINAL_DATA_LABEL JR.null])
      (let/ec jreturn
        (set! _TOTAL 7)
        (set! _data (JR.newArray JR.null _TOTAL))
        (begin
            (set! _i 0)
            (let/ec jbreak (let jloop () (when (< _i _TOTAL)
                (let/ec jcontinue
            (vector-set! _data _i (ComparableObject.jnew_0)))
                (set! _i (JR.i32 (+ _i 1))) (jloop)))))
        (Arrays.jm_sort_1 _data)
        (set! _permutationVisitor (ObjectPermutationVisitor.jnew_1 _data))
        (set! _ORIGINAL_DATA_LABEL "Original Data: ")
        (JR.print _ORIGINAL_DATA_LABEL)
        (send _permutationVisitor jm_visit_1 _data)
        (send (OrderedObjectArrayPermutationUtil.jm_getInstance_0) jm_generate_2 _data _permutationVisitor))))



