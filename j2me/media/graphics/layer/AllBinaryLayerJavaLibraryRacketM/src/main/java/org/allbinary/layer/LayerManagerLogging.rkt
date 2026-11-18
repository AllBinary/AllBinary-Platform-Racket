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
;; package org.allbinary.layer

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Integer.rkt"
  "./LayerManagerLoggingBase.rkt")
(lazy-require ["../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define LayerManagerLogging%
  (class LayerManagerLoggingBase%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_stringBuilder JR.null])
    (field [f_APPEND JR.null])
    (field [f_APPEND_ JR.null])
    (field [f__AT_ JR.null])
    (field [f_ATTEMPT_REMOVE_ JR.null])
    (field [f_REMOVE_ JR.null])
    (field [f_REMOVE JR.null])
    (field [f_DID_NOT_REMOVE JR.null])
    (field [f_CLEAR JR.null])
    (define/override (jm_append_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_stringBuilder this) jm_delete_2 0 (send (get-field f_stringBuilder this) jm_length_0))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (get-field f_stringBuilder this) jm_appendint_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this)) jm_append_1 (get-field f_APPEND_ this)) jm_append_1 (send _layerInterface jm_getName_0)) jm_toString_0) this (get-field f_APPEND this)))))
    (define/override (jm_appendAt_2 _layerInterface _index)
    (let ()
      (let/ec jreturn
        (send (get-field f_stringBuilder this) jm_delete_2 0 (send (get-field f_stringBuilder this) jm_length_0))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (send (send (get-field f_stringBuilder this) jm_appendint_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this)) jm_append_1 (get-field f_APPEND_ this)) jm_append_1 (send _layerInterface jm_getName_0)) jm_append_1 (get-field f__AT_ this)) jm_appendint_1 _index) jm_toString_0) this (get-field f_APPEND this)))))
    (define/override (jm_remove_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (if (JR.null? _layerInterface)
            (begin
            (send (get-field f_stringBuilder this) jm_delete_2 0 (send (get-field f_stringBuilder this) jm_length_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (get-field f_stringBuilder this) jm_appendint_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this)) jm_append_1 (get-field f_ATTEMPT_REMOVE_ this)) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _layerInterface)) jm_toString_0) this (get-field f_REMOVE this)))
            (begin
            (send (get-field f_stringBuilder this) jm_delete_2 0 (send (get-field f_stringBuilder this) jm_length_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (get-field f_stringBuilder this) jm_appendint_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this)) jm_append_1 (get-field f_ATTEMPT_REMOVE_ this)) jm_append_1 (send _layerInterface jm_getName_0)) jm_toString_0) this (get-field f_REMOVE this)))))))
    (define/override (jm_removeResult_3 _layerManager _layerInterface _result)
    (let ()
      (let/ec jreturn
        (if (JR.null? _layerInterface)
            (begin
            (send (get-field f_stringBuilder this) jm_delete_2 0 (send (get-field f_stringBuilder this) jm_length_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (get-field f_stringBuilder this) jm_appendint_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this)) jm_append_1 (get-field f_REMOVE_ this)) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _layerInterface)) jm_toString_0) this (get-field f_REMOVE this)))
            (if _result
            (begin
            (when (LayerManagerLogging.jstatic_removeFailed)
                (begin
                (send (get-field f_stringBuilder this) jm_delete_2 0 (send (get-field f_stringBuilder this) jm_length_0))
                (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (get-field f_stringBuilder this) jm_appendint_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this)) jm_append_1 (get-field f_REMOVE_ this)) jm_append_1 (send _layerInterface jm_getName_0)) jm_toString_0) this (get-field f_REMOVE this)))))
            (begin
            (send (get-field f_stringBuilder this) jm_delete_2 0 (send (get-field f_stringBuilder this) jm_length_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (get-field f_stringBuilder this) jm_appendint_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this)) jm_append_1 (get-field f_DID_NOT_REMOVE this)) jm_append_1 (send _layerInterface jm_getName_0)) jm_toString_0) this (get-field f_REMOVE this))
            (set! LayerManagerLogging.jcell_removeFailed #t)))))))
    (define/public (jm_log_1 _layerManager)
    (let ([_size JR.null][_commonSeps JR.null][_allBinaryLayer JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_stringBuilder this) jm_delete_2 0 (send (get-field f_stringBuilder this) jm_length_0))
        (set! _size (send _layerManager jm_getSize_0))
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (send (send (get-field f_stringBuilder this) jm_append_1 (Integer.jm_toHexString_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 _layerManager))) jm_append_1 (get-field f_COLON_SEP _commonSeps))
        (send (send (get-field f_stringBuilder this) jm_appendint_1 _size) jm_append_1 (get-field f_COLON_SEP _commonSeps))
        (set! _allBinaryLayer JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _allBinaryLayer (send _layerManager jm_getLayerAt_1 _index))
            (send (send (get-field f_stringBuilder this) jm_append_1 (send _allBinaryLayer jm_getName_0)) jm_append_1 (get-field f_COMMA _commonSeps)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send (get-field f_logUtil this) jm_putF_3 (send (get-field f_stringBuilder this) jm_toString_0) this (get-field f_REMOVE this)))))
    (define/override (jm_clear_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_stringBuilder this) jm_delete_2 0 (send (get-field f_stringBuilder this) jm_length_0))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (get-field f_stringBuilder this) jm_appendint_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this)) jm_append_1 (get-field f_CLEAR this)) jm_toString_0) this (get-field f_CLEAR this)))))))
(define (LayerManagerLogging.jclassValue) LayerManagerLogging%)

(define LayerManagerLogging.jcell_instance 'jnone)
(define (LayerManagerLogging.jstatic_instance)
  (when (eq? LayerManagerLogging.jcell_instance 'jnone) (set! LayerManagerLogging.jcell_instance (LayerManagerLogging.jnew_0)))
  LayerManagerLogging.jcell_instance)
(define (LayerManagerLogging.jsetstatic_instance value) (set! LayerManagerLogging.jcell_instance value))

(define LayerManagerLogging.jcell_removeFailed 'jnone)
(define (LayerManagerLogging.jstatic_removeFailed)
  (when (eq? LayerManagerLogging.jcell_removeFailed 'jnone) (set! LayerManagerLogging.jcell_removeFailed #f))
  LayerManagerLogging.jcell_removeFailed)
(define (LayerManagerLogging.jsetstatic_removeFailed value) (set! LayerManagerLogging.jcell_removeFailed value))

(define (LayerManagerLogging.jnew_0)
  (define this (new LayerManagerLogging% [jclass "LayerManagerLogging"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_stringBuilder this (StringMaker.jnew_0))
    (set-field! f_APPEND this "append")
    (set-field! f_APPEND_ this " append: ")
    (set-field! f__AT_ this " at: ")
    (set-field! f_ATTEMPT_REMOVE_ this " Remove Attempt: ")
    (set-field! f_REMOVE_ this " Remove: ")
    (set-field! f_REMOVE this "remove")
    (set-field! f_DID_NOT_REMOVE this " Did not remove: ")
    (set-field! f_CLEAR this " Clear List")
  this)

(define (LayerManagerLogging.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LayerManagerLogging.jstatic_instance)))))



