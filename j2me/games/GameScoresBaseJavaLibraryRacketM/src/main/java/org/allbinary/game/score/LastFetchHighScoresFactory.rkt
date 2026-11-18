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
;; package org.allbinary.game.score

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["./NoHighScoresFactory.rkt" (NoHighScoresFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define LastFetchHighScoresFactory%
  (class JObject%
    (super-new)
    (field [f_highScoresArray JR.null])))
(define (LastFetchHighScoresFactory.jclassValue) LastFetchHighScoresFactory%)

(define LastFetchHighScoresFactory.jcell_instance 'jnone)
(define (LastFetchHighScoresFactory.jstatic_instance)
  (when (eq? LastFetchHighScoresFactory.jcell_instance 'jnone) (set! LastFetchHighScoresFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  LastFetchHighScoresFactory.jcell_instance)
(define (LastFetchHighScoresFactory.jsetstatic_instance value) (set! LastFetchHighScoresFactory.jcell_instance value))

(define (LastFetchHighScoresFactory.jnew_0)
  (define this (new LastFetchHighScoresFactory% [jclass "LastFetchHighScoresFactory"]))
    (set-field! f_highScoresArray this (get-field f_NO_HIGH_SCORES (NoHighScoresFactory.jm_getInstance_0)))
  this)

(define (LastFetchHighScoresFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (LastFetchHighScoresFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! LastFetchHighScoresFactory.jcell_instance (LastFetchHighScoresFactory.jnew_0))))
        (jreturn (LastFetchHighScoresFactory.jstatic_instance)))))



