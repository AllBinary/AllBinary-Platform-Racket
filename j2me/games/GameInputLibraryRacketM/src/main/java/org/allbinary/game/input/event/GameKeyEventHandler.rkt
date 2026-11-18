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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./PressGameKeyEventHandler.rkt" (PressGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["./UpGameKeyEventHandler.rkt" (UpGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["./DownGameKeyEventHandler.rkt" (DownGameKeyEventHandler.jm_getInstance_0)])
(provide (all-defined-out))

(define GameKeyEventHandler%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_pressGameKeyEventHandler JR.null])
    (field [f_upGameKeyEventHandler JR.null])
    (field [f_downGameKeyEventHandler JR.null])
    (define/public (jm_removeAllListeners_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_pressGameKeyEventHandler this) jm_removeAllListeners_0)
        (send (get-field f_upGameKeyEventHandler this) jm_removeAllListeners_0)
        (send (get-field f_downGameKeyEventHandler this) jm_removeAllListeners_0))))
    (define/public (jm_addListenerForPlayer_2 _eventListenerInterface _playerInputId)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send _eventListenerInterface jm_toString_0) this (get-field f_ADD_LISTENER (get-field f_commonStrings this)))
        (send (get-field f_pressGameKeyEventHandler this) jm_addListenerSingleThreaded_1 _eventListenerInterface)
        (JR.className (send (get-field f_upGameKeyEventHandler this) jm_getInstanceForPlayer_1 _playerInputId))
        (JR.className (send (get-field f_downGameKeyEventHandler this) jm_getInstanceForPlayer_1 _playerInputId)))))
    (define/public (jm_addListener_1 _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send _eventListenerInterface jm_toString_0) this (get-field f_ADD_LISTENER (get-field f_commonStrings this)))
        (send (get-field f_pressGameKeyEventHandler this) jm_addListenerSingleThreaded_1 _eventListenerInterface)
        (send (get-field f_upGameKeyEventHandler this) jm_addListenerSingleThreaded_1 _eventListenerInterface)
        (send (get-field f_downGameKeyEventHandler this) jm_addListenerSingleThreaded_1 _eventListenerInterface))))
    (define/public (jm_removeListener_1 _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send _eventListenerInterface jm_toString_0) this (get-field f_REMOVE_LISTENER (get-field f_commonStrings this)))
        (send (get-field f_pressGameKeyEventHandler this) jm_removeListenerSingleThreaded_1 _eventListenerInterface)
        (send (get-field f_upGameKeyEventHandler this) jm_removeListenerSingleThreaded_1 _eventListenerInterface)
        (send (get-field f_downGameKeyEventHandler this) jm_removeListenerSingleThreaded_1 _eventListenerInterface))))))
(define (GameKeyEventHandler.jclassValue) GameKeyEventHandler%)

(define GameKeyEventHandler.jcell_instance 'jnone)
(define (GameKeyEventHandler.jstatic_instance)
  (when (eq? GameKeyEventHandler.jcell_instance 'jnone) (set! GameKeyEventHandler.jcell_instance (GameKeyEventHandler.jnew_0)))
  GameKeyEventHandler.jcell_instance)
(define (GameKeyEventHandler.jsetstatic_instance value) (set! GameKeyEventHandler.jcell_instance value))

(define (GameKeyEventHandler.jnew_0)
  (define this (new GameKeyEventHandler% [jclass "GameKeyEventHandler"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_pressGameKeyEventHandler this (PressGameKeyEventHandler.jm_getInstance_0))
    (set-field! f_upGameKeyEventHandler this (UpGameKeyEventHandler.jm_getInstance_0))
    (set-field! f_downGameKeyEventHandler this (DownGameKeyEventHandler.jm_getInstance_0))
  this)

(define (GameKeyEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameKeyEventHandler.jstatic_instance)))))



