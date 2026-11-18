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
;; package org.allbinary.game.part

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool.rkt" (CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(lazy-require ["./CountedLayerInterfaceFactoryPart.rkt" (CountedLayerInterfaceFactoryPart.jnew_2)])
(provide (all-defined-out))

(define MakeCountedPartsSingletonArrayFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_list JR.null])
    (define/public (jm_getUpdated_1 _partInterfaceArray)
    (let ([_index JR.null][_countedBasicArrayList JR.null][_layerInterfaceFactoryInterface JR.null][_size JR.null][_stringBuffer JR.null][_commonStrings JR.null][_newPartInterfaceArray JR.null][_newSize JR.null])
      (let/ec jreturn
        (set-field! f_list this (BasicArrayListD.jnew_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _partInterfaceArray))
                (let/ec jcontinue
            (send (get-field f_list this) jm_add_1 (vector-ref _partInterfaceArray _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _countedBasicArrayList (send (CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance_0) jm_getList_0))
        (set! _layerInterfaceFactoryInterface JR.null)
        (set! _size (send _countedBasicArrayList jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _layerInterfaceFactoryInterface (vector-ref (get-field f_objectArray _countedBasicArrayList) _index))
            (send (get-field f_list this) jm_add_1 (CountedLayerInterfaceFactoryPart.jnew_2 0 _layerInterfaceFactoryInterface)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Total Parts: ")
        (send _stringBuffer jm_appendint_1 (send (get-field f_list this) jm_size_0))
        (send _stringBuffer jm_append_1 " Counted: ")
        (send _stringBuffer jm_appendint_1 (send _countedBasicArrayList jm_size_0))
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) this (get-field f_GET_INSTANCE _commonStrings))
        (set! _newPartInterfaceArray (JR.newArray JR.null (send (get-field f_list this) jm_size_0)))
        (set! _newSize (vector-length _newPartInterfaceArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _newSize)
                (let/ec jcontinue
            (vector-set! _newPartInterfaceArray _index (send (get-field f_list this) jm_get_1 _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _newPartInterfaceArray))))))
(define (MakeCountedPartsSingletonArrayFactory.jclassValue) MakeCountedPartsSingletonArrayFactory%)

(define MakeCountedPartsSingletonArrayFactory.jcell_instance 'jnone)
(define (MakeCountedPartsSingletonArrayFactory.jstatic_instance)
  (when (eq? MakeCountedPartsSingletonArrayFactory.jcell_instance 'jnone) (set! MakeCountedPartsSingletonArrayFactory.jcell_instance (MakeCountedPartsSingletonArrayFactory.jnew_0)))
  MakeCountedPartsSingletonArrayFactory.jcell_instance)
(define (MakeCountedPartsSingletonArrayFactory.jsetstatic_instance value) (set! MakeCountedPartsSingletonArrayFactory.jcell_instance value))

(define (MakeCountedPartsSingletonArrayFactory.jnew_0)
  (define this (new MakeCountedPartsSingletonArrayFactory% [jclass "MakeCountedPartsSingletonArrayFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_list this (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))
  this)

(define (MakeCountedPartsSingletonArrayFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MakeCountedPartsSingletonArrayFactory.jstatic_instance)))))



