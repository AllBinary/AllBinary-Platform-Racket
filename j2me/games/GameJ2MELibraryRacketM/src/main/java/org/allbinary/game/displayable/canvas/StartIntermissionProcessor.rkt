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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/canvas/Processor.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define StartIntermissionProcessor%
  (class Processor%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_gameCanvas JR.null])
    (field [f_WAIT 0])
    (define/override (jm_process_0)
    (let ()
      (let/ec jreturn
        (when (JR.className (JR.className (send (get-field f_gameCanvas this) jm_getStartIntermissionInterface_0)))
            (begin
            (send (get-field f_logUtil this) jm_putF_3 "Intermission End" this (get-field f_PROCESS (get-field f_commonStrings this)))
            (JR.className (send (get-field f_gameCanvas this) jm_getStartIntermissionInterface_0)))))))))
(define (StartIntermissionProcessor.jclassValue) StartIntermissionProcessor%)

(define (StartIntermissionProcessor.jnew_1 _gameCanvas)
  (define this (new StartIntermissionProcessor% [jclass "StartIntermissionProcessor"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    (set-field! f_WAIT this 5000)
    (let ()
      (let/ec jreturn
        (set-field! f_gameCanvas this _gameCanvas)))
  this)



