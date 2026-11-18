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
;; package org.allbinary.game.ag.life

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./LifeInterface.rkt")
(provide (all-defined-out))

(define Life%
  (class JObject%
    (super-new)
    (field [f_lives 0])
    (field [f_startLives 0])
    (field [f_maxlives 0])
    (define/public (jm_get_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_lives this)))))
    (define/public (jm_set_1 _lives)
    (let ()
      (let/ec jreturn
        (set-field! f_lives this _lives))))
    (define/public (jm_reset_0)
    (let ()
      (let/ec jreturn
        (set-field! f_lives this (get-field f_startLives this)))))
    (define/public (jm_add_1 _lives)
    (let ()
      (let/ec jreturn
        (when (not (send this jm_reachedLimit_0))
            (begin
            (if (<= (JR.i32 (+ (get-field f_lives this) _lives)) (send this jm_getMaxlives_0))
                (begin
                (set-field! f_lives this (JR.i16 (JR.i32 (+ (get-field f_lives this) _lives)))))
                (begin
                (set-field! f_lives this (send this jm_getMaxlives_0)))))))))
    (define/public (jm_isAlive_0)
    (let ()
      (let/ec jreturn
        (if (<= (get-field f_lives this) 0)
            (begin
            (jreturn #f))
            (begin
            (jreturn #t))))))
    (define/public (jm_getMaxlives_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_maxlives this)))))
    (define/public (jm_reachedLimit_0)
    (let ()
      (let/ec jreturn
        (if (or (> (get-field f_lives this) (get-field f_maxlives this)) (< (get-field f_lives this) 0))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_deaths_1 _lives)
    (let ()
      (let/ec jreturn
        (when (not (send this jm_reachedLimit_0))
            (begin
            (if (>= (JR.i32 (- (get-field f_lives this) _lives)) 0)
                (begin
                (set-field! f_lives this (JR.i16 (JR.i32 (- (get-field f_lives this) _lives)))))
                (begin
                (set-field! f_lives this 0))))))))
    (define/public (jm_getStartLives_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_startLives this)))))
    (define/public (jm_setStartLives_1 _startLives)
    (let ()
      (let/ec jreturn
        (set-field! f_startLives this _startLives))))))
(define (Life.jclassValue) Life%)

(define Life.jcell_NO_LIFE 'jnone)
(define (Life.jstatic_NO_LIFE)
  (when (eq? Life.jcell_NO_LIFE 'jnone) (set! Life.jcell_NO_LIFE (Life.jm_createLife_0)))
  Life.jcell_NO_LIFE)
(define (Life.jsetstatic_NO_LIFE value) (set! Life.jcell_NO_LIFE value))

(define (Life.jnew_2 _lives _maxlives)
  (define this (new Life% [jclass "Life"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_maxlives this _maxlives)
        (when (> _lives (get-field f_maxlives this))
            (begin
            (raise (JR.newException "Exception" "To Many Lives"))))
        (set-field! f_lives this _lives)
        (set-field! f_startLives this _lives)))
  this)

(define (Life.jm_createLife_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (raise (JR.newException "RuntimeException")))])
            (jreturn (Life.jnew_2 (JR.i16 0) (JR.i16 0)))))))



