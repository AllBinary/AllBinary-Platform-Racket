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
(lazy-require ["../../../../org/allbinary/graphics/displayable/screen/CommandForm.rkt" (CommandForm.jm_getNullCommandForm_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./GameOptionsForm.rkt" (GameOptionsForm.jnew_4)])
(provide (all-defined-out))

(define GameOptionsFormFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_init_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_INIT _commonStrings) _e)
            (jreturn (CommandForm.jm_getNullCommandForm_0)))])
            (jreturn (GameOptionsForm.jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor))))))))
(define (GameOptionsFormFactory.jclassValue) GameOptionsFormFactory%)

(define GameOptionsFormFactory.jcell_instance 'jnone)
(define (GameOptionsFormFactory.jstatic_instance)
  (when (eq? GameOptionsFormFactory.jcell_instance 'jnone) (set! GameOptionsFormFactory.jcell_instance (GameOptionsFormFactory.jnew_0)))
  GameOptionsFormFactory.jcell_instance)
(define (GameOptionsFormFactory.jsetstatic_instance value) (set! GameOptionsFormFactory.jcell_instance value))

(define (GameOptionsFormFactory.jnew_0)
  (define this (new GameOptionsFormFactory% [jclass "GameOptionsFormFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameOptionsFormFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameOptionsFormFactory.jstatic_instance)))))



