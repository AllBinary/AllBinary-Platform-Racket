#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./AllBinaryGameCanvasInterface.rkt")
(provide (all-defined-out))

(define NullAllBinaryGameCanvas%
  (class JObject%
    (super-new)
    (define/public (jm_getLayerManager_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_addCommand_1 _cmd)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getHeight_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_removeCommand_1 _cmd)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_setCommandListener_1 _l)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))))
(define (NullAllBinaryGameCanvas.jclassValue) NullAllBinaryGameCanvas%)

(define NullAllBinaryGameCanvas.jcell_NULL_ALLBINARY_GAME_CANVAS 'jnone)
(define (NullAllBinaryGameCanvas.jstatic_NULL_ALLBINARY_GAME_CANVAS)
  (when (eq? NullAllBinaryGameCanvas.jcell_NULL_ALLBINARY_GAME_CANVAS 'jnone) (set! NullAllBinaryGameCanvas.jcell_NULL_ALLBINARY_GAME_CANVAS (NullAllBinaryGameCanvas.jnew_0)))
  NullAllBinaryGameCanvas.jcell_NULL_ALLBINARY_GAME_CANVAS)
(define (NullAllBinaryGameCanvas.jsetstatic_NULL_ALLBINARY_GAME_CANVAS value) (set! NullAllBinaryGameCanvas.jcell_NULL_ALLBINARY_GAME_CANVAS value))

(define (NullAllBinaryGameCanvas.jnew_0)
  (define this (new NullAllBinaryGameCanvas% [jclass "NullAllBinaryGameCanvas"]))
  this)



