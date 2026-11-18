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
;; package org.allbinary.logic.string.tokens

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define Tokenizer%
  (class JObject%
    (super-new)
    (field [f_sep JR.null])
    (field [f_endSep JR.null])
    (define/public (jm_setSep_1 _sep)
    (let ()
      (let/ec jreturn
        (set-field! f_sep this _sep))))
    (define/public (jm_setEndSep_1 _endSep)
    (let ()
      (let/ec jreturn
        (set-field! f_endSep this _endSep))))
    (define/public (jm_getInsideSep_1 _string)
    (let ([_tokenList JR.null][_index JR.null][_size JR.null][_end JR.null])
      (let/ec jreturn
        (set! _tokenList (BasicArrayListD.jnew_0))
        (set! _index 0)
        (set! _size (string-length _string))
        (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _index (JR.indexOf _string (get-field f_sep this) _index))
            (if (not (= _index (JR.i32 (- 1))))
                (begin
                (set! _end (JR.indexOf _string (get-field f_endSep this) (JR.i32 (+ _index (string-length (get-field f_sep this))))))
                (if (not (= _end (JR.i32 (- 1))))
                    (begin
                    (send _tokenList jm_add_1 (JR.substring _string (JR.i32 (+ _index (string-length (get-field f_sep this)))) (JR.i32 (- _end (JR.i32 (- (string-length (get-field f_endSep this)) 1))))))
                    (set! _index (JR.i32 (+ _end (string-length (get-field f_endSep this))))))
                    (begin
                    (void))))
                (begin
                (jbreak (void))))) (jloop))))
        (jreturn _tokenList))))
    (define/public (jm_getTokensFromString_2 _string _tokenVector)
    (let ([_index JR.null][_end JR.null])
      (let/ec jreturn
        (set! _index 0)
        (set! _end 0)
        (let/ec jbreak (let jloop () (when (< _index (string-length _string))
                (let/ec jcontinue
            (set! _end (JR.indexOf _string (get-field f_sep this) _index))
            (if (not (= _end (JR.i32 (- 1))))
                (begin
                (send _tokenVector jm_add_1 (JR.substring _string _index _end))
                (set! _index (JR.i32 (+ _end (string-length (get-field f_sep this))))))
                (begin
                (send _tokenVector jm_add_1 (JR.substring _string _index (string-length _string)))
                (jbreak (void))))) (jloop))))
        (jreturn _tokenVector))))
    (define/public (jm_getTokens_1 _stringVector)
    (let ([_tokenHashtable JR.null][_string JR.null][_end JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _tokenHashtable (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
        (set! _string (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
        (set! _end 0)
        (set! _size (send _stringVector jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _string (vector-ref (get-field f_objectArray _stringVector) _index))
            (set! _end (JR.indexOf _string (get-field f_sep this)))
            (when (>= _end 0)
                (begin
                (send _tokenHashtable jm_put_2 (JR.substring _string 0 _end) (JR.substring _string (JR.i32 (+ _end 1)) (string-length _string))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _tokenHashtable))))))
(define (Tokenizer.jclassValue) Tokenizer%)

(define (Tokenizer.jnew_1 _sep)
  (define this (new Tokenizer% [jclass "Tokenizer"]))
    
    (set-field! f_endSep this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (when (= (send (TsUtil.jm_getInstance_0) jm_compareTo_2 _sep (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))) 0)
            (begin
            (raise (JR.newException "Exception" "Sep provided is not valid"))))
        (set-field! f_sep this _sep)))
  this)



