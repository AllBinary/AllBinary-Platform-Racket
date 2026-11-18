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
  "../../../../allbinary_java.rkt"
  "../../../../java/io/ByteArrayOutputStream.rkt"
  "../../../../java/io/DataOutputStream.rkt"
  "../../../../java/lang/Long.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define HighScore%
  (class JObject%
    (super-new)
    (field [f_id 0])
    (field [f_name JR.null])
    (field [f_gameInfo JR.null])
    (field [f_score 0])
    (field [f_scoreString JR.null])
    (define/public (jm_getId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_id this)))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_getScore_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_score this)))))
    (define/public (jm_getAsBytes_0)
    (let ([_byteArrayOutputStream JR.null][_outputStream JR.null])
      (let/ec jreturn
        (set! _byteArrayOutputStream (ByteArrayOutputStream.jnew_0))
        (set! _outputStream (DataOutputStream.jnew_1 _byteArrayOutputStream))
        (send _outputStream jm_writeUTF_1 (send this jm_getName_0))
        (send _outputStream jm_writeLong_1 (send this jm_getScore_0))
        (jreturn (send _byteArrayOutputStream jm_toByteArray_0)))))
    (define/public (jm_getGameInfo_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameInfo this)))))
    (define/public (jm_getScoreString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_scoreString this)))))
    (define/public (jm_setName_1 _name)
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name))))
    (define/override (jm_toString_0)
    (let ([_commonSeps JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (jreturn (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_name this)) jm_append_1 (get-field f_COLON _commonSeps)) jm_appendlong_1 (get-field f_score this)) jm_append_1 (get-field f_FORWARD_SLASH _commonSeps)) jm_append_1 (get-field f_scoreString this)) jm_toString_0)))))))
(define (HighScore.jclassValue) HighScore%)

(define (HighScore.jnew_4 _id _name _gameInfo _score)
  (define this (new HighScore% [jclass "HighScore"]))
    
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_id this _id)
        (set-field! f_name this _name)
        (set-field! f_gameInfo this _gameInfo)
        (set-field! f_score this _score)
        (set-field! f_scoreString this (JR.str (get-field f_score this)))))
  this)



