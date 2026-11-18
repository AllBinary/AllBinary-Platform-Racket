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
;; package org.allbinary.game.configuration

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define GameConfigurationTextInput%
  (class JObject%
    (super-new)
    (field [f_label JR.null])
    (field [f_text JR.null])
    (define/public (jm_setText_1 _text)
    (let ()
      (let/ec jreturn
        (set-field! f_text this _text))))
    (define/public (jm_getText_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_text this)))))
    (define/public (jm_setLabel_1 _label)
    (let ()
      (let/ec jreturn
        (set-field! f_label this _label))))
    (define/public (jm_getLabel_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_label this)))))))
(define (GameConfigurationTextInput.jclassValue) GameConfigurationTextInput%)

(define GameConfigurationTextInput.jcell_hashtable 'jnone)
(define (GameConfigurationTextInput.jstatic_hashtable)
  (when (eq? GameConfigurationTextInput.jcell_hashtable 'jnone) (set! GameConfigurationTextInput.jcell_hashtable (send (StdUtil.jm_getInstance_0) jm_createHashtable_0)))
  GameConfigurationTextInput.jcell_hashtable)
(define (GameConfigurationTextInput.jsetstatic_hashtable value) (set! GameConfigurationTextInput.jcell_hashtable value))

(define GameConfigurationTextInput.jcell_SIMULATOR_IP 'jnone)
(define (GameConfigurationTextInput.jstatic_SIMULATOR_IP)
  (when (eq? GameConfigurationTextInput.jcell_SIMULATOR_IP 'jnone) (set! GameConfigurationTextInput.jcell_SIMULATOR_IP (GameConfigurationTextInput.jnew_2 "IP: " "192.168.1.3")))
  GameConfigurationTextInput.jcell_SIMULATOR_IP)
(define (GameConfigurationTextInput.jsetstatic_SIMULATOR_IP value) (set! GameConfigurationTextInput.jcell_SIMULATOR_IP value))

(define GameConfigurationTextInput.jcell_SIMULATOR_PORT 'jnone)
(define (GameConfigurationTextInput.jstatic_SIMULATOR_PORT)
  (when (eq? GameConfigurationTextInput.jcell_SIMULATOR_PORT 'jnone) (set! GameConfigurationTextInput.jcell_SIMULATOR_PORT (GameConfigurationTextInput.jnew_2 "Port: " "8010")))
  GameConfigurationTextInput.jcell_SIMULATOR_PORT)
(define (GameConfigurationTextInput.jsetstatic_SIMULATOR_PORT value) (set! GameConfigurationTextInput.jcell_SIMULATOR_PORT value))

(define (GameConfigurationTextInput.jnew_2 _label _text)
  (define this (new GameConfigurationTextInput% [jclass "GameConfigurationTextInput"]))
    (set-field! f_label this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_text this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (send this jm_setText_1 _text)
        (send this jm_setLabel_1 _label)
        (JR.className (GameConfigurationTextInput.jstatic_hashtable))))
  this)

(define (GameConfigurationTextInput.jm_update_1 _textField)
    (let ([_anyType JR.null][_gameConfigurationTextInput JR.null])
      (let/ec jreturn
        (set! _anyType (send _textField jm_getLabel_0))
        (set! _gameConfigurationTextInput (JR.className (GameConfigurationTextInput.jstatic_hashtable)))
        (send _gameConfigurationTextInput jm_setText_1 (send _textField jm_getString_0)))))

(define (GameConfigurationTextInput.jm_getHashtable_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameConfigurationTextInput.jstatic_hashtable)))))



