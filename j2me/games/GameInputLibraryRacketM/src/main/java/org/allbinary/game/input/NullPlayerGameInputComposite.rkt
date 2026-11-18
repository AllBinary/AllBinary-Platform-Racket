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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./PlayerGameInputCompositeInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./NoPlayerGameInput.rkt" (NoPlayerGameInput.jm_getInstance_0)])
(provide (all-defined-out))

(define NullPlayerGameInputComposite%
  (class JObject%
    (super-new)
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_processInput_1 _layerManager)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_initInputProcessors_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getPlayerGameInput_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoPlayerGameInput.jm_getInstance_0)))))))
(define (NullPlayerGameInputComposite.jclassValue) NullPlayerGameInputComposite%)

(define NullPlayerGameInputComposite.jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE 'jnone)
(define (NullPlayerGameInputComposite.jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE)
  (when (eq? NullPlayerGameInputComposite.jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE 'jnone) (set! NullPlayerGameInputComposite.jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE (NullPlayerGameInputComposite.jnew_0)))
  NullPlayerGameInputComposite.jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE)
(define (NullPlayerGameInputComposite.jsetstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE value) (set! NullPlayerGameInputComposite.jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE value))

(define (NullPlayerGameInputComposite.jnew_0)
  (define this (new NullPlayerGameInputComposite% [jclass "NullPlayerGameInputComposite"]))
  this)



