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
(lazy-require ["../../../../javax/microedition/media/Manager.rkt" (Manager.jm_createPlayer_1 Manager.jm_playTone_3 Manager.jstatic_TONE_DEVICE_LOCATOR)])
(lazy-require ["../../../../org/allbinary/MIDPUtil.rkt" (MIDPUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/audio/AudioContentTypeDataFactory.rkt" (AudioContentTypeDataFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/data/resource/ResourceUtil.rkt" (ResourceUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GameFeatureFactory.rkt" (GameFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./Sounds.rkt" (Sounds.jnew_1)])
(lazy-require ["./NoPlayer.rkt" (NoPlayer.jstatic_NO_PLAYER)])
(provide (all-defined-out))

;NotDeviceSpecificMIDP2JavaLibrary
(define AllBinaryMediaManager%
  (class JObject%
    (super-new)))
(define (AllBinaryMediaManager.jclassValue) AllBinaryMediaManager%)

(define AllBinaryMediaManager.jcell_THIS 'jnone)
(define (AllBinaryMediaManager.jstatic_THIS)
  (when (eq? AllBinaryMediaManager.jcell_THIS 'jnone) (set! AllBinaryMediaManager.jcell_THIS "AllBinaryMediaManagerNoMIPD2"))
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

(define (AllBinaryMediaManager.jm_createPlayer_1 _resource)
    (let ([_inputStream JR.null])
      (let/ec jreturn
        (if (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_SOUND (GameFeatureFactory.jm_getInstance_0)))
            (begin
            (if (= (send (TsUtil.jm_getInstance_0) jm_compareTo_2 _resource (Manager.jstatic_TONE_DEVICE_LOCATOR)) 0)
                (begin
                (jreturn (Manager.jm_createPlayer_1 _resource)))
                (begin
                (set! _inputStream (send (ResourceUtil.jm_getInstance_0) jm_getResourceAsStream_1 _resource))
                (jreturn (send (MIDPUtil.jm_getInstance_0) jm_createPlayerFromInputStream_2 _inputStream (JR.className (get-field f_MIME_AUDIO_WAV (AudioContentTypeDataFactory.jm_getInstance_0))))))))
            (begin
            (jreturn (NoPlayer.jstatic_NO_PLAYER)))))))

(define (AllBinaryMediaManager.jm_playTone_3 _frequency _time _volume)
    (let ()
      (let/ec jreturn
        (when (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_SOUND (GameFeatureFactory.jm_getInstance_0)))
            (begin
            (Manager.jm_playTone_3 _frequency _time _volume))))))



