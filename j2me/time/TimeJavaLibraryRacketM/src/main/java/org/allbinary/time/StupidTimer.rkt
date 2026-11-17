#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.time

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Boolean.rkt")
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/thread/ThreadObjectUtil.rkt" (ThreadObjectUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define StupidTimer%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_nullUtil JR.null])
    (field [f_threadObjectUtil JR.null])
    (define/public (jm_visitBool_1 _visitorInterface)
    (let ([_result JR.null][_result2 JR.null])
      (let/ec jreturn
        (set! _result (send _visitorInterface jm_visit_1 (get-field f_NULL_OBJECT (get-field f_nullUtil this))))
        (set! _result2 (send _result jm_booleanValue_0))
        (jreturn _result2))))
    (define/public (jm_visit_2 _visitorInterface _timeDelayHelper)
    (let ([_tookTooLong JR.null][_WAITING_FOR JR.null][_index JR.null])
      (let/ec jreturn
        (set! _tookTooLong #f)
        (set! _WAITING_FOR "Waiting for: ")
        (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 _WAITING_FOR) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _visitorInterface)) jm_toString_0) this (get-field f_VISIT (get-field f_commonStrings this)))
        (set! _index 0)
        (let/ec jbreak (let jloop () (when (send this jm_visitBool_1 _visitorInterface)
                (let/ec jcontinue
            (when (= (remainder _index 10) 0)
                (begin
                (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 _WAITING_FOR) jm_appendint_1 _index) jm_toString_0) this (get-field f_VISIT (get-field f_commonStrings this)))))
            (set! _index (JR.i32 (+ _index 1)))
            (begin
                (send (get-field f_threadObjectUtil this) jm_waitObjectFor_2 this 1800))
            (when (send _timeDelayHelper jm_isTimeTNT_0)
                (begin
                (set! _tookTooLong #t)
                (jbreak (void))))) (jloop))))
        (if _tookTooLong
            (begin
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_VISIT (get-field f_commonStrings this)) (JR.newException "Exception" (send (send (send (StringMaker.jnew_0) jm_append_1 "Took Too Long: ") jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _visitorInterface)) jm_toString_0))))
            (begin
            (PreLogUtil.jm_put_3 (send _timeDelayHelper jm_toString_0) this (get-field f_VISIT (get-field f_commonStrings this))))))))
    (define/public (jm_stopWaiting_0)
    (let ()
      (let/ec jreturn
        (begin
            (send (get-field f_threadObjectUtil this) jm_notifyObject_1 this)))))))

(define (StupidTimer.jnew_0)
  (define this (new StupidTimer% [jclass "StupidTimer"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_nullUtil this (NullUtil.jm_getInstance_0))
    (set-field! f_threadObjectUtil this (ThreadObjectUtil.jm_getInstance_0))
  this)



