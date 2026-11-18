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
;; package org.allbinary.data

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Character.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringValidationUtil.rkt" (StringValidationUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/tokens/Tokenizer.rkt" (Tokenizer.jnew_1)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define CamelCaseUtil%
  (class JObject%
    (super-new)
    (field [f_commonSeps JR.null])
    (define/public (jm_getAsCamelCase_2 _string _stringBuilder)
    (let ([_stringValidationUtil JR.null][_list JR.null][_tokenizer JR.null][_size JR.null][_word JR.null][_i JR.null])
      (let/ec jreturn
        (set! _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (send _stringBuilder jm_delete_2 0 (send _stringBuilder jm_length_0))
        (set! _list (BasicArrayListD.jnew_0))
        (set! _tokenizer (Tokenizer.jnew_1 (get-field f_UNDERSCORE (get-field f_commonSeps this))))
        (send _tokenizer jm_getTokensFromString_2 _string _list)
        (set! _size (send _list jm_size_0))
        (set! _word JR.null)
        (begin
            (set! _i 0)
            (let/ec jbreak (let jloop () (when (< _i _size)
                (let/ec jcontinue
            (set! _word (send _list jm_get_1 _i))
            (set! _word (if (send _stringValidationUtil jm_isEmpty_1 _word) _word (send (send (send (StringMaker.jnew_0) jm_appendchar_1 (Character.jm_toUpperCase_1 (JR.charAt _word 0))) jm_append_1 (JR.toLowerCase (JR.substring _word 1))) jm_toString_0)))
            (send _stringBuilder jm_append_1 _word))
                (set! _i (JR.i32 (+ _i 1))) (jloop)))))
        (jreturn (send _stringBuilder jm_toString_0)))))))
(define (CamelCaseUtil.jclassValue) CamelCaseUtil%)

(define CamelCaseUtil.jcell_instance 'jnone)
(define (CamelCaseUtil.jstatic_instance)
  (when (eq? CamelCaseUtil.jcell_instance 'jnone) (set! CamelCaseUtil.jcell_instance (CamelCaseUtil.jnew_0)))
  CamelCaseUtil.jcell_instance)
(define (CamelCaseUtil.jsetstatic_instance value) (set! CamelCaseUtil.jcell_instance value))

(define (CamelCaseUtil.jnew_0)
  (define this (new CamelCaseUtil% [jclass "CamelCaseUtil"]))
    (set-field! f_commonSeps this (CommonSeps.jm_getInstance_0))
  this)

(define (CamelCaseUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CamelCaseUtil.jstatic_instance)))))



