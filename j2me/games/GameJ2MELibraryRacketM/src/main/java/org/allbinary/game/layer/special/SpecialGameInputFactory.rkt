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
;; package org.allbinary.game.layer.special

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./SpecialGameInput.rkt" (SpecialGameInput.jnew_0)])
(provide (all-defined-out))

(define SpecialGameInputFactory%
  (class JObject%
    (super-new)))
(define (SpecialGameInputFactory.jclassValue) SpecialGameInputFactory%)

(define SpecialGameInputFactory.jcell_NO_SPECIAL_GAME_INPUT 'jnone)
(define (SpecialGameInputFactory.jstatic_NO_SPECIAL_GAME_INPUT)
  (when (eq? SpecialGameInputFactory.jcell_NO_SPECIAL_GAME_INPUT 'jnone) (set! SpecialGameInputFactory.jcell_NO_SPECIAL_GAME_INPUT (SpecialGameInput.jnew_0)))
  SpecialGameInputFactory.jcell_NO_SPECIAL_GAME_INPUT)
(define (SpecialGameInputFactory.jsetstatic_NO_SPECIAL_GAME_INPUT value) (set! SpecialGameInputFactory.jcell_NO_SPECIAL_GAME_INPUT value))

(define (SpecialGameInputFactory.jnew_0)
  (define this (new SpecialGameInputFactory% [jclass "SpecialGameInputFactory"]))
  this)



