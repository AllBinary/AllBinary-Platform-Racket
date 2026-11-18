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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./Input.rkt" (Input.jnew_2)])
(provide (all-defined-out))

(define InputFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_KEY_CODE_LABEL JR.null])
    (field [f_DEVICE_ID_LABEL JR.null])
    (field [f_MAX 0])
    (field [f_inputIntegerArray JR.null])
    (field [f_NO_INPUT JR.null])
    (define/public (jm_add_2 _id _input)
    (let ()
      (let/ec jreturn
        (vector-set! (get-field f_inputIntegerArray this) _id _input))))
    (define/public (jm_getInstanceById_1 _id)
    (let ()
      (let/ec jreturn
        (when (< _id 0)
            (begin
            (set! _id (JR.i32 (- _id)))))
        (when (> _id (vector-length (get-field f_inputIntegerArray this)))
            (begin
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Warning id: ") jm_appendint_1 _id) jm_toString_0) this (get-field f_GET_INSTANCE (get-field f_commonStrings this)))
            (jreturn (get-field f_NO_INPUT this))))
        (jreturn (vector-ref (get-field f_inputIntegerArray this) _id)))))))
(define (InputFactory.jclassValue) InputFactory%)

(define InputFactory.jcell_instance 'jnone)
(define (InputFactory.jstatic_instance)
  (when (eq? InputFactory.jcell_instance 'jnone) (set! InputFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  InputFactory.jcell_instance)
(define (InputFactory.jsetstatic_instance value) (set! InputFactory.jcell_instance value))

(define (InputFactory.jnew_0)
  (define this (new InputFactory% [jclass "InputFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_KEY_CODE_LABEL this "KeyCode: ")
    (set-field! f_DEVICE_ID_LABEL this "DeviceId: ")
    (set-field! f_MAX this (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getMin_0))
    (set-field! f_inputIntegerArray this (JR.newArray JR.null (get-field f_MAX this)))
    (set-field! f_NO_INPUT this (Input.jnew_2 0 (get-field f_UNKNOWN (get-field f_commonStrings this))))
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length (get-field f_inputIntegerArray this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! (get-field f_inputIntegerArray this) _index (get-field f_NO_INPUT this)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))))
  this)

(define (InputFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (InputFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! InputFactory.jcell_instance (InputFactory.jnew_0))))
        (jreturn (InputFactory.jstatic_instance)))))



