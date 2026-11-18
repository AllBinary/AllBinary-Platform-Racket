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
;; package org.allbinary.game.score

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define HighScoreCommandsBaseFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_HIGH_SCORE_COMMANDS JR.null])
    (define/public (jm_isHighScoreCommand_1 _command)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_HIGH_SCORE_COMMANDS this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (when (eq? _command (vector-ref (get-field f_HIGH_SCORE_COMMANDS this) _index))
                (begin
                (jreturn #t))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn #f))))
    (define/public (jm_getIndex_1 _command)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_HIGH_SCORE_COMMANDS this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (when (eq? _command (vector-ref (get-field f_HIGH_SCORE_COMMANDS this) _index))
                (begin
                (jreturn _index))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (raise (JR.newException "Exception" "No Such Command")))))))
(define (HighScoreCommandsBaseFactory.jclassValue) HighScoreCommandsBaseFactory%)

(define (HighScoreCommandsBaseFactory.jnew_1 _HIGH_SCORE_COMMANDS)
  (define this (new HighScoreCommandsBaseFactory% [jclass "HighScoreCommandsBaseFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_HIGH_SCORE_COMMANDS this _HIGH_SCORE_COMMANDS)))
  this)



