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
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["./BasicTerrainInfo.rkt" (BasicTerrainInfo.jstatic_NULL_BASIC_TERRAIN_INFO)])
(provide (all-defined-out))

(define TerrainEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_basicTerrainInfo JR.null])
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "TerrainEvent: \n")
        (send _stringBuffer jm_append_1 "LayerInterface: ")
        (send _stringBuffer jm_append_1 (send (get-field f_basicTerrainInfo this) jm_toString_0))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getBasicTerrainInfo_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicTerrainInfo this)))))
    (define/public (jm_setBasicTerrainInfo_1 _basicTerrainInfo)
    (let ()
      (let/ec jreturn
        (set-field! f_basicTerrainInfo this _basicTerrainInfo))))
    (define/public (jm_setBasicTerrainInfoForCircularStaticPool_1 _basicTerrainInfo)
    (let ()
      (let/ec jreturn
        (set-field! f_basicTerrainInfo this _basicTerrainInfo))))))
(define (TerrainEvent.jclassValue) TerrainEvent%)

(define (TerrainEvent.jnew_1 _basicTerrainInfo)
  (define this (new TerrainEvent% [jclass "TerrainEvent"]))
    (set-field! f_basicTerrainInfo this (BasicTerrainInfo.jstatic_NULL_BASIC_TERRAIN_INFO))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setBasicTerrainInfo_1 (get-field f_basicTerrainInfo this))))
  this)



