#lang racket/base
;; 
;; To change this license header, choose License Headers in Project Properties. 
;; To change this template file, choose Tools | Templates 
;; and open the template in the editor.  
;; Generated Code Do Not Modify
;; package org.allbinary.game.multiplayer.layer

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define RemoteInfo%
  (class JObject%
    (super-new)))
(define (RemoteInfo.jclassValue) RemoteInfo%)

(define RemoteInfo.jcell_NEW_PLAYER_ID 'jnone)
(define (RemoteInfo.jstatic_NEW_PLAYER_ID)
  (when (eq? RemoteInfo.jcell_NEW_PLAYER_ID 'jnone) (set! RemoteInfo.jcell_NEW_PLAYER_ID 0))
  RemoteInfo.jcell_NEW_PLAYER_ID)
(define (RemoteInfo.jsetstatic_NEW_PLAYER_ID value) (set! RemoteInfo.jcell_NEW_PLAYER_ID value))

(define RemoteInfo.jcell_REMOTE_INFO 'jnone)
(define (RemoteInfo.jstatic_REMOTE_INFO)
  (when (eq? RemoteInfo.jcell_REMOTE_INFO 'jnone) (set! RemoteInfo.jcell_REMOTE_INFO (RemoteInfo.jnew_4 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (JR.i32 (- 1)) (JR.i32 (- 1)) (RemoteInfo.jstatic_NEW_PLAYER_ID))))
  RemoteInfo.jcell_REMOTE_INFO)
(define (RemoteInfo.jsetstatic_REMOTE_INFO value) (set! RemoteInfo.jcell_REMOTE_INFO value))

(define (RemoteInfo.jnew_4 _username _actorSessionId _playerInputId _id)
  (define this (new RemoteInfo% [jclass "RemoteInfo"]))
    (let ()
      (let/ec jreturn (void)))
  this)



