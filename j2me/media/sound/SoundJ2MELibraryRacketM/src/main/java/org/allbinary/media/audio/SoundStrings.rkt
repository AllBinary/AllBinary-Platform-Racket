#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define SoundStrings%
  (class JObject%
    (super-new)
    (field [f_STOP_ALL JR.null])
    (field [f_CLOSE_ALL JR.null])
    (field [f_SOUND JR.null])
    (field [f_INIT_SOUND JR.null])
    (field [f_STOPPING_SOUND JR.null])
    (field [f_CLOSING_SOUND JR.null])))
(define (SoundStrings.jclassValue) SoundStrings%)

(define SoundStrings.jcell_instance 'jnone)
(define (SoundStrings.jstatic_instance)
  (when (eq? SoundStrings.jcell_instance 'jnone) (set! SoundStrings.jcell_instance (SoundStrings.jnew_0)))
  SoundStrings.jcell_instance)
(define (SoundStrings.jsetstatic_instance value) (set! SoundStrings.jcell_instance value))

(define (SoundStrings.jnew_0)
  (define this (new SoundStrings% [jclass "SoundStrings"]))
    (set-field! f_STOP_ALL this "stopAll")
    (set-field! f_CLOSE_ALL this "closeAll")
    (set-field! f_SOUND this " Sound: ")
    (set-field! f_INIT_SOUND this "Initializing Sound: ")
    (set-field! f_STOPPING_SOUND this "Stopping Sound: ")
    (set-field! f_CLOSING_SOUND this "Closing Sound: ")
  this)

(define (SoundStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SoundStrings.jstatic_instance)))))



