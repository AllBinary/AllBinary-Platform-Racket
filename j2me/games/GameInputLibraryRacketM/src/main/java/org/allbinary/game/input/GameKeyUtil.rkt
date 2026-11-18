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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_UP Canvas.jstatic_DOWN Canvas.jstatic_LEFT Canvas.jstatic_RIGHT)])
(provide (all-defined-out))

(define GameKeyUtil%
  (class JObject%
    (super-new)
    (define/public (jm_isDirectionKey_1 _key)
    (let ()
      (let/ec jreturn
        (if (or (or (or (= _key (Canvas.jstatic_UP)) (= _key (Canvas.jstatic_DOWN))) (= _key (Canvas.jstatic_LEFT))) (= _key (Canvas.jstatic_RIGHT)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))))
(define (GameKeyUtil.jclassValue) GameKeyUtil%)

(define GameKeyUtil.jcell_instance 'jnone)
(define (GameKeyUtil.jstatic_instance)
  (when (eq? GameKeyUtil.jcell_instance 'jnone) (set! GameKeyUtil.jcell_instance (GameKeyUtil.jnew_0)))
  GameKeyUtil.jcell_instance)
(define (GameKeyUtil.jsetstatic_instance value) (set! GameKeyUtil.jcell_instance value))

(define (GameKeyUtil.jnew_0)
  (define this (new GameKeyUtil% [jclass "GameKeyUtil"]))
  this)

(define (GameKeyUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameKeyUtil.jstatic_instance)))))



