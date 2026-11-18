#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary.game.canvas

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/NullCanvas.rkt" (NullCanvas.jstatic_NULL_CANVAS)])
(lazy-require ["../../../../org/allbinary/game/layer/AllBinaryGameLayerManager.rkt" (AllBinaryGameLayerManager.jm_getNullInstance_0)])
(provide (all-defined-out))

(define ABToGBUtil%
  (class JObject%
    (super-new)
    (field [f_abCanvas JR.null])
    (field [f_allBinaryGameLayerManager JR.null])))
(define (ABToGBUtil.jclassValue) ABToGBUtil%)

(define ABToGBUtil.jcell_instance 'jnone)
(define (ABToGBUtil.jstatic_instance)
  (when (eq? ABToGBUtil.jcell_instance 'jnone) (set! ABToGBUtil.jcell_instance (ABToGBUtil.jnew_0)))
  ABToGBUtil.jcell_instance)
(define (ABToGBUtil.jsetstatic_instance value) (set! ABToGBUtil.jcell_instance value))

(define (ABToGBUtil.jnew_0)
  (define this (new ABToGBUtil% [jclass "ABToGBUtil"]))
    (set-field! f_abCanvas this (NullCanvas.jstatic_NULL_CANVAS))
    (set-field! f_allBinaryGameLayerManager this (AllBinaryGameLayerManager.jm_getNullInstance_0))
  this)

(define (ABToGBUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ABToGBUtil.jstatic_instance)))))



