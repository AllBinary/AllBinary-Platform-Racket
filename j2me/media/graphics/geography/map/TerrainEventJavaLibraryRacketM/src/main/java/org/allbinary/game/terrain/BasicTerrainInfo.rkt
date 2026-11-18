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
;; package org.allbinary.game.terrain

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicTerrainInfo%
  (class JObject%
    (super-new)
    (field [f_angle JR.null])
    (define/public (jm_getAngle_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_angle this)))))
    (define/public (jm_setAngle_1 _angle)
    (let ()
      (let/ec jreturn
        (set-field! f_angle this _angle))))))
(define (BasicTerrainInfo.jclassValue) BasicTerrainInfo%)

(define BasicTerrainInfo.jcell_NULL_BASIC_TERRAIN_INFO 'jnone)
(define (BasicTerrainInfo.jstatic_NULL_BASIC_TERRAIN_INFO)
  (when (eq? BasicTerrainInfo.jcell_NULL_BASIC_TERRAIN_INFO 'jnone) (set! BasicTerrainInfo.jcell_NULL_BASIC_TERRAIN_INFO (BasicTerrainInfo.jnew_1 (get-field f_NOT_ANGLE (AngleFactory.jm_getInstance_0)))))
  BasicTerrainInfo.jcell_NULL_BASIC_TERRAIN_INFO)
(define (BasicTerrainInfo.jsetstatic_NULL_BASIC_TERRAIN_INFO value) (set! BasicTerrainInfo.jcell_NULL_BASIC_TERRAIN_INFO value))

(define (BasicTerrainInfo.jnew_1 _angle)
  (define this (new BasicTerrainInfo% [jclass "BasicTerrainInfo"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_angle this _angle)))
  this)



