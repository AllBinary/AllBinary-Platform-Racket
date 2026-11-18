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
  "./BaseTouchInput.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicTouchButtonsBuilder%
  (class BaseTouchInput%
    (super-new)
    (field [f_logUtil JR.null])
    (define/override (jm_getList_0)
    (let ([_list JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_GET_LIST (get-field f_commonStrings this)) _e)
            (jreturn (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0)))])
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_GET_LIST (get-field f_commonStrings this)))
            (set! _list (BasicArrayListD.jnew_0))
            (jreturn _list)))))))
(define (BasicTouchButtonsBuilder.jclassValue) BasicTouchButtonsBuilder%)

(define BasicTouchButtonsBuilder.jcell_SINGLETON 'jnone)
(define (BasicTouchButtonsBuilder.jstatic_SINGLETON)
  (when (eq? BasicTouchButtonsBuilder.jcell_SINGLETON 'jnone) (set! BasicTouchButtonsBuilder.jcell_SINGLETON (BasicTouchButtonsBuilder.jnew_0)))
  BasicTouchButtonsBuilder.jcell_SINGLETON)
(define (BasicTouchButtonsBuilder.jsetstatic_SINGLETON value) (set! BasicTouchButtonsBuilder.jcell_SINGLETON value))

(define (BasicTouchButtonsBuilder.jnew_0)
  (define this (new BasicTouchButtonsBuilder% [jclass "BasicTouchButtonsBuilder"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)

(define (BasicTouchButtonsBuilder.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicTouchButtonsBuilder.jstatic_SINGLETON)))))



