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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Runnable.rkt"
  "./SoundInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./NoPlayer.rkt" (NoPlayer.jstatic_NO_PLAYER)])
(provide (all-defined-out))

(define Sound%
  (class JObject%
    (super-new)
    (field [f_resource JR.null])
    (field [f_player JR.null])
    (define/public (jm_getResource_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_resource this)))))
    (define/public (jm_getPlayerP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_player this)))))
    (define/public (jm_setPlayerP_1 _player)
    (let ()
      (let/ec jreturn
        (set-field! f_player this _player))))
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getDuration_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_run_0)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_put_3 (get-field f_EXCEPTION _commonStrings) this (get-field f_RUN _commonStrings)))])
            (send (get-field f_player this) jm_start_0)))))))
(define (Sound.jclassValue) Sound%)

(define (Sound.jnew_1 _resource)
  (define this (new Sound% [jclass "Sound"]))
    
    (set-field! f_player this (NoPlayer.jstatic_NO_PLAYER))
    (let ()
      (let/ec jreturn
        (set-field! f_resource this _resource)))
  this)



