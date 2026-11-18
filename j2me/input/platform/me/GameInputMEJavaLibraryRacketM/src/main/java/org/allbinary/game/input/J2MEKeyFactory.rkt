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
(lazy-require ["./GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["./InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define J2MEKeyFactory%
  (class JObject%
    (super-new)
    (field [f_gameKeyFactory JR.null])
    (define/public (jm_init_0)
    (let ([_gameKeyArray JR.null][_inputFactory JR.null][_index JR.null])
      (let/ec jreturn
        (set! _gameKeyArray (vector (get-field f_DOWN (get-field f_gameKeyFactory this)) (get-field f_FIRE (get-field f_gameKeyFactory this)) (get-field f_GAME_A (get-field f_gameKeyFactory this)) (get-field f_GAME_B (get-field f_gameKeyFactory this)) (get-field f_GAME_C (get-field f_gameKeyFactory this)) (get-field f_GAME_D (get-field f_gameKeyFactory this)) (get-field f_KEY_NUM0 (get-field f_gameKeyFactory this)) (get-field f_KEY_NUM1 (get-field f_gameKeyFactory this)) (get-field f_KEY_NUM2 (get-field f_gameKeyFactory this)) (get-field f_KEY_NUM3 (get-field f_gameKeyFactory this)) (get-field f_KEY_NUM4 (get-field f_gameKeyFactory this)) (get-field f_KEY_NUM5 (get-field f_gameKeyFactory this)) (get-field f_KEY_NUM6 (get-field f_gameKeyFactory this)) (get-field f_KEY_NUM7 (get-field f_gameKeyFactory this)) (get-field f_KEY_NUM8 (get-field f_gameKeyFactory this)) (get-field f_KEY_NUM9 (get-field f_gameKeyFactory this)) (get-field f_KEY_POUND (get-field f_gameKeyFactory this)) (get-field f_KEY_STAR (get-field f_gameKeyFactory this)) (get-field f_LEFT (get-field f_gameKeyFactory this)) (get-field f_LEVEL_DOWN (get-field f_gameKeyFactory this)) (get-field f_LEVEL_UP (get-field f_gameKeyFactory this)) (get-field f_NONE (get-field f_gameKeyFactory this)) (get-field f_RIGHT (get-field f_gameKeyFactory this)) (get-field f_UP (get-field f_gameKeyFactory this))))
        (set! _inputFactory (InputFactory.jm_getInstance_0))
        (begin
            (set! _index (vector-length _gameKeyArray))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (send _inputFactory jm_add_2 (JR.className (vector-ref _gameKeyArray _index)) (vector-ref _gameKeyArray _index))) (jloop))))))))
    (define/public (jm_isSubmission_1 _input)
    (let ()
      (let/ec jreturn
        (when (eq? _input (get-field f_FIRE (get-field f_gameKeyFactory this)))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isDelete_1 _input)
    (let ()
      (let/ec jreturn
        (when (eq? _input (get-field f_GAME_D (get-field f_gameKeyFactory this)))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isBackSpace_1 _input)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_isUp_1 _input)
    (let ()
      (let/ec jreturn
        (when (eq? _input (get-field f_UP (get-field f_gameKeyFactory this)))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isDown_1 _input)
    (let ()
      (let/ec jreturn
        (when (eq? _input (get-field f_DOWN (get-field f_gameKeyFactory this)))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isLeft_1 _input)
    (let ()
      (let/ec jreturn
        (when (eq? _input (get-field f_LEFT (get-field f_gameKeyFactory this)))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isRight_1 _input)
    (let ()
      (let/ec jreturn
        (when (eq? _input (get-field f_RIGHT (get-field f_gameKeyFactory this)))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isEnter_1 _input)
    (let ()
      (let/ec jreturn
        (when (eq? _input (get-field f_FIRE (get-field f_gameKeyFactory this)))
            (begin
            (jreturn #t)))
        (jreturn #f))))))
(define (J2MEKeyFactory.jclassValue) J2MEKeyFactory%)

(define J2MEKeyFactory.jcell_instance 'jnone)
(define (J2MEKeyFactory.jstatic_instance)
  (when (eq? J2MEKeyFactory.jcell_instance 'jnone) (set! J2MEKeyFactory.jcell_instance (J2MEKeyFactory.jnew_0)))
  J2MEKeyFactory.jcell_instance)
(define (J2MEKeyFactory.jsetstatic_instance value) (set! J2MEKeyFactory.jcell_instance value))

(define (J2MEKeyFactory.jnew_0)
  (define this (new J2MEKeyFactory% [jclass "J2MEKeyFactory"]))
    (set-field! f_gameKeyFactory this (GameKeyFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (J2MEKeyFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (J2MEKeyFactory.jstatic_instance)))))



