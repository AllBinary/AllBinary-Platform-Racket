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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./PlayerGameInput.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define GameInputProcessorComposite%
  (class PlayerGameInput%
    (super-new)
    (field [f_name JR.null])
    (field [f_gameInputProcessorInterface JR.null])
    (field [f_NAME_LABEL JR.null])
    (define/override (jm_update_0)
    (let ([_list JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _list (send this jm_getGameKeyEventList_0))
            (send (get-field f_gameInputProcessorInterface this) jm_onInput_1 _list)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (send (StringMaker.jnew_0) jm_append_1 (super jm_toString_0)) jm_append_1 (get-field f_NAME_LABEL this)) jm_append_1 (get-field f_name this)) jm_toString_0)))))))
(define (GameInputProcessorComposite.jclassValue) GameInputProcessorComposite%)

(define (GameInputProcessorComposite.jnew_2 _name _gameInputProcessorInterface)
  (define this (new GameInputProcessorComposite% [jclass "GameInputProcessorComposite"]))
    
    
    (set-field! f_NAME_LABEL this " GameInputProcessorInterface: ")
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_name this _name)
        (set-field! f_gameInputProcessorInterface this _gameInputProcessorInterface)))
  this)



