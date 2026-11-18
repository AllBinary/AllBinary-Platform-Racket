#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.configuration

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/game/configuration/feature/MainFeatureFactory.rkt" (MainFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define ApplicationConfiguration%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_fullscreen #f])
    (field [f_showTitleBar #f])
    (field [f_progressBarView #f])
    (define/public (jm_read_0)
    (let ()
      (let/ec jreturn
        (send this jm_setFullscreen_1 #t)
        (send this jm_setProgressBarView_1 #f)
        (send this jm_setShowTitleBar_1 #f)
        (send (get-field f_logUtil this) jm_putF_3 (JR.concat "Read Configuration: " (send this jm_toString_0)) this "read"))))
    (define/public (jm_write_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_update_1 _gameFeature)
    (let ([_features JR.null])
      (let/ec jreturn
        (when (eq? _gameFeature (get-field f_FULL_SCREEN (MainFeatureFactory.jm_getInstance_0)))
            (begin
            (set! _features (Features.jm_getInstance_0))
            (if (send _features jm_isFeature_1 _gameFeature)
                (begin
                (when (not (send this jm_isFullscreen_0))
                    (begin
                    (send this jm_setFullscreen_1 #t)
                    (send this jm_write_0))))
                (begin
                (when (send this jm_isFullscreen_0)
                    (begin
                    (send this jm_setFullscreen_1 #f)
                    (send this jm_write_0))))))))))
    (define/public (jm_setFullscreen_1 _fullscreen)
    (let ()
      (let/ec jreturn
        (set-field! f_fullscreen this _fullscreen))))
    (define/public (jm_isFullscreen_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_fullscreen this)))))
    (define/public (jm_setShowTitleBar_1 _showTitleBar)
    (let ()
      (let/ec jreturn
        (set-field! f_showTitleBar this _showTitleBar))))
    (define/public (jm_isShowTitleBar_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_showTitleBar this)))))
    (define/public (jm_setProgressBarView_1 _progressBarView)
    (let ()
      (let/ec jreturn
        (set-field! f_progressBarView this _progressBarView))))
    (define/public (jm_isProgressBarView_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_progressBarView this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "isFullscreen: ")
        (send _stringBuffer jm_appendboolean_1 (send this jm_isFullscreen_0))
        (send _stringBuffer jm_append_1 " isProgressBarView: ")
        (send _stringBuffer jm_appendboolean_1 (send this jm_isProgressBarView_0))
        (send _stringBuffer jm_append_1 " isShowTitleBar: ")
        (send _stringBuffer jm_appendboolean_1 (send this jm_isShowTitleBar_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (ApplicationConfiguration.jclassValue) ApplicationConfiguration%)

(define ApplicationConfiguration.jcell_instance 'jnone)
(define (ApplicationConfiguration.jstatic_instance)
  (when (eq? ApplicationConfiguration.jcell_instance 'jnone) (set! ApplicationConfiguration.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  ApplicationConfiguration.jcell_instance)
(define (ApplicationConfiguration.jsetstatic_instance value) (set! ApplicationConfiguration.jcell_instance value))

(define (ApplicationConfiguration.jnew_0)
  (define this (new ApplicationConfiguration% [jclass "ApplicationConfiguration"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_fullscreen this #t)
    (set-field! f_showTitleBar this #f)
    (set-field! f_progressBarView this #f)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_CONSTRUCTOR _commonStrings) _e))])
            (send this jm_read_0))))
  this)

(define (ApplicationConfiguration.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (ApplicationConfiguration.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! ApplicationConfiguration.jcell_instance (ApplicationConfiguration.jnew_0))))
        (jreturn (ApplicationConfiguration.jstatic_instance)))))



