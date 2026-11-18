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
  "../../../java/lang/System.rkt")
(lazy-require ["../../../org/allbinary/game/rand/MyRandomFactory.rkt" (MyRandomFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonPhoneStrings.rkt" (CommonPhoneStrings.jm_getInstance_0)])
(lazy-require ["./ImmutableBasicArrayList.rkt" (ImmutableBasicArrayList.jnew_2)])
(lazy-require ["./BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define BasicArrayListUtil%
  (class JObject%
    (super-new)
    (field [f_NULL_ARRAY_OF_ARRAY JR.null])
    (field [f_myRandomFactory JR.null])
    (field [f_immutableInstance JR.null])
    (define/public (jm_getRandom_1 _list)
    (let ([_i_random JR.null])
      (let/ec jreturn
        (set! _i_random (send this jm_getRandomIndex_1 _list))
        (jreturn (vector-ref (get-field f_objectArray _list) _i_random)))))
    (define/public (jm_getRandomIndex_1 _list)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_myRandomFactory this) jm_getAbsoluteNextInt_1 (send _list jm_size_0))))))
    (define/public (jm_reverse_1 _list)
    (let ([_lastMinusOneIndex JR.null][_temp JR.null][_size JR.null][_secondSwapIndex JR.null][_index JR.null])
      (let/ec jreturn
        (set! _lastMinusOneIndex (JR.i32 (- (send _list jm_size_0) 2)))
        (set! _temp JR.null)
        (set! _size (JR.idiv _lastMinusOneIndex 2))
        (set! _secondSwapIndex 0)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (<= _index _size)
                (let/ec jcontinue
            (set! _secondSwapIndex (JR.i32 (- _lastMinusOneIndex _index)))
            (set! _temp (send _list jm_removeAt_1 _index))
            (send _list jm_addAt_2 _index (send _list jm_removeAt_1 _secondSwapIndex))
            (send _list jm_addAt_2 (JR.i32 (+ _secondSwapIndex 1)) _temp))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_log_1 _list)
    (let ([_S_LABEL JR.null][_size JR.null][_stringBuffer JR.null][_usedList JR.null][_index JR.null])
      (let/ec jreturn
        (set! _S_LABEL " s: ")
        (set! _size (send _list jm_size_0))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (get-field f_TOTAL_LABEL (CommonLabels.jm_getInstance_0)))
        (send _stringBuffer jm_appendint_1 _size)
        (begin
            (set! _index (JR.i32 (- _size 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _usedList (vector-ref (get-field f_objectArray _list) _index))
            (send _stringBuffer jm_append_1 _S_LABEL)
            (send _stringBuffer jm_appendint_1 (send _usedList jm_size_0)))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getImmutableInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_immutableInstance this)))))))
(define (BasicArrayListUtil.jclassValue) BasicArrayListUtil%)

(define BasicArrayListUtil.jcell_instance 'jnone)
(define (BasicArrayListUtil.jstatic_instance)
  (when (eq? BasicArrayListUtil.jcell_instance 'jnone) (set! BasicArrayListUtil.jcell_instance (BasicArrayListUtil.jnew_0)))
  BasicArrayListUtil.jcell_instance)
(define (BasicArrayListUtil.jsetstatic_instance value) (set! BasicArrayListUtil.jcell_instance value))

(define (BasicArrayListUtil.jnew_0)
  (define this (new BasicArrayListUtil% [jclass "BasicArrayListUtil"]))
    (set-field! f_NULL_ARRAY_OF_ARRAY this (JR.newArray JR.null 0 0))
    (set-field! f_myRandomFactory this (MyRandomFactory.jm_getInstance_0))
    (set-field! f_immutableInstance this (ImmutableBasicArrayList.jnew_2 "Immutable" 0))
  this)

(define (BasicArrayListUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicArrayListUtil.jstatic_instance)))))

(define (BasicArrayListUtil.jm_main_1 _args)
    (let ([_commonPhoneStrings JR.null][_list JR.null])
      (let/ec jreturn
        (set! _commonPhoneStrings (CommonPhoneStrings.jm_getInstance_0))
        (set! _list (BasicArrayListD.jnew_0))
        (send _list jm_add_1 (get-field f_ONE _commonPhoneStrings))
        (send _list jm_add_1 (get-field f_TWO _commonPhoneStrings))
        (send _list jm_add_1 (get-field f_THREE _commonPhoneStrings))
        (send _list jm_add_1 (get-field f_FOUR _commonPhoneStrings))
        (send _list jm_add_1 (get-field f_FIVE _commonPhoneStrings))
        (send _list jm_add_1 (get-field f_SIX _commonPhoneStrings))
        (send _list jm_add_1 (get-field f_SEVEN _commonPhoneStrings))
        (send _list jm_add_1 (get-field f_EIGHT _commonPhoneStrings))
        (send _list jm_add_1 (get-field f_NINE _commonPhoneStrings))
        (send (BasicArrayListUtil.jm_getInstance_0) jm_reverse_1 _list)
        (JR.println (send _list jm_toString_0)))))



