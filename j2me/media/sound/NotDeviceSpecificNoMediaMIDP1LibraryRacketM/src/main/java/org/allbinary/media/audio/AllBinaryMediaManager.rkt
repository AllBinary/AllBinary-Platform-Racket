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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/io/InputStream.rkt")
(lazy-require ["../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./Sounds.rkt" (Sounds.jnew_1)])
(lazy-require ["./NoPlayer.rkt" (NoPlayer.jstatic_NO_PLAYER)])
(provide (all-defined-out))

;NotDeviceSpecificNoMediaMIDP1Library
(define AllBinaryMediaManager%
  (class JObject%
    (super-new)))
(define (AllBinaryMediaManager.jclassValue) AllBinaryMediaManager%)

(define AllBinaryMediaManager.jcell_THIS 'jnone)
(define (AllBinaryMediaManager.jstatic_THIS)
  (when (eq? AllBinaryMediaManager.jcell_THIS 'jnone) (set! AllBinaryMediaManager.jcell_THIS "AllBinaryMediaManagerNoMediaMIDP1"))
  AllBinaryMediaManager.jcell_THIS)
(define (AllBinaryMediaManager.jsetstatic_THIS value) (set! AllBinaryMediaManager.jcell_THIS value))

(define (AllBinaryMediaManager.jnew_0)
  (define this (new AllBinaryMediaManager% [jclass "AllBinaryMediaManager"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AllBinaryMediaManager.jm_isMuted_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))

(define (AllBinaryMediaManager.jm_setMuted_1 _aMuted)
    (let ()
      (let/ec jreturn (void))))

(define (AllBinaryMediaManager.jm_update_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))

(define (AllBinaryMediaManager.jm_init_1 _soundsFactoryInterface)
    (let ([_logUtil JR.null][_commonString JR.null])
      (let/ec jreturn
        (set! _logUtil (LogUtil.jm_getInstance_0))
        (set! _commonString (CommonStrings.jm_getInstance_0))
        (send _logUtil jm_putF_3 (get-field f_START _commonString) (AllBinaryMediaManager.jstatic_THIS) (get-field f_INIT _commonString))
        (send (ProgressCanvasFactory.jm_getInstance_0) jm_addNormalPortion_2 50 "Media Manager")
        (send (Sounds.jnew_1 _soundsFactoryInterface) jm_init_0))))

(define (AllBinaryMediaManager.jm_shutdown_1 _soundsFactoryInterface)
    (let ()
      (let/ec jreturn
        (send (Sounds.jnew_1 _soundsFactoryInterface) jm_stopAll_0)
        (send (Sounds.jnew_1 _soundsFactoryInterface) jm_closeAll_0)
        (send (TsUtil.jm_getInstance_0) jm_gc_0))))

(define (AllBinaryMediaManager.jm_createPlayerFromInputStream_2 _stream _type)
    (let ([_logUtil JR.null][_commonString JR.null])
      (let/ec jreturn
        (set! _logUtil (LogUtil.jm_getInstance_0))
        (set! _commonString (CommonStrings.jm_getInstance_0))
        (send _logUtil jm_putF_3 (get-field f_START _commonString) (AllBinaryMediaManager.jstatic_THIS) "creatPlayer(InputStream)")
        (jreturn (NoPlayer.jstatic_NO_PLAYER)))))

(define (AllBinaryMediaManager.jm_createPlayer_1 _locator)
    (let ([_logUtil JR.null][_commonString JR.null])
      (let/ec jreturn
        (set! _logUtil (LogUtil.jm_getInstance_0))
        (set! _commonString (CommonStrings.jm_getInstance_0))
        (send _logUtil jm_putF_3 (get-field f_START _commonString) (AllBinaryMediaManager.jstatic_THIS) "creatPlayer(locator)")
        (jreturn (NoPlayer.jstatic_NO_PLAYER)))))

(define (AllBinaryMediaManager.jm_playTone_3 _frequency _time _volume)
    (let ()
      (let/ec jreturn (void))))

(define (AllBinaryMediaManager.jm_getSupportedContentTypes_1 _protocol)
    (let ()
      (let/ec jreturn
        (jreturn (send (StringUtil.jm_getInstance_0) jm_getArrayInstance_0)))))

(define (AllBinaryMediaManager.jm_getSupportedProtocols_1 _content_type)
    (let ()
      (let/ec jreturn
        (jreturn (send (StringUtil.jm_getInstance_0) jm_getArrayInstance_0)))))



