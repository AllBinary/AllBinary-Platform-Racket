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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/graphics/pipeline/BasicGraphicsPipeline.rkt" (BasicGraphicsPipeline.jnew_1)])
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListS.rkt" (BasicArrayListS.jnew_1)])
(lazy-require ["./VectorAnimationUtil.rkt" (VectorAnimationUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define VectorRotationGenerator%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_vectorAnimationUtil JR.null])
    (field [f_angleFactory JR.null])
    (define/public (jm_getInstance_1 _vectorRotationInfo)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getInstanceFrames_4 (send _vectorRotationInfo jm_getWidth_0) (send _vectorRotationInfo jm_getHeight_0) (send _vectorRotationInfo jm_getPoints_0) (send _vectorRotationInfo jm_getTotalFrames_0))))))
    (define/public (jm_getInstanceFrames_4 _width _height _points _frames)
    (let ([_totalAngle JR.null][_angleIncrement JR.null][_pointsBasicArrayList JR.null][_pointBasicArrayList JR.null][_pointFactory JR.null][_size JR.null][_index JR.null][_newPoints JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_GET_INSTANCE _commonStrings) _e)
            (jreturn (get-field f_NULL_INT_ARRAY_ARRAY_ARRAY (NullUtil.jm_getInstance_0))))])
            (set! _totalAngle (get-field f_TOTAL_ANGLE (get-field f_angleFactory this)))
            (set! _angleIncrement (JR.idiv _totalAngle _frames))
            (set! _pointsBasicArrayList (BasicArrayListS.jnew_1 (JR.idiv _totalAngle _angleIncrement)))
            (set! _pointBasicArrayList (BasicArrayListS.jnew_1 (vector-length _points)))
            (set! _pointFactory (PointFactory.jm_getInstance_0))
            (set! _size (vector-length _points))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (send _pointBasicArrayList jm_add_1 (send _pointFactory jm_createXY_2 (vector-ref (vector-ref _points _index) 0) (vector-ref (vector-ref _points _index) 1))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _totalAngle)
                    (let/ec jcontinue
                (send _pointsBasicArrayList jm_add_1 (send this jm_getListAtAngle_4 _width _height _pointBasicArrayList (send (get-field f_angleFactory this) jm_getAt_1 _index)))
                (set! _index (JR.i32 (+ _index _angleIncrement)))) (jloop))))
            (set! _newPoints (send (get-field f_vectorAnimationUtil this) jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 _pointsBasicArrayList (send _pointBasicArrayList jm_size_0)))
            (jreturn _newPoints)))))
    (define/public (jm_getListAtAngle_4 _width _height _pointBasicArrayList _angle)
    (let ([_graphicsPipe JR.null])
      (let/ec jreturn
        (set! _graphicsPipe (BasicGraphicsPipeline.jnew_1 _pointBasicArrayList))
        (send _graphicsPipe jm_createMatrix_0)
        (send _graphicsPipe jm_translate_2 (JR.i32 (- (arithmetic-shift _width (- (bitwise-and 1 31))))) (JR.i32 (- (arithmetic-shift _height (- (bitwise-and 1 31))))))
        (send _graphicsPipe jm_rotateToAngle_1 _angle)
        (send _graphicsPipe jm_translate_2 (arithmetic-shift _width (- (bitwise-and 1 31))) (arithmetic-shift _height (- (bitwise-and 1 31))))
        (jreturn (send _graphicsPipe jm_getMatrix_0)))))))
(define (VectorRotationGenerator.jclassValue) VectorRotationGenerator%)

(define VectorRotationGenerator.jcell_instance 'jnone)
(define (VectorRotationGenerator.jstatic_instance)
  (when (eq? VectorRotationGenerator.jcell_instance 'jnone) (set! VectorRotationGenerator.jcell_instance (VectorRotationGenerator.jnew_0)))
  VectorRotationGenerator.jcell_instance)
(define (VectorRotationGenerator.jsetstatic_instance value) (set! VectorRotationGenerator.jcell_instance value))

(define (VectorRotationGenerator.jnew_0)
  (define this (new VectorRotationGenerator% [jclass "VectorRotationGenerator"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_vectorAnimationUtil this (VectorAnimationUtil.jm_getInstance_0))
    (set-field! f_angleFactory this (AngleFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (VectorRotationGenerator.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (VectorRotationGenerator.jstatic_instance)))))



