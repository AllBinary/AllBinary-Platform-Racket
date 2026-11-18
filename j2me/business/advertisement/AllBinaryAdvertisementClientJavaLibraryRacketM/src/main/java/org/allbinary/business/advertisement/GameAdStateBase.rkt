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
;; package org.allbinary.business.advertisement

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["./Advertisements.rkt" (Advertisements.jnew_0)])
(provide (all-defined-out))

(define GameAdStateBase%
  (class JObject%
    (super-new)
    (field [f_adConfigurationP JR.null])
    (field [f_advertisementsP JR.null])
    (field [f_okayToShowAdsP #f])
    (define/public (jm_initViewArray_1 _viewArray)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onStart_1 _anyType)
    (let ()
      (let/ec jreturn
        (send this jm_init_0))))
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isShowingAtLocation_1 _location)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_isShowingAt_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_show_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_hide_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_processAdState_2 _gameState _gameType)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processPageAdState_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_playingAdState_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_playingAdStateWH_2 _width _height)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_notPlayingAdState_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setGameIsReady_1 _gameIsReady)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isGameIsReady_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_getAdvertisements_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_advertisementsP this)))))
    (define/public (jm_getAdConfiguration_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_adConfigurationP this)))))
    (define/public (jm_isOkayToShowPageAd_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_setOkayToShowAds_1 _okayToShowAds)
    (let ()
      (let/ec jreturn
        (set-field! f_okayToShowAdsP this _okayToShowAds))))
    (define/public (jm_isOkayToShowAds_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_okayToShowAdsP this)))))
    (define/public (jm_isEnabled_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (GameAdStateBase.jclassValue) GameAdStateBase%)

(define (GameAdStateBase.jnew_1 _adConfiguration)
  (define this (new GameAdStateBase% [jclass "GameAdStateBase"]))
    
    (set-field! f_advertisementsP this (Advertisements.jnew_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_adConfigurationP this _adConfiguration)))
  this)



