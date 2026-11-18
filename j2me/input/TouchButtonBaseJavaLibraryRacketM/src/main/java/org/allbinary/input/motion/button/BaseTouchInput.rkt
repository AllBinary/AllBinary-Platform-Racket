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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define BaseTouchInput%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_basicArrayListUtil JR.null])
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_basicArrayListUtil this) jm_getImmutableInstance_0)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className this)))))))
(define (BaseTouchInput.jclassValue) BaseTouchInput%)

(define (BaseTouchInput.jnew_0)
  (define this (new BaseTouchInput% [jclass "BaseTouchInput"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_basicArrayListUtil this (BasicArrayListUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)



