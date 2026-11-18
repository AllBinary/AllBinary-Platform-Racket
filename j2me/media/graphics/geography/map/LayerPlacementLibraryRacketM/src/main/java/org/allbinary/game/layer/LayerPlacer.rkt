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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/util/Enumeration.rkt")
(lazy-require ["../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/layer/LayerInterfaceFactory.rkt" (LayerInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/EnumerationUtil.rkt" (EnumerationUtil.jm_getInstance_0)])
(lazy-require ["./LayerPlacementTypeFactory.rkt" (LayerPlacementTypeFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define LayerPlacer%
  (class JObject%
    (super-new)
    (field [f_enumerationUtil JR.null])
    (field [f_layerInterfaceVisitor JR.null])
    (field [f_dimension JR.null])
    (define/public (jm_processList_1 _list)
    (let ([_size JR.null][_layerPlacementInterface JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send _list jm_size_0))
        (set! _layerPlacementInterface JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _layerPlacementInterface (vector-ref (get-field f_objectArray _list) _index))
            (send this jm_process_1 _layerPlacementInterface))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_process_1 _layerPlacementInterface)
    (let ([_relativePoint JR.null][_layerInterfaceFactory JR.null][_hashtable JR.null][_enumeration JR.null][_point JR.null][_layerHashtable JR.null][_x JR.null][_y JR.null][_z JR.null][_layerInterface JR.null])
      (let/ec jreturn
        (set! _relativePoint (send this jm_getPoint_1 _layerPlacementInterface))
        (set! _layerInterfaceFactory (LayerInterfaceFactory.jm_getInstance_0))
        (set! _hashtable (send _layerPlacementInterface jm_getInstance_0))
        (set! _enumeration (send _hashtable jm_keys_0))
        (set! _point JR.null)
        (set! _layerHashtable JR.null)
        (set! _x 0)
        (set! _y 0)
        (set! _z 0)
        (set! _layerInterface JR.null)
        (let/ec jbreak (let jloop () (when (send (get-field f_enumerationUtil this) jm_hasMoreElements_1 _enumeration)
                (let/ec jcontinue
            (set! _point (send (get-field f_enumerationUtil this) jm_nextElement_1 _enumeration))
            (set! _layerHashtable (send _hashtable jm_get_1 _point))
            (set! _x (JR.i32 (+ (send _point jm_getX_0) (send _relativePoint jm_getX_0))))
            (set! _y (JR.i32 (+ (send _point jm_getY_0) (send _relativePoint jm_getY_0))))
            (set! _z (JR.i32 (+ (send _point jm_getZ_0) (send _relativePoint jm_getZ_0))))
            (set! _layerInterface (send _layerInterfaceFactory jm_getNexInstance_4 _layerHashtable _x _y _z))
            (send (get-field f_layerInterfaceVisitor this) jm_visit_1 _layerInterface)) (jloop)))))))
    (define/public (jm_getPoint_1 _layerPlacementInterface)
    (let ([_pointFactory JR.null][_layerPlacementType JR.null][_width JR.null][_height JR.null][_x JR.null][_y JR.null])
      (let/ec jreturn
        (set! _pointFactory (PointFactory.jm_getInstance_0))
        (set! _layerPlacementType (send _layerPlacementInterface jm_getLayerType_0))
        (if (eq? _layerPlacementType (get-field f_MAP (LayerPlacementTypeFactory.jm_getInstance_0)))
            (begin
            (set! _width (send _layerPlacementInterface jm_getWidth_0))
            (set! _height (send _layerPlacementInterface jm_getHeight_0))
            (set! _x (JR.idiv (JR.i32 (- (send (get-field f_dimension this) jm_getX_0) _width)) 2))
            (set! _y (JR.idiv (JR.i32 (- (send (get-field f_dimension this) jm_getY_0) _height)) 2))
            (jreturn (send _pointFactory jm_createXY_2 _x _y)))
            (if (eq? _layerPlacementType (get-field f_UP (LayerPlacementTypeFactory.jm_getInstance_0)))
            (begin
            (set! _width (send _layerPlacementInterface jm_getWidth_0))
            (set! _height (send _layerPlacementInterface jm_getHeight_0))
            (set! _x (JR.idiv (JR.i32 (- (send (get-field f_dimension this) jm_getX_0) _width)) 2))
            (set! _y (JR.i32 (- _height)))
            (jreturn (send _pointFactory jm_createXY_2 _x _y)))
            (begin
            (raise (JR.newException "Exception" "PlacementType Not Recognized"))))))))))
(define (LayerPlacer.jclassValue) LayerPlacer%)

(define (LayerPlacer.jnew_2 _layerInterfaceVisitor _dimension)
  (define this (new LayerPlacer% [jclass "LayerPlacer"]))
    (set-field! f_enumerationUtil this (EnumerationUtil.jm_getInstance_0))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_layerInterfaceVisitor this _layerInterfaceVisitor)
        (set-field! f_dimension this _dimension)))
  this)



