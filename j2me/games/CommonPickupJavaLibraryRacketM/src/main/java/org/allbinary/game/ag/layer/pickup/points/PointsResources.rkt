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
;; package org.allbinary.game.ag.layer.pickup.points

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define PointsResources%
  (class JObject%
    (super-new)
    (field [f_RESOURCE JR.null])
    (field [f_RESOURCE_2 JR.null])
    (field [f_RESOURCE_3 JR.null])
    (field [f_RESOURCE_4 JR.null])))
(define (PointsResources.jclassValue) PointsResources%)

(define PointsResources.jcell_SINGLETON 'jnone)
(define (PointsResources.jstatic_SINGLETON)
  (when (eq? PointsResources.jcell_SINGLETON 'jnone) (set! PointsResources.jcell_SINGLETON (PointsResources.jnew_0)))
  PointsResources.jcell_SINGLETON)
(define (PointsResources.jsetstatic_SINGLETON value) (set! PointsResources.jcell_SINGLETON value))

(define (PointsResources.jnew_0)
  (define this (new PointsResources% [jclass "PointsResources"]))
    (set-field! f_RESOURCE this "points_drop_20_by_20.png")
    (set-field! f_RESOURCE_2 this "points_2_drop_20_by_20.png")
    (set-field! f_RESOURCE_3 this "points_3_drop_20_by_20.png")
    (set-field! f_RESOURCE_4 this "points_4_drop_20_by_20.png")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (PointsResources.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PointsResources.jstatic_SINGLETON)))))



