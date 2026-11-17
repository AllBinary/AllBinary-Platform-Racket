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
;; package org.allbinary.logic.java.characters

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define CharacterSetData%
  (class JObject%
    (super-new)
    (field [f_US_ASCII JR.null])
    (field [f_ISO_8859_1 JR.null])
    (field [f_UTF_8 JR.null])
    (field [f_UTF_16 JR.null])
    (field [f_UTF_16BE JR.null])
    (field [f_UTF_16LE JR.null])))

(define CharacterSetData.jcell_instance 'jnone)
(define (CharacterSetData.jstatic_instance)
  (when (eq? CharacterSetData.jcell_instance 'jnone) (set! CharacterSetData.jcell_instance (CharacterSetData.jnew_0)))
  CharacterSetData.jcell_instance)

(define (CharacterSetData.jnew_0)
  (define this (new CharacterSetData% [jclass "CharacterSetData"]))
    (set-field! f_US_ASCII this "US-ASCII")
    (set-field! f_ISO_8859_1 this "ISO-8859-1")
    (set-field! f_UTF_8 this "UTF-8")
    (set-field! f_UTF_16 this "UTF-16")
    (set-field! f_UTF_16BE this "UTF-16BE")
    (set-field! f_UTF_16LE this "UTF-16LE")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (CharacterSetData.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CharacterSetData.jstatic_instance)))))



