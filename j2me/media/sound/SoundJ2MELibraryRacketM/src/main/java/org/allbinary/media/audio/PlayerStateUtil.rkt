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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../javax/microedition/media/Player.rkt" (Player.jstatic_UNREALIZED Player.jstatic_REALIZED Player.jstatic_PREFETCHED Player.jstatic_STARTED Player.jstatic_CLOSED)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define PlayerStateUtil%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_UNREALIZED JR.null])
    (field [f_REALIZED JR.null])
    (field [f_PREFETCHED JR.null])
    (field [f_STARTED JR.null])
    (field [f_CLOSED JR.null])
    (define/public (jm_convert_1 _state)
    (let ()
      (let/ec jreturn
        (if (= _state (Player.jstatic_UNREALIZED))
            (begin
            (jreturn (get-field f_UNREALIZED this)))
            (if (= _state (Player.jstatic_REALIZED))
            (begin
            (jreturn (get-field f_REALIZED this)))
            (if (= _state (Player.jstatic_PREFETCHED))
            (begin
            (jreturn (get-field f_PREFETCHED this)))
            (if (= _state (Player.jstatic_STARTED))
            (begin
            (jreturn (get-field f_STARTED this)))
            (when (= _state (Player.jstatic_CLOSED))
            (begin
            (jreturn (get-field f_CLOSED this))))))))
        (jreturn (get-field f_UNKNOWN (get-field f_commonStrings this))))))))
(define (PlayerStateUtil.jclassValue) PlayerStateUtil%)

(define PlayerStateUtil.jcell_instance 'jnone)
(define (PlayerStateUtil.jstatic_instance)
  (when (eq? PlayerStateUtil.jcell_instance 'jnone) (set! PlayerStateUtil.jcell_instance (PlayerStateUtil.jnew_0)))
  PlayerStateUtil.jcell_instance)
(define (PlayerStateUtil.jsetstatic_instance value) (set! PlayerStateUtil.jcell_instance value))

(define (PlayerStateUtil.jnew_0)
  (define this (new PlayerStateUtil% [jclass "PlayerStateUtil"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_UNREALIZED this "UNREALIZED")
    (set-field! f_REALIZED this "REALIZED")
    (set-field! f_PREFETCHED this "PREFETCHED")
    (set-field! f_STARTED this "STARTED")
    (set-field! f_CLOSED this "CLOSED")
  this)

(define (PlayerStateUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PlayerStateUtil.jstatic_instance)))))



