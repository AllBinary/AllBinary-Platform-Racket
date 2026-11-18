#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/GameTypeFactory.rkt" (GameTypeFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define DemoGameBehavior%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_pause_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_unPause_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_updateTouch_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_updateScreenButtonPaintable_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_setTouchPaintableP_1 (NullPaintable.jm_getInstance_0)))))
    (define/public (jm_setGameState_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_removeAllGameKeyInputListeners_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_updateEndGameProcessor_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_buildGame_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_run_1 _allBinaryGameCanvas)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (send (get-field f_logUtil this) jm_putF_3 (JR.toString (get-field f_BOT (GameTypeFactory.jm_getInstance_0))) this (get-field f_RUN _commonStrings)))))
    (define/public (jm_setHighScore_6 _abeClientInformation _allBinaryGameCanvas _name _score _autoSubmit _isLast)
    (let ()
      (let/ec jreturn (void))))))
(define (DemoGameBehavior.jclassValue) DemoGameBehavior%)

(define DemoGameBehavior.jcell_instance 'jnone)
(define (DemoGameBehavior.jstatic_instance)
  (when (eq? DemoGameBehavior.jcell_instance 'jnone) (set! DemoGameBehavior.jcell_instance (DemoGameBehavior.jnew_0)))
  DemoGameBehavior.jcell_instance)
(define (DemoGameBehavior.jsetstatic_instance value) (set! DemoGameBehavior.jcell_instance value))

(define (DemoGameBehavior.jnew_0)
  (define this (new DemoGameBehavior% [jclass "DemoGameBehavior"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)

(define (DemoGameBehavior.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DemoGameBehavior.jstatic_instance)))))



