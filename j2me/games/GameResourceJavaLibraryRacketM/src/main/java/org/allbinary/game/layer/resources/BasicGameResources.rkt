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
;; package org.allbinary.game.layer.resources

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/GameConfigurationCentral.rkt" (GameConfigurationCentral.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./GameGraphicsResourceUtil.rkt" (GameGraphicsResourceUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicGameResources%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_RESOURCE JR.null])
    (field [f_RESOURCE_DESTROY JR.null])
    (define/public (jm_init_2 _ROOT _SIZE)
    (let ([_scale JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_INIT _commonStrings) _e))])
            (set! _scale (JR.className (JR.className (get-field f_SCALE (GameConfigurationCentral.jm_getInstance_0)))))
            (if (and (> _scale 1) (< (JR.i32 (- _scale 1)) (vector-length _SIZE)))
                (begin
                (send this jm_append_2 _ROOT (vector-ref _SIZE (JR.i32 (- _scale 1)))))
                (begin
                (raise (JR.newException "Exception" (send (send (send (StringMaker.jnew_0) jm_append_1 "Invalid Value: ") jm_appendint_1 _scale) jm_toString_0)))))))))
    (define/public (jm_append_2 _ROOT _sizeString)
    (let ([_DESTROY JR.null][_string JR.null])
      (let/ec jreturn
        (set! _DESTROY "_destroy")
        (set! _string (send this jm_getString_0))
        (JR.className (BasicGameResources.jstatic_stringBuffer))
        (JR.className (BasicGameResources.jstatic_stringBuffer))
        (JR.className (BasicGameResources.jstatic_stringBuffer))
        (JR.className (BasicGameResources.jstatic_stringBuffer))
        (set-field! f_RESOURCE this (JR.toString (BasicGameResources.jstatic_stringBuffer)))
        (JR.className (BasicGameResources.jstatic_stringBuffer))
        (JR.className (BasicGameResources.jstatic_stringBuffer))
        (JR.className (BasicGameResources.jstatic_stringBuffer))
        (JR.className (BasicGameResources.jstatic_stringBuffer))
        (JR.className (BasicGameResources.jstatic_stringBuffer))
        (set-field! f_RESOURCE_DESTROY this (JR.toString (BasicGameResources.jstatic_stringBuffer))))))
    (define/public (jm_getString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (GameGraphicsResourceUtil.jm_getInstance_0) jm_getName_0)))))))
(define (BasicGameResources.jclassValue) BasicGameResources%)

(define BasicGameResources.jcell_stringBuffer 'jnone)
(define (BasicGameResources.jstatic_stringBuffer)
  (when (eq? BasicGameResources.jcell_stringBuffer 'jnone) (set! BasicGameResources.jcell_stringBuffer (StringMaker.jnew_0)))
  BasicGameResources.jcell_stringBuffer)
(define (BasicGameResources.jsetstatic_stringBuffer value) (set! BasicGameResources.jcell_stringBuffer value))

(define (BasicGameResources.jnew_0)
  (define this (new BasicGameResources% [jclass "BasicGameResources"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_RESOURCE this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_RESOURCE_DESTROY this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn (void)))
  this)



