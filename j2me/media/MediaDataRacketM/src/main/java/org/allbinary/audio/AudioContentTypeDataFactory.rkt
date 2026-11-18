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
;; package org.allbinary.audio

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./AudioContentTypeData.rkt" (AudioContentTypeData.jnew_1)])
(provide (all-defined-out))

(define AudioContentTypeDataFactory%
  (class JObject%
    (super-new)
    (field [f_MIME_AUDIO_TONE JR.null])
    (field [f_MIME_AUDIO_AMR JR.null])
    (field [f_MIME_AUDIO_AMR_WB JR.null])
    (field [f_MIME_AUDIO_WAV JR.null])
    (field [f_MIME_AUDIO_MIDI JR.null])
    (field [f_MIME_AUDIO_SP_MIDI JR.null])))
(define (AudioContentTypeDataFactory.jclassValue) AudioContentTypeDataFactory%)

(define AudioContentTypeDataFactory.jcell_instance 'jnone)
(define (AudioContentTypeDataFactory.jstatic_instance)
  (when (eq? AudioContentTypeDataFactory.jcell_instance 'jnone) (set! AudioContentTypeDataFactory.jcell_instance (AudioContentTypeDataFactory.jnew_0)))
  AudioContentTypeDataFactory.jcell_instance)
(define (AudioContentTypeDataFactory.jsetstatic_instance value) (set! AudioContentTypeDataFactory.jcell_instance value))

(define (AudioContentTypeDataFactory.jnew_0)
  (define this (new AudioContentTypeDataFactory% [jclass "AudioContentTypeDataFactory"]))
    (set-field! f_MIME_AUDIO_TONE this (AudioContentTypeData.jnew_1 "audio/x-tone-seq"))
    (set-field! f_MIME_AUDIO_AMR this (AudioContentTypeData.jnew_1 "audio/amr"))
    (set-field! f_MIME_AUDIO_AMR_WB this (AudioContentTypeData.jnew_1 "audio/amr-wb"))
    (set-field! f_MIME_AUDIO_WAV this (AudioContentTypeData.jnew_1 "audio/x-wav"))
    (set-field! f_MIME_AUDIO_MIDI this (AudioContentTypeData.jnew_1 "audio/midi"))
    (set-field! f_MIME_AUDIO_SP_MIDI this (AudioContentTypeData.jnew_1 "audio/sp-midi"))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AudioContentTypeDataFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AudioContentTypeDataFactory.jstatic_instance)))))



