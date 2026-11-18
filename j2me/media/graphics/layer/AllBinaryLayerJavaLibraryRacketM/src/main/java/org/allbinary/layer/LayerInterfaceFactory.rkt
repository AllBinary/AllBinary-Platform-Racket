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
  "../../../java/lang/Integer.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(lazy-require ["./Layer.rkt" (Layer.jstatic_ID)])
(provide (all-defined-out))

(define LayerInterfaceFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_list JR.null])
    (field [f_HASHTABLE_LABEL JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn
        (set-field! f_list this (BasicArrayListD.jnew_0)))))
    (define/public (jm_getNexInstance_4 _hashtable _x _y _z)
    (let ([_commonStrings JR.null][_typeInteger JR.null][_layerInterfaceFactoryInterface JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_HASHTABLE_LABEL this)) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _hashtable)) jm_toString_0) this (get-field f_GET_INSTANCE _commonStrings))
        (set! _typeInteger (send _hashtable jm_get_1 (Layer.jstatic_ID)))
        (set! _layerInterfaceFactoryInterface (vector-ref (get-field f_objectArray (get-field f_list this)) (JR.i32 (- (send _typeInteger jm_intValue_0) 1))))
        (jreturn (send _layerInterfaceFactoryInterface jm_getNextInstance_4 _hashtable _x _y _z)))))
    (define/public (jm_add_1 _layerInterfaceFactoryInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_add_1 _layerInterfaceFactoryInterface))))))
(define (LayerInterfaceFactory.jclassValue) LayerInterfaceFactory%)

(define LayerInterfaceFactory.jcell_SINGLETON 'jnone)
(define (LayerInterfaceFactory.jstatic_SINGLETON)
  (when (eq? LayerInterfaceFactory.jcell_SINGLETON 'jnone) (set! LayerInterfaceFactory.jcell_SINGLETON (LayerInterfaceFactory.jnew_0)))
  LayerInterfaceFactory.jcell_SINGLETON)
(define (LayerInterfaceFactory.jsetstatic_SINGLETON value) (set! LayerInterfaceFactory.jcell_SINGLETON value))

(define (LayerInterfaceFactory.jnew_0)
  (define this (new LayerInterfaceFactory% [jclass "LayerInterfaceFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_list this (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))
    (set-field! f_HASHTABLE_LABEL this "Hashtable: ")
  this)

(define (LayerInterfaceFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LayerInterfaceFactory.jstatic_SINGLETON)))))



