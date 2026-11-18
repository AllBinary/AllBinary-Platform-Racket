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
;; package org.allbinary.game

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define GameMode%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (define/public (jm_setName_1 _name)
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getName_0)))))))
(define (GameMode.jclassValue) GameMode%)

(define GameMode.jcell_NONE 'jnone)
(define (GameMode.jstatic_NONE)
  (when (eq? GameMode.jcell_NONE 'jnone) (set! GameMode.jcell_NONE (GameMode.jnew_1 (get-field f_NULL_STRING (StringUtil.jm_getInstance_0)))))
  GameMode.jcell_NONE)
(define (GameMode.jsetstatic_NONE value) (set! GameMode.jcell_NONE value))

(define GameMode.jcell_SERVER 'jnone)
(define (GameMode.jstatic_SERVER)
  (when (eq? GameMode.jcell_SERVER 'jnone) (set! GameMode.jcell_SERVER (GameMode.jnew_1 "Server")))
  GameMode.jcell_SERVER)
(define (GameMode.jsetstatic_SERVER value) (set! GameMode.jcell_SERVER value))

(define GameMode.jcell_CLIENT 'jnone)
(define (GameMode.jstatic_CLIENT)
  (when (eq? GameMode.jcell_CLIENT 'jnone) (set! GameMode.jcell_CLIENT (GameMode.jnew_1 "Client")))
  GameMode.jcell_CLIENT)
(define (GameMode.jsetstatic_CLIENT value) (set! GameMode.jcell_CLIENT value))

(define (GameMode.jnew_1 _name)
  (define this (new GameMode% [jclass "GameMode"]))
    (set-field! f_name this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (send this jm_setName_1 _name)))
  this)



