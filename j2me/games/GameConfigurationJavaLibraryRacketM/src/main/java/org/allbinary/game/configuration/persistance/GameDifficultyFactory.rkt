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
;; package org.allbinary.game.configuration.persistance

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GameDifficultyFactory%
  (class JObject%
    (super-new)
    (field [f_level 0])
    (define/public (jm_setLevel_1 _level)
    (let ()
      (let/ec jreturn
        (set-field! f_level this _level))))
    (define/public (jm_getLevel_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_level this)))))))
(define (GameDifficultyFactory.jclassValue) GameDifficultyFactory%)

(define GameDifficultyFactory.jcell_instance 'jnone)
(define (GameDifficultyFactory.jstatic_instance)
  (when (eq? GameDifficultyFactory.jcell_instance 'jnone) (set! GameDifficultyFactory.jcell_instance (GameDifficultyFactory.jnew_0)))
  GameDifficultyFactory.jcell_instance)
(define (GameDifficultyFactory.jsetstatic_instance value) (set! GameDifficultyFactory.jcell_instance value))

(define (GameDifficultyFactory.jnew_0)
  (define this (new GameDifficultyFactory% [jclass "GameDifficultyFactory"]))
    (set-field! f_level this 0)
  this)

(define (GameDifficultyFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameDifficultyFactory.jstatic_instance)))))



