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
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./NoSound.rkt" (NoSound.jm_getInstance_0)])
(provide (all-defined-out))

(define PlayerQueue%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_list JR.null])
    (field [f_max 0])
    (define/public (jm_add_1 _sound)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_put_3 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_ADD (get-field f_commonStrings this))))])
            (when (not (send (get-field f_list this) jm_contains_1 _sound))
                (begin
                (send (get-field f_list this) jm_add_1 _sound)))))))
    (define/public (jm_process_0)
    (let ([_sound JR.null][_played JR.null][_resource JR.null])
      (let/ec jreturn
        (set! _sound (NoSound.jm_getInstance_0))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _resource (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
            (when (not (JR.null? _sound))
                (begin
                (set! _resource (send _sound jm_getResource_0))))
            (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_EXCEPTION_LABEL (get-field f_commonStrings this))) jm_append_1 _resource) jm_toString_0) this (get-field f_PROCESS (get-field f_commonStrings this)))
            (jreturn #f))])
            (set! _played #f)
            (when (> (send (get-field f_list this) jm_size_0) 0)
                (begin
                (set! _sound (send (get-field f_list this) jm_removeAt_1 0))
                (when (not (JR.null? _sound))
                    (begin
                    (JR.className (send _sound jm_getPlayerP_0))))
                (let/ec jbreak (let jloop () (when (> (send (get-field f_list this) jm_size_0) (get-field f_max this))
                        (let/ec jcontinue
                    (send (get-field f_list this) jm_removeAt_1 0)) (jloop))))
                (set! _played #t)))
            (jreturn _played)))))
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_clear_0))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (StringMaker.jnew_0) jm_append_1 (PlayerQueue.jstatic_TOTAL)) jm_appendint_1 (send (get-field f_list this) jm_size_0)) jm_toString_0)))))))
(define (PlayerQueue.jclassValue) PlayerQueue%)

(define PlayerQueue.jcell_TOTAL 'jnone)
(define (PlayerQueue.jstatic_TOTAL)
  (when (eq? PlayerQueue.jcell_TOTAL 'jnone) (set! PlayerQueue.jcell_TOTAL "Sounds In Queue: "))
  PlayerQueue.jcell_TOTAL)
(define (PlayerQueue.jsetstatic_TOTAL value) (set! PlayerQueue.jcell_TOTAL value))

(define (PlayerQueue.jnew_1 _max)
  (define this (new PlayerQueue% [jclass "PlayerQueue"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_max this _max)))
  this)



