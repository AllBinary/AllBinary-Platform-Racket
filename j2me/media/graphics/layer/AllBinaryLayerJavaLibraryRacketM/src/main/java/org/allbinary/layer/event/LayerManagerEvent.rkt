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
;; package org.allbinary.layer.event

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(lazy-require ["../../../../org/allbinary/layer/AllBinaryLayer.rkt" (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define LayerManagerEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_layerInterface JR.null])
    (field [f_crud JR.null])
    (define/public (jm_getLayerInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_layerInterface this)))))
    (define/public (jm_setLayerInterface_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_layerInterface this _layerInterface))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "LayerManagerEvent: \n")
        (send _stringBuffer jm_append_1 "LayerInterface: ")
        (send _stringBuffer jm_append_1 (send (send this jm_getLayerInterface_0) jm_toString_0))
        (send _stringBuffer jm_append_1 "\nCRUD: ")
        (send _stringBuffer jm_append_1 (get-field f_crud this))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (LayerManagerEvent.jclassValue) LayerManagerEvent%)

(define (LayerManagerEvent.jnew_2 _layerManager _crud)
  (define this (new LayerManagerEvent% [jclass "LayerManagerEvent"]))
    (set-field! f_layerInterface this (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_crud this _crud)))
  this)



