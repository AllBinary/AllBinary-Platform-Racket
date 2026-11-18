#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.layer

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/thread/SynchObject.rkt" (SynchObject.jnew_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/ABSystemWrapper.rkt" (ABSystemWrapper.jm_getInstance_0)])
(provide (all-defined-out))

(define LayerManager%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_systemWrapper JR.null])
    (field [f_tsUtil JR.null])
    (field [f_layerManagerLogging JR.null])
    (field [f_list JR.null])
    (field [f_anyType JR.null])
    (define/public (jm_contains_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_list this) jm_contains_1 _layerInterface)))))
    (define/public (jm_update_1 _layerInterface)
    (let ([_had JR.null][_nextLayerInterface JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _had (send (get-field f_list this) jm_remove_1 _layerInterface))
        (when _had
            (begin
            (set! _nextLayerInterface JR.null)
            (set! _size (send (get-field f_list this) jm_size_0))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _nextLayerInterface (send (get-field f_list this) jm_get_1 _index))
                (when (> (send _layerInterface jm_getZP_0) (send _nextLayerInterface jm_getZP_0))
                    (begin
                    (send (get-field f_list this) jm_addAt_2 _index _layerInterface)
                    (jreturn (void)))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (send (get-field f_list this) jm_add_1 _layerInterface))))))
    (define/public (jm_insert_1 _layerInterface)
    (let ([_nextLayerInterface JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _nextLayerInterface JR.null)
        (set! _size (send (get-field f_list this) jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _nextLayerInterface (send (get-field f_list this) jm_get_1 _index))
            (when (> (send _layerInterface jm_getZP_0) (send _nextLayerInterface jm_getZP_0))
                (begin
                (send this jm_appendAt_2 _layerInterface _index)
                (jreturn (void)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send this jm_append_1 _layerInterface))))
    (define/public (jm_append_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_layerManagerLogging this) jm_append_1 _layerInterface)
        (send (get-field f_list this) jm_add_1 _layerInterface))))
    (define/public (jm_appendAt_2 _layerInterface _index)
    (let ()
      (let/ec jreturn
        (send (get-field f_layerManagerLogging this) jm_appendAt_2 _layerInterface _index)
        (send (get-field f_list this) jm_addAt_2 _index _layerInterface))))
    (define/public (jm_remove_1 _layerInterface)
    (let ([_result JR.null])
      (let/ec jreturn
        (begin
            (send (get-field f_layerManagerLogging this) jm_remove_1 _layerInterface)
            (set! _result (send (get-field f_list this) jm_remove_1 _layerInterface))
            (send (get-field f_layerManagerLogging this) jm_removeResult_3 this _layerInterface _result)))))
    (define/public (jm_getLayerAt_1 _index)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_objectArray (get-field f_list this)) _index)))))
    (define/public (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_list this) jm_size_0)))))
    (define/public (jm_cleanup_0)
    (let ()
      (let/ec jreturn
        (begin
            (send (get-field f_list this) jm_clear_0)
            (send (get-field f_layerManagerLogging this) jm_clear_0)
            (send (get-field f_tsUtil this) jm_gc_0)
            (send (get-field f_tsUtil this) jm_gc_0)))))
    (define/public (jm_paint_3 _g _x _y)
    (let ([_comp JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _comp JR.null)
            (begin
                (set! _index (send (get-field f_list this) jm_size_0))
                (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                    (let/ec jcontinue
                (set! _comp (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
                (when (and (not (JR.null? _comp)) (send _comp jm_isVisible_0))
                    (begin
                    (send _comp jm_paint_1 _g)))) (jloop)))))))))))
(define (LayerManager.jclassValue) LayerManager%)

(define (LayerManager.jnew_1 _layerManagerLogging)
  (define this (new LayerManager% [jclass "LayerManager"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_systemWrapper this (ABSystemWrapper.jm_getInstance_0))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (set-field! f_anyType this (SynchObject.jnew_0))
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)))
        (set-field! f_layerManagerLogging this _layerManagerLogging)))
  this)



