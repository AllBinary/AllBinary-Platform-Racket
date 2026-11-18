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
;; package org.allbinary.graphics.form.item.validation

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/control/validate/ValidatorBase.rkt"
  "../../../../../../java/lang/Integer.rkt"
  "../../../../../../java/lang/Boolean.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/java/bool/BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define NumberTextFieldItemValidator%
  (class ValidatorBase%
    (super-new)
    (field [f_textFieldItem JR.null])
    (field [f_min 0])
    (field [f_max 0])
    (field [f_maxChars 0])
    (define/public (jm_isNumberValid_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_TRUE (BooleanFactory.jm_getInstance_0))))))
    (define/public (jm_toNumberVector_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn (BasicArrayListD.jnew_0)))))
    (define/override (jm_isValid_0)
    (let ([_result JR.null][_string JR.null][_textLength JR.null])
      (let/ec jreturn
        (set! _result (get-field f_TRUE (BooleanFactory.jm_getInstance_0)))
        (set! _string (send (get-field f_textFieldItem this) jm_getString_0))
        (set! _textLength (string-length _string))
        (if (and (> _textLength 0) (< _textLength (get-field f_maxChars this)))
            (begin
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (set! _result (get-field f_FALSE (BooleanFactory.jm_getInstance_0))))])
                (Integer.jm_parseInt_1 (send (get-field f_textFieldItem this) jm_getString_0))))
            (begin
            (if (< _textLength 1)
                (begin
                (set! _result (get-field f_FALSE (BooleanFactory.jm_getInstance_0))))
                (when (> _textLength (get-field f_maxChars this))
                (begin
                (set! _result (get-field f_FALSE (BooleanFactory.jm_getInstance_0))))))))
        (jreturn _result))))
    (define/override (jm_toList_0)
    (let ([_list JR.null][_string JR.null][_textLength JR.null][_label JR.null][_name JR.null][_smallIntegerSingletonFactory JR.null][_stringMaker JR.null][_number JR.null])
      (let/ec jreturn
        (set! _list (BasicArrayListD.jnew_0))
        (set! _string (send (get-field f_textFieldItem this) jm_getString_0))
        (set! _textLength (string-length _string))
        (set! _label (send (get-field f_textFieldItem this) jm_getLabel_0))
        (set! _name (JR.substring _label 0 (JR.i32 (- (string-length _label) 2))))
        (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (set! _stringMaker (StringMaker.jnew_0))
        (if (and (> _textLength 0) (< _textLength (get-field f_maxChars this)))
            (begin
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                (send _list jm_add_1 (send (send (send _stringMaker jm_append_1 _name) jm_append_1 " is not a number") jm_toString_0)))])
                (set! _number (send _smallIntegerSingletonFactory jm_createInstance_1 (Integer.jm_parseInt_1 (send (get-field f_textFieldItem this) jm_getString_0))))
                (if (> (send _number jm_intValue_0) (get-field f_min this))
                    (begin
                    (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                    (send _list jm_add_1 (send (send (send _stringMaker jm_append_1 _name) jm_append_1 " is to small") jm_toString_0)))
                    (when (> (send _number jm_intValue_0) (get-field f_max this))
                    (begin
                    (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                    (send _list jm_add_1 (send (send (send _stringMaker jm_append_1 _name) jm_append_1 " is to large") jm_toString_0)))))))
            (begin
            (if (< _textLength 1)
                (begin
                (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                (send _list jm_add_1 (send (send (send _stringMaker jm_append_1 _name) jm_append_1 " is to short") jm_toString_0)))
                (when (> _textLength (get-field f_maxChars this))
                (begin
                (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                (send _list jm_add_1 (send (send (send _stringMaker jm_append_1 _name) jm_append_1 " is to long") jm_toString_0)))))))
        (jreturn _list))))))
(define (NumberTextFieldItemValidator.jclassValue) NumberTextFieldItemValidator%)

(define (NumberTextFieldItemValidator.jnew_4 _textFieldItem _maxChars _min _max)
  (define this (new NumberTextFieldItemValidator% [jclass "NumberTextFieldItemValidator"]))
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_textFieldItem this _textFieldItem)
        (set-field! f_min this _min)
        (set-field! f_max this _max)
        (set-field! f_maxChars this _maxChars)))
  this)



