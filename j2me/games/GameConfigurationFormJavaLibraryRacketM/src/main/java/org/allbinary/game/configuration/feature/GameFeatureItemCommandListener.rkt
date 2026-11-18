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
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../javax/microedition/lcdui/ItemCommandListener.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/GameConfigurationGauge.rkt" (GameConfigurationGauge.jclassValue)])
(lazy-require ["../../../../../org/allbinary/game/configuration/GameConfigurationUtil.rkt" (GameConfigurationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/midlet/MidletStrings.rkt" (MidletStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define GameFeatureItemCommandListener%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_gameOptionsForm JR.null])
    (define/public (jm_commandAction_2 _command _item)
    (let ([_itemLabel JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_COMMAND_ACTION (MidletStrings.jm_getInstance_0)) _e))])
            (set! _itemLabel (send _item jm_getLabel_0))
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_ITEM_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 _itemLabel) jm_toString_0) this (get-field f_COMMAND_ACTION (MidletStrings.jm_getInstance_0)))
            (when (is-a? _item (GameConfigurationGauge.jclassValue))
                (begin
                (send (GameConfigurationUtil.jm_getInstance_0) jm_change_2 (get-field f_gameOptionsForm this) _item)))))))))
(define (GameFeatureItemCommandListener.jclassValue) GameFeatureItemCommandListener%)

(define (GameFeatureItemCommandListener.jnew_1 _gameOptionsForm)
  (define this (new GameFeatureItemCommandListener% [jclass "GameFeatureItemCommandListener"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_gameOptionsForm this _gameOptionsForm)))
  this)



