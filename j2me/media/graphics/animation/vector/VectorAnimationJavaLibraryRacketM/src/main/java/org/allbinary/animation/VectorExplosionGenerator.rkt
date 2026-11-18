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
(lazy-require ["../../../org/allbinary/graphics/pipeline/RandomRotationFactory.rkt" (RandomRotationFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/graphics/pipeline/RandomTranslation.rkt" (RandomTranslation.jm_getInstance_2)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListS.rkt" (BasicArrayListS.jnew_1)])
(lazy-require ["./VectorExplosionType.rkt" (VectorExplosionType.jnew_0)])
(lazy-require ["./VectorAnimationUtil.rkt" (VectorAnimationUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define VectorExplosionGenerator%
  (class JObject%
    (super-new)
    (field [f_RANDOM JR.null])
    (field [f_ROTATION JR.null])
    (field [f_vectorAnimationUtil JR.null])
    (field [f_randomRotationFactory JR.null])
    (define/public (jm_createList_3 _list _howMuch _type)
    (let ([_point JR.null][_size JR.null][_points JR.null][_index JR.null])
      (let/ec jreturn
        (set! _point JR.null)
        (set! _size (send _list jm_size_0))
        (set! _points (JR.newArray 0 _size 2))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _point (vector-ref (get-field f_objectArray _list) _index))
            (vector-set! (vector-ref _points _index) 0 (send _point jm_getX_0))
            (vector-set! (vector-ref _points _index) 1 (send _point jm_getY_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send this jm_createListFromPoints_4 _list _points _howMuch _type)))))
    (define/public (jm_getInstance_3 _points _howMuch _type)
    (let ([_pointsBasicArrayList JR.null][_tempBasicArrayList JR.null][_newPoints JR.null])
      (let/ec jreturn
        (set! _pointsBasicArrayList (send this jm_getInstanceStartFrame_4 _points _howMuch _type #t))
        (set! _tempBasicArrayList (vector-ref (get-field f_objectArray _pointsBasicArrayList) 0))
        (set! _newPoints (send (get-field f_vectorAnimationUtil this) jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 _pointsBasicArrayList (send _tempBasicArrayList jm_size_0)))
        (jreturn _newPoints))))
    (define/public (jm_getInstanceStartFrame_4 _points _howMuch _type _startFrame)
    (let ([_pointsBasicArrayList JR.null][_frameIndex JR.null][_tempBasicArrayList JR.null][_pointBasicArrayList JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (raise _e))])
            (set! _pointsBasicArrayList (BasicArrayListS.jnew_1 _howMuch))
            (send _pointsBasicArrayList jm_add_1 (send this jm_createPointsBasicArrayList_1 _points))
            (set! _frameIndex 0)
            (set! _tempBasicArrayList JR.null)
            (set! _pointBasicArrayList JR.null)
            (let/ec jbreak (let jloop () (when (< _frameIndex _howMuch)
                    (let/ec jcontinue
                (set! _tempBasicArrayList (vector-ref (get-field f_objectArray _pointsBasicArrayList) _frameIndex))
                (set! _pointBasicArrayList (send this jm_createListFromPoints_4 _tempBasicArrayList _points _howMuch _type))
                (send _pointsBasicArrayList jm_add_1 _pointBasicArrayList)
                (set! _frameIndex (JR.i32 (+ _frameIndex 1)))) (jloop))))
            (when (not _startFrame)
                (begin
                (send _pointsBasicArrayList jm_removeAt_1 0)))
            (jreturn _pointsBasicArrayList)))))
    (define/public (jm_createListFromPoints_4 _tempBasicArrayList _points _howMuch _type)
    (let ([_index JR.null][_pointBasicArrayList JR.null][_sectionBasicArrayList JR.null][_size JR.null][_index2 JR.null])
      (let/ec jreturn
        (set! _index 0)
        (set! _pointBasicArrayList (BasicArrayListD.jnew_0))
        (set! _sectionBasicArrayList JR.null)
        (let/ec jbreak (let jloop () (when (< _index (vector-length _points))
                (let/ec jcontinue
            (set! _sectionBasicArrayList (BasicArrayListD.jnew_0))
            (let/ec jbreak (let jloop () (when (not (eq? (vector-ref (vector-ref _points _index) 0) 1000))
                    (let/ec jcontinue
                (send _sectionBasicArrayList jm_add_1 (vector-ref (get-field f_objectArray _tempBasicArrayList) _index))
                (set! _index (JR.i32 (+ _index 1)))
                (when (>= _index (vector-length _points))
                    (begin
                    (jbreak (void))))) (jloop))))
            (set! _sectionBasicArrayList (RandomTranslation.jm_getInstance_2 _sectionBasicArrayList _howMuch))
            (when (eq? _type (get-field f_ROTATION this))
                (begin
                (set! _sectionBasicArrayList (send (get-field f_randomRotationFactory this) jm_getInstanceList_2 _sectionBasicArrayList _howMuch))))
            (set! _size (send _sectionBasicArrayList jm_size_0))
            (begin
                (set! _index2 0)
                (let/ec jbreak (let jloop () (when (< _index2 _size)
                    (let/ec jcontinue
                (send _pointBasicArrayList jm_add_1 (vector-ref (get-field f_objectArray _sectionBasicArrayList) _index2)))
                    (set! _index2 (JR.i32 (+ _index2 1))) (jloop)))))
            (if (>= _index (vector-length _points))
                (begin
                (jbreak (void)))
                (when (eq? (vector-ref (vector-ref _points _index) 0) 1000)
                (begin
                (send _pointBasicArrayList jm_add_1 (vector-ref (get-field f_objectArray _tempBasicArrayList) _index))
                (set! _index (JR.i32 (+ _index 1))))))) (jloop))))
        (jreturn _pointBasicArrayList))))
    (define/public (jm_createPointsBasicArrayList_1 _points)
    (let ([_firstPointBasicArrayList JR.null][_pointFactory JR.null][_index JR.null])
      (let/ec jreturn
        (when (= (vector-length _points) 0)
            (begin
            (raise (JR.newException "Exception" "Not Points Provided"))))
        (set! _firstPointBasicArrayList (BasicArrayListS.jnew_1 (vector-length _points)))
        (set! _pointFactory (PointFactory.jm_getInstance_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _points))
                (let/ec jcontinue
            (send _firstPointBasicArrayList jm_add_1 (send _pointFactory jm_createXY_2 (vector-ref (vector-ref _points _index) 0) (vector-ref (vector-ref _points _index) 1))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _firstPointBasicArrayList))))))
(define (VectorExplosionGenerator.jclassValue) VectorExplosionGenerator%)

(define VectorExplosionGenerator.jcell_instance 'jnone)
(define (VectorExplosionGenerator.jstatic_instance)
  (when (eq? VectorExplosionGenerator.jcell_instance 'jnone) (set! VectorExplosionGenerator.jcell_instance (VectorExplosionGenerator.jnew_0)))
  VectorExplosionGenerator.jcell_instance)
(define (VectorExplosionGenerator.jsetstatic_instance value) (set! VectorExplosionGenerator.jcell_instance value))

(define (VectorExplosionGenerator.jnew_0)
  (define this (new VectorExplosionGenerator% [jclass "VectorExplosionGenerator"]))
    (set-field! f_RANDOM this (VectorExplosionType.jnew_0))
    (set-field! f_ROTATION this (VectorExplosionType.jnew_0))
    (set-field! f_vectorAnimationUtil this (VectorAnimationUtil.jm_getInstance_0))
    (set-field! f_randomRotationFactory this (RandomRotationFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (VectorExplosionGenerator.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (VectorExplosionGenerator.jstatic_instance)))))



