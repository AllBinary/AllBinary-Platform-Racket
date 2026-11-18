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
;; package org.allbinary.game.input.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define GameKeyEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_sourceId 0])
    (field [f_repeated #f])
    (field [f_key 0])
    (field [f_gameActionKey 0])
    (field [f_originalKey 0])
    (define/public (jm_init_1 _anyType)
    (let ()
      (let/ec jreturn
        (send this jm_setSource_1 _anyType))))
    (define/public (jm_setRepeatEvents_1 _repeated)
    (let ()
      (let/ec jreturn
        (set-field! f_repeated this _repeated))))
    (define/public (jm_hasRepeatEvents_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_repeated this)))))
    (define/public (jm_getKey_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_key this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "\nKey: ")
        (send _stringBuffer jm_appendint_1 (send this jm_getKey_0))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getOriginalKey_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_originalKey this)))))
    (define/public (jm_setOriginalKey_1 _originalKey)
    (let ()
      (let/ec jreturn
        (set-field! f_originalKey this _originalKey))))
    (define/public (jm_getGameActionKey_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameActionKey this)))))
    (define/public (jm_setGameActionKey_1 _gameActionKey)
    (let ()
      (let/ec jreturn
        (set-field! f_gameActionKey this _gameActionKey))))
    (define/public (jm_getSourceId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_sourceId this)))))))
(define (GameKeyEvent.jclassValue) GameKeyEvent%)

(define GameKeyEvent.jcell_NONE 'jnone)
(define (GameKeyEvent.jstatic_NONE)
  (when (eq? GameKeyEvent.jcell_NONE 'jnone) (set! GameKeyEvent.jcell_NONE (GameKeyEvent.jnew_6 (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)) (JR.i32 (- 1)) (JR.i32 (- 1)) (JR.i32 (- 1)) (JR.i32 (- 1)) #f)))
  GameKeyEvent.jcell_NONE)
(define (GameKeyEvent.jsetstatic_NONE value) (set! GameKeyEvent.jcell_NONE value))

(define (GameKeyEvent.jnew_6 _anyType _sourceId _originalKey _gameActionKey _key _repeated)
  (define this (new GameKeyEvent% [jclass "GameKeyEvent"]))
    
    
    
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_sourceId this _sourceId)
        (send this jm_setOriginalKey_1 _originalKey)
        (set-field! f_key this _key)
        (send this jm_setGameActionKey_1 _gameActionKey)
        (send this jm_setRepeatEvents_1 _repeated)))
  this)

(define (GameKeyEvent.jm_createEvent_3 _anyType _sourceId _key)
    (let ()
      (let/ec jreturn
        (jreturn (GameKeyEvent.jnew_6 _anyType _sourceId 0 0 _key #f)))))



