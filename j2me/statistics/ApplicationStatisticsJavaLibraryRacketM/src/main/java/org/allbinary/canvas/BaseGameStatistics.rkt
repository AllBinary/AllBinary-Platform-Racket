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
;; package org.allbinary.canvas

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Integer.rkt"
  "../../../java/lang/Long.rkt")
(lazy-require ["../../../org/allbinary/logic/math/PrimitiveLongSingleton.rkt" (PrimitiveLongSingleton.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/math/ScaleFactorFactory.rkt" (ScaleFactorFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define BaseGameStatistics%
  (class JObject%
    (super-new)
    (field [f_timeDelayHelper JR.null])
    (field [f_updateDelayHelper JR.null])
    (field [f_totalRefreshes 0])
    (field [f_totalFrames 0])
    (field [f_gameTickTimeDelayHelper JR.null])
    (field [f_DEFAULT_SCALE_FACTOR 0])
    (field [f_NOT JR.null])
    (field [f_EMPTY_STRING JR.null])
    (field [f_STRING_ARRAY JR.null])
    (field [f_SPACE_CHAR 0])
    (field [f_PLUS_CHAR 0])
    (field [f_X_CHAR 0])
    (field [f_CHAR_ARRAY JR.null])
    (field [f_primitiveLongSingleton JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_timeDelayHelper this) jm_setStartTimeTNT_0)
        (set-field! f_totalRefreshes this 0)
        (set-field! f_totalFrames this 0))))
    (define/public (jm_add_1 _string)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_process_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (set-field! f_totalFrames this (JR.i64 (+ (get-field f_totalFrames this) 1))))))
    (define/public (jm_nextRefresh_0)
    (let ()
      (let/ec jreturn
        (set-field! f_totalRefreshes this (JR.i64 (+ (get-field f_totalRefreshes this) 1))))))
    (define/public (jm_getRefreshRate_0)
    (let ([_elapsed JR.null][_time JR.null])
      (let/ec jreturn
        (set! _elapsed (send (get-field f_timeDelayHelper this) jm_getElapsed_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this))))
        (if (> _elapsed 1)
            (begin
            (set! _time (JR.i16 (JR.i32 (JR.ldiv (get-field f_totalRefreshes this) (arithmetic-shift _elapsed (- (bitwise-and (get-field f_DEFAULT_SCALE_FACTOR this) 63)))))))
            (jreturn _time))
            (begin
            (jreturn 0))))))
    (define/public (jm_getTimeDelayHelper_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_timeDelayHelper this)))))
    (define/public (jm_to2DCharArray_0)
    (let ([_totalTime JR.null][_framesPerSec JR.null][_tens JR.null][_removeTens JR.null][_refreshesPerSec JR.null])
      (let/ec jreturn
        (set! _totalTime (send (get-field f_timeDelayHelper this) jm_getElapsed_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this))))
        (set! _totalTime (arithmetic-shift _totalTime (- (bitwise-and (get-field f_DEFAULT_SCALE_FACTOR this) 63))))
        (when (and (> _totalTime 0) (send (get-field f_updateDelayHelper this) jm_isTime_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this))))
            (begin
            (set! _framesPerSec (JR.i32 (JR.ldiv (get-field f_totalFrames this) _totalTime)))
            (if (< _framesPerSec 10)
                (begin
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 1) 0 (get-field f_SPACE_CHAR this))
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 1) 1 (vector-ref (get-field f_NUMBER_CHAR_ARRAY (get-field f_primitiveLongSingleton this)) _framesPerSec)))
                (if (< _framesPerSec 100)
                (begin
                (set! _tens (JR.idiv _framesPerSec 10))
                (set! _removeTens (JR.i32 (* _tens 10)))
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 1) 0 (vector-ref (get-field f_NUMBER_CHAR_ARRAY (get-field f_primitiveLongSingleton this)) _tens))
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 1) 1 (vector-ref (get-field f_NUMBER_CHAR_ARRAY (get-field f_primitiveLongSingleton this)) (JR.i32 (- _framesPerSec _removeTens)))))
                (begin
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 1) 0 (get-field f_PLUS_CHAR this))
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 1) 1 (get-field f_PLUS_CHAR this)))))
            (set! _refreshesPerSec (JR.i32 (JR.ldiv (get-field f_totalRefreshes this) _totalTime)))
            (if (< _refreshesPerSec 10)
                (begin
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 3) 0 (get-field f_X_CHAR this))
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 3) 1 (vector-ref (get-field f_NUMBER_CHAR_ARRAY (get-field f_primitiveLongSingleton this)) _refreshesPerSec)))
                (if (< _refreshesPerSec 100)
                (begin
                (set! _tens (JR.idiv _refreshesPerSec 10))
                (set! _removeTens (JR.i32 (* _tens 10)))
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 3) 0 (vector-ref (get-field f_NUMBER_CHAR_ARRAY (get-field f_primitiveLongSingleton this)) (JR.idiv _refreshesPerSec 10)))
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 3) 1 (vector-ref (get-field f_NUMBER_CHAR_ARRAY (get-field f_primitiveLongSingleton this)) (JR.i32 (- _refreshesPerSec _removeTens)))))
                (begin
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 3) 0 (get-field f_PLUS_CHAR this))
                (vector-set! (vector-ref (get-field f_CHAR_ARRAY this) 3) 1 (get-field f_PLUS_CHAR this)))))))
        (jreturn (get-field f_CHAR_ARRAY this)))))
    (define/public (jm_toStringArray_0)
    (let ([_totalTime JR.null][_string JR.null])
      (let/ec jreturn
        (set! _totalTime (send (get-field f_timeDelayHelper this) jm_getElapsed_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this))))
        (set! _totalTime (JR.ldiv _totalTime 10000))
        (if (> _totalTime 0)
            (begin
            (vector-set! (get-field f_STRING_ARRAY this) 1 (JR.str _totalTime))
            (vector-set! (get-field f_STRING_ARRAY this) 3 (JR.str (get-field f_totalFrames this)))
            (vector-set! (get-field f_STRING_ARRAY this) 5 (JR.str (JR.ldiv (get-field f_totalFrames this) _totalTime)))
            (vector-set! (get-field f_STRING_ARRAY this) 7 (JR.str (get-field f_totalRefreshes this)))
            (vector-set! (get-field f_STRING_ARRAY this) 9 (JR.str (JR.ldiv (get-field f_totalRefreshes this) _totalTime))))
            (begin
            (set! _string (get-field f_EMPTY_STRING this))
            (vector-set! (get-field f_STRING_ARRAY this) 1 _string)
            (vector-set! (get-field f_STRING_ARRAY this) 3 _string)
            (vector-set! (get-field f_STRING_ARRAY this) 5 _string)
            (vector-set! (get-field f_STRING_ARRAY this) 7 _string)
            (vector-set! (get-field f_STRING_ARRAY this) 9 _string)))
        (jreturn (get-field f_STRING_ARRAY this)))))
    (define/public (jm_toStringAt_1 _totalTime)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (vector-ref (get-field f_STRING_ARRAY this) 0))
        (send _stringBuffer jm_appendlong_1 _totalTime)
        (send _stringBuffer jm_append_1 (vector-ref (get-field f_STRING_ARRAY this) 2))
        (send _stringBuffer jm_appendlong_1 (get-field f_totalFrames this))
        (send _stringBuffer jm_append_1 (vector-ref (get-field f_STRING_ARRAY this) 4))
        (send _stringBuffer jm_appendlong_1 (JR.ldiv (get-field f_totalFrames this) _totalTime))
        (when (> (get-field f_totalRefreshes this) 0)
            (begin
            (send _stringBuffer jm_append_1 (vector-ref (get-field f_STRING_ARRAY this) 6))
            (send _stringBuffer jm_appendlong_1 (get-field f_totalRefreshes this))
            (send _stringBuffer jm_append_1 (vector-ref (get-field f_STRING_ARRAY this) 8))
            (send _stringBuffer jm_appendlong_1 (JR.ldiv (get-field f_totalRefreshes this) _totalTime))
            (send _stringBuffer jm_append_1 (get-field f_NEW_LINE (CommonSeps.jm_getInstance_0)))))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/override (jm_toString_0)
    (let ([_totalTime JR.null])
      (let/ec jreturn
        (set! _totalTime (send (get-field f_timeDelayHelper this) jm_getElapsed_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this))))
        (set! _totalTime (JR.ldiv _totalTime 1000))
        (if (> _totalTime 0)
            (begin
            (jreturn (send this jm_toStringAt_1 _totalTime)))
            (begin
            (jreturn (get-field f_NOT this)))))))))
(define (BaseGameStatistics.jclassValue) BaseGameStatistics%)

(define (BaseGameStatistics.jnew_0)
  (define this (new BaseGameStatistics% [jclass "BaseGameStatistics"]))
    (set-field! f_timeDelayHelper this (TimeDelayHelper.jnew_1 (Integer.jstatic_MAX_VALUE)))
    (set-field! f_updateDelayHelper this (TimeDelayHelper.jnew_1 2000))
    
    
    (set-field! f_gameTickTimeDelayHelper this (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (set-field! f_DEFAULT_SCALE_FACTOR this (get-field f_DEFAULT_SCALE_FACTOR (ScaleFactorFactory.jm_getInstance_0)))
    (set-field! f_NOT this "Not enough Time to Calculate")
    (set-field! f_EMPTY_STRING this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_STRING_ARRAY this (vector " Total Time: " (get-field f_EMPTY_STRING this) " Total Frames: " (get-field f_EMPTY_STRING this) " Frames/10 Sec: " (get-field f_EMPTY_STRING this) " Total Paints: " (get-field f_EMPTY_STRING this) " Paints/10 Sec: " (get-field f_EMPTY_STRING this)))
    (set-field! f_SPACE_CHAR this 32)
    (set-field! f_PLUS_CHAR this (char->integer #\+))
    (set-field! f_X_CHAR this (char->integer #\X))
    (set-field! f_CHAR_ARRAY this (vector (vector (char->integer #\F) (char->integer #\r) (char->integer #\a) (char->integer #\m) (char->integer #\e) (char->integer #\s) (char->integer #\/) (char->integer #\1) (char->integer #\0) 32 (char->integer #\S) (char->integer #\e) (char->integer #\c) (char->integer #\:)) (vector (char->integer #\X) (char->integer #\X)) (vector (char->integer #\P) (char->integer #\a) (char->integer #\i) (char->integer #\n) (char->integer #\t) (char->integer #\s) (char->integer #\/) (char->integer #\1) (char->integer #\0) 32 (char->integer #\S) (char->integer #\e) (char->integer #\c) (char->integer #\:)) (vector (char->integer #\X) (char->integer #\X))))
    (set-field! f_primitiveLongSingleton this (PrimitiveLongSingleton.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)



