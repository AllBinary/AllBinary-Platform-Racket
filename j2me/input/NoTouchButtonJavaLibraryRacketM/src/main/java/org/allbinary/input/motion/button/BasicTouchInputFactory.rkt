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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./TouchButtonInput.rkt" (TouchButtonInput.jnew_2)])
(provide (all-defined-out))

(define BasicTouchInputFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_SPECIAL_BUTTON_SIX JR.null])
    (field [f_SPECIAL_BUTTON_FIVE JR.null])
    (field [f_SPECIAL_BUTTON_FOUR JR.null])
    (field [f_SPECIAL_BUTTON_THREE JR.null])
    (field [f_SPECIAL_BUTTON_TWO JR.null])
    (field [f_SPECIAL_BUTTON_ONE JR.null])
    (field [f_UP JR.null])
    (field [f_LEFT JR.null])
    (field [f_RIGHT JR.null])
    (field [f_DOWN JR.null])
    (field [f_NONE JR.null])
    (field [f_initialized #f])
    (field [f_list JR.null])
    (define/public (jm_init_1 _inputToGameKeyMapping)
    (let ()
      (let/ec jreturn
        (when (not (get-field f_initialized this))
            (begin
            (set-field! f_initialized this #t)
            (send (get-field f_list this) jm_add_1 (get-field f_UP this))
            (send (get-field f_list this) jm_add_1 (get-field f_LEFT this))
            (send (get-field f_list this) jm_add_1 (get-field f_RIGHT this))
            (send (get-field f_list this) jm_add_1 (get-field f_DOWN this))
            (send (get-field f_list this) jm_add_1 (get-field f_SPECIAL_BUTTON_TWO this))
            (send (get-field f_list this) jm_add_1 (get-field f_SPECIAL_BUTTON_FOUR this))
            (send (get-field f_list this) jm_add_1 (get-field f_SPECIAL_BUTTON_THREE this))
            (send (get-field f_list this) jm_add_1 (get-field f_SPECIAL_BUTTON_ONE this))
            (send (get-field f_list this) jm_add_1 (get-field f_SPECIAL_BUTTON_FIVE this))
            (send (get-field f_list this) jm_add_1 (get-field f_SPECIAL_BUTTON_SIX this))
            (send this jm_updateAllList_2 (get-field f_list this) _inputToGameKeyMapping))))))
    (define/public (jm_updateAll_1 _inputToGameKeyMapping)
    (let ()
      (let/ec jreturn
        (send this jm_updateAllList_2 (send this jm_getList_0) _inputToGameKeyMapping))))
    (define/public (jm_updateAllList_2 _list _inputToGameKeyMapping)
    (let ([_touchButtonInput JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START (CommonLabels.jm_getInstance_0))) jm_appendint_1 (send _list jm_size_0)) jm_toString_0) this "updateAll")
        (begin
            (set! _index (JR.i32 (- (send _list jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _touchButtonInput (send _list jm_get_1 _index))
            (send _touchButtonInput jm_update_1 _inputToGameKeyMapping))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))))
(define (BasicTouchInputFactory.jclassValue) BasicTouchInputFactory%)

(define BasicTouchInputFactory.jcell_instance 'jnone)
(define (BasicTouchInputFactory.jstatic_instance)
  (when (eq? BasicTouchInputFactory.jcell_instance 'jnone) (set! BasicTouchInputFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  BasicTouchInputFactory.jcell_instance)
(define (BasicTouchInputFactory.jsetstatic_instance value) (set! BasicTouchInputFactory.jcell_instance value))

(define (BasicTouchInputFactory.jnew_0)
  (define this (new BasicTouchInputFactory% [jclass "BasicTouchInputFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_SPECIAL_BUTTON_SIX this (TouchButtonInput.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 30)) "Button 6"))
    (set-field! f_SPECIAL_BUTTON_FIVE this (TouchButtonInput.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 31)) "Button 5"))
    (set-field! f_SPECIAL_BUTTON_FOUR this (TouchButtonInput.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 32)) "Button 4"))
    (set-field! f_SPECIAL_BUTTON_THREE this (TouchButtonInput.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 33)) "Button 3"))
    (set-field! f_SPECIAL_BUTTON_TWO this (TouchButtonInput.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 34)) "Button 2"))
    (set-field! f_SPECIAL_BUTTON_ONE this (TouchButtonInput.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 35)) "Button 1"))
    (set-field! f_UP this (TouchButtonInput.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 36)) "Up Button"))
    (set-field! f_LEFT this (TouchButtonInput.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 37)) "Left Button"))
    (set-field! f_RIGHT this (TouchButtonInput.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 38)) "Right Button"))
    (set-field! f_DOWN this (TouchButtonInput.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 39)) "Down Button"))
    (set-field! f_NONE this (TouchButtonInput.jnew_2 (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 40)) "No Button"))
    (set-field! f_initialized this #f)
    (set-field! f_list this (BasicArrayListD.jnew_0))
  this)

(define (BasicTouchInputFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (BasicTouchInputFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! BasicTouchInputFactory.jcell_instance (BasicTouchInputFactory.jnew_0))))
        (jreturn (BasicTouchInputFactory.jstatic_instance)))))



