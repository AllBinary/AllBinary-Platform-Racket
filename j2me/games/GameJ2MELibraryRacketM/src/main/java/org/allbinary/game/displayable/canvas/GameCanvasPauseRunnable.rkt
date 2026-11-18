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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./GameRunnable.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define GameCanvasPauseRunnable%
  (class GameRunnable%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_allBinaryGameCanvas JR.null])
    (define/override (jm_run_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_processLoopSleep_0)
    (let ([_features JR.null][_isOpenGL JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_RUN _commonStrings) _e))])
            (set! _features (Features.jm_getInstance_0))
            (set! _isOpenGL (send _features jm_isDefault_1 (get-field f_OPENGL (OpenGLFeatureFactory.jm_getInstance_0))))
            (when _isOpenGL
                (begin
                (send (get-field f_allBinaryGameCanvas this) jm_processSleep_0)))))))))
(define (GameCanvasPauseRunnable.jclassValue) GameCanvasPauseRunnable%)

(define (GameCanvasPauseRunnable.jnew_1 _allBinaryGameCanvas)
  (define this (new GameCanvasPauseRunnable% [jclass "GameCanvasPauseRunnable"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_allBinaryGameCanvas this _allBinaryGameCanvas)))
  this)



