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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./CurrentlyPressedTouchButtonSingleton.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/GPoint.rkt" (GPoint.jm_toStringStatic_3)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define CurrentlyPressedTouchButtonSingletonDebug%
  (class CurrentlyPressedTouchButtonSingleton%
    (super-new)
    (field [f_string JR.null])
    (field [f_listString JR.null])
    (field [f_appendText JR.null])
    (field [f_PRESSED_AND_FIRED JR.null])
    (field [f_PRESSED_AND_NOT_FIRED JR.null])
    (field [f_ASSOCIATED_RELEASED_AND_FIRED JR.null])
    (field [f_RELEASED_AND_FIRED JR.null])
    (field [f_RELEASED_AND_FIRED_2 JR.null])
    (field [f_RELEASED_AND_NOT_FIRED JR.null])
    (define/public (jm_appendTouchButtonInput_2 _append _touchButtonInput)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (send _touchButtonInput jm_toString_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 _append)
        (set-field! f_appendText this (send _stringBuffer jm_toString_0))
        (set-field! f_string this (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_listString this)) jm_append_1 (get-field f_appendText this)) jm_toString_0)))))
    (define/public (jm_append_1 _append)
    (let ()
      (let/ec jreturn
        (set-field! f_appendText this (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_appendText this)) jm_append_1 _append) jm_toString_0))
        (set-field! f_string this (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_listString this)) jm_append_1 (get-field f_appendText this)) jm_toString_0)))))
    (define/public (jm_clearLog_2 _x _y)
    (let ()
      (let/ec jreturn
        (set-field! f_appendText this (send (send (send (StringMaker.jnew_0) jm_append_1 (GPoint.jm_toStringStatic_3 _x _y 0)) jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0))) jm_toString_0))
        (set-field! f_string this (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_listString this)) jm_append_1 (get-field f_appendText this)) jm_toString_0)))))
    (define/public (jm_releaseAndNotFired_0)
    (let ()
      (let/ec jreturn
        (send this jm_append_1 (get-field f_RELEASED_AND_NOT_FIRED this)))))
    (define/public (jm_releaseAndFired_1 _touchButtonInput)
    (let ()
      (let/ec jreturn
        (send this jm_appendTouchButtonInput_2 (get-field f_RELEASED_AND_FIRED this) _touchButtonInput))))
    (define/public (jm_releaseAndFired2_1 _touchButtonInput)
    (let ()
      (let/ec jreturn
        (send this jm_appendTouchButtonInput_2 (get-field f_RELEASED_AND_FIRED_2 this) _touchButtonInput))))
    (define/public (jm_releaseAndFiredAssociated_1 _touchButtonInput)
    (let ()
      (let/ec jreturn
        (send this jm_appendTouchButtonInput_2 (get-field f_ASSOCIATED_RELEASED_AND_FIRED this) _touchButtonInput))))
    (define/public (jm_pressedAndFired_1 _touchButtonInput)
    (let ()
      (let/ec jreturn
        (send this jm_appendTouchButtonInput_2 (get-field f_PRESSED_AND_FIRED this) _touchButtonInput))))
    (define/public (jm_pressedAndNotFired_1 _touchButtonInput)
    (let ()
      (let/ec jreturn
        (send this jm_appendTouchButtonInput_2 (get-field f_PRESSED_AND_NOT_FIRED this) _touchButtonInput))))
    (define/override (jm_removeAt_1 _index)
    (let ([_touchButtonInput JR.null])
      (let/ec jreturn
        (set! _touchButtonInput (super jm_removeAt_1 _index))
        (set-field! f_listString this (JR.toString (get-field f_list this)))
        (set-field! f_string this (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_listString this)) jm_append_1 (get-field f_appendText this)) jm_toString_0))
        (jreturn _touchButtonInput))))
    (define/override (jm_remove_1 _touchButtonInput)
    (let ([_isRemoved JR.null])
      (let/ec jreturn
        (set! _isRemoved (super jm_remove_1 _touchButtonInput))
        (set-field! f_listString this (JR.toString (get-field f_list this)))
        (set-field! f_string this (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_listString this)) jm_append_1 (get-field f_appendText this)) jm_toString_0))
        (jreturn _isRemoved))))
    (define/override (jm_add_1 _touchButtonInput)
    (let ()
      (let/ec jreturn
        (super jm_add_1 _touchButtonInput)
        (set-field! f_listString this (JR.toString (get-field f_list this)))
        (set-field! f_string this (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_listString this)) jm_append_1 (get-field f_appendText this)) jm_toString_0)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_string this)))))))
(define (CurrentlyPressedTouchButtonSingletonDebug.jclassValue) CurrentlyPressedTouchButtonSingletonDebug%)

(define CurrentlyPressedTouchButtonSingletonDebug.jcell_instanceC 'jnone)
(define (CurrentlyPressedTouchButtonSingletonDebug.jstatic_instanceC)
  (when (eq? CurrentlyPressedTouchButtonSingletonDebug.jcell_instanceC 'jnone) (set! CurrentlyPressedTouchButtonSingletonDebug.jcell_instanceC (CurrentlyPressedTouchButtonSingletonDebug.jnew_0)))
  CurrentlyPressedTouchButtonSingletonDebug.jcell_instanceC)
(define (CurrentlyPressedTouchButtonSingletonDebug.jsetstatic_instanceC value) (set! CurrentlyPressedTouchButtonSingletonDebug.jcell_instanceC value))

(define (CurrentlyPressedTouchButtonSingletonDebug.jnew_0)
  (define this (new CurrentlyPressedTouchButtonSingletonDebug% [jclass "CurrentlyPressedTouchButtonSingletonDebug"]))
    (set-field! f_string this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_listString this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_appendText this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_PRESSED_AND_FIRED this "pressed & fired")
    (set-field! f_PRESSED_AND_NOT_FIRED this "pressed in button but not fired")
    (set-field! f_ASSOCIATED_RELEASED_AND_FIRED this "assoc. rel & fired")
    (set-field! f_RELEASED_AND_FIRED this "rel & fired 1")
    (set-field! f_RELEASED_AND_FIRED_2 this "rel & fired 2")
    (set-field! f_RELEASED_AND_NOT_FIRED this "rel & not fired")
  this)

(define (CurrentlyPressedTouchButtonSingletonDebug.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CurrentlyPressedTouchButtonSingletonDebug.jstatic_instanceC)))))



