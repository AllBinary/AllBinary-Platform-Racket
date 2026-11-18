#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.business.advertisement

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./GameAdStateFactoryInterface.rkt")
(lazy-require ["../../../../org/allbinary/game/GameAdState.rkt" (GameAdState.jnew_1)])
(lazy-require ["./AppNameLicensingAdConfiguration.rkt" (AppNameLicensingAdConfiguration.jnew_0)])
(provide (all-defined-out))

(define GameAdStateFactory%
  (class JObject%
    (super-new)
    (field [f_gameAdStateArray JR.null])
    (field [f_gameAdState JR.null])
    (define/public (jm_getCurrentInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameAdState this)))))
    (define/public (jm_getInstanceForApp_1 _softwareInformation)
    (let ()
      (let/ec jreturn
        (set-field! f_gameAdState this (vector-ref (get-field f_gameAdStateArray this) 0))
        (jreturn (vector-ref (get-field f_gameAdStateArray this) 0)))))
    (define/public (jm_isEnabled_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (GameAdStateFactory.jclassValue) GameAdStateFactory%)

(define GameAdStateFactory.jcell_instance 'jnone)
(define (GameAdStateFactory.jstatic_instance)
  (when (eq? GameAdStateFactory.jcell_instance 'jnone) (set! GameAdStateFactory.jcell_instance (GameAdStateFactory.jnew_0)))
  GameAdStateFactory.jcell_instance)
(define (GameAdStateFactory.jsetstatic_instance value) (set! GameAdStateFactory.jcell_instance value))

(define (GameAdStateFactory.jnew_0)
  (define this (new GameAdStateFactory% [jclass "GameAdStateFactory"]))
    (set-field! f_gameAdStateArray this (vector (GameAdState.jnew_1 (AppNameLicensingAdConfiguration.jnew_0))))
    (set-field! f_gameAdState this (vector-ref (get-field f_gameAdStateArray this) 0))
  this)

(define (GameAdStateFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameAdStateFactory.jstatic_instance)))))



