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
  "../../../../java/io/ByteArrayInputStream.rkt"
  "../../../../java/io/DataInputStream.rkt"
  "../../../../java/io/EOFException.rkt"
  "../../../../java/io/IOException.rkt"
  "../../../../javax/microedition/rms/RecordComparator.rkt"
  "../../../../java/lang/Long.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define ScoreComparator%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_isHighestBest #f])
    (define/public (jm_getBestScore_0)
    (let ()
      (let/ec jreturn
        (jreturn (if (get-field f_isHighestBest this) (Long.jstatic_MAX_VALUE) 0)))))
    (define/public (jm_compare_2 _recordOne _recordTwo)
    (let ([_byteArrayInputStreamOne JR.null][_inputStreamOne JR.null][_byteArrayInputStreamTwo JR.null][_inputStreamTwo JR.null][_scoreOne JR.null][_scoreTwo JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (set! _byteArrayInputStreamOne (ByteArrayInputStream.jnew_1 _recordOne))
        (set! _inputStreamOne (DataInputStream.jnew_1 _byteArrayInputStreamOne))
        (set! _byteArrayInputStreamTwo (ByteArrayInputStream.jnew_1 _recordTwo))
        (set! _inputStreamTwo (DataInputStream.jnew_1 _byteArrayInputStreamTwo))
        (set! _scoreOne 0)
        (set! _scoreTwo 0)
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this "compare" _e))])
            (send _inputStreamOne jm_readUTF_0)
            (send _inputStreamTwo jm_readUTF_0)
            (set! _scoreOne (send _inputStreamOne jm_readLong_0))
            (set! _scoreTwo (send _inputStreamTwo jm_readLong_0)))
        (if (get-field f_isHighestBest this)
            (begin
            (jreturn (send this jm_getHighTooLow_2 _scoreOne _scoreTwo)))
            (begin
            (jreturn (send this jm_getLowTooHigh_2 _scoreOne _scoreTwo)))))))
    (define/public (jm_getHighTooLow_2 _scoreOne _scoreTwo)
    (let ()
      (let/ec jreturn
        (if (> _scoreOne _scoreTwo)
            (begin
            (jreturn (RecordComparator.jstatic_PRECEDES)))
            (if (< _scoreOne _scoreTwo)
            (begin
            (jreturn (RecordComparator.jstatic_FOLLOWS)))
            (begin
            (jreturn (RecordComparator.jstatic_EQUIVALENT))))))))
    (define/public (jm_getLowTooHigh_2 _scoreOne _scoreTwo)
    (let ()
      (let/ec jreturn
        (if (< _scoreOne _scoreTwo)
            (begin
            (jreturn (RecordComparator.jstatic_PRECEDES)))
            (if (> _scoreOne _scoreTwo)
            (begin
            (jreturn (RecordComparator.jstatic_FOLLOWS)))
            (begin
            (jreturn (RecordComparator.jstatic_EQUIVALENT))))))))))
(define (ScoreComparator.jclassValue) ScoreComparator%)

(define (ScoreComparator.jnew_1 _isHighestBest)
  (define this (new ScoreComparator% [jclass "ScoreComparator"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_isHighestBest this _isHighestBest)))
  this)



