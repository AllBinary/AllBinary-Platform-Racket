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
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./InGameOptionsForm.rkt" (InGameOptionsForm.jnew_4)])
(provide (all-defined-out))

(define InGameOptionsFormFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_SINGLETON JR.null])
    (define/public (jm_init_5 _commandListener _initInterface _title _backgrounBasicColor _foregroundBasicColor)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_INIT _commonStrings) _e))])
            (when (eq? (get-field f_SINGLETON this) (CommandForm.jm_getNullCommandForm_0))
                (begin
                (send _initInterface jm_init_0)
                (set-field! f_SINGLETON this (InGameOptionsForm.jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor))))))))
    (define/public (jm_get_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_SINGLETON this)))))))
(define (InGameOptionsFormFactory.jclassValue) InGameOptionsFormFactory%)

(define InGameOptionsFormFactory.jcell_instance 'jnone)
(define (InGameOptionsFormFactory.jstatic_instance)
  (when (eq? InGameOptionsFormFactory.jcell_instance 'jnone) (set! InGameOptionsFormFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  InGameOptionsFormFactory.jcell_instance)
(define (InGameOptionsFormFactory.jsetstatic_instance value) (set! InGameOptionsFormFactory.jcell_instance value))

(define (InGameOptionsFormFactory.jnew_0)
  (define this (new InGameOptionsFormFactory% [jclass "InGameOptionsFormFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_SINGLETON this (CommandForm.jm_getNullCommandForm_0))
  this)

(define (InGameOptionsFormFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (InGameOptionsFormFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! InGameOptionsFormFactory.jcell_instance (InGameOptionsFormFactory.jnew_0))))
        (jreturn (InGameOptionsFormFactory.jstatic_instance)))))



