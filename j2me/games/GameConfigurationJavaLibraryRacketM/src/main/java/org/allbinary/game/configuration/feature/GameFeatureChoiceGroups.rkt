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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define GameFeatureChoiceGroups%
  (class JObject%
    (super-new)
    (field [f_hashtable JR.null])
    (define/public (jm_get_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_hashtable this)))))
    (define/public (jm_add_2 _name _list)
    (let ()
      (let/ec jreturn
        (send (get-field f_hashtable this) jm_put_2 _name _list))))))
(define (GameFeatureChoiceGroups.jclassValue) GameFeatureChoiceGroups%)

(define GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive 'jnone)
(define (GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsExclusive)
  (when (eq? GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive 'jnone) (set! GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive (GameFeatureChoiceGroups.jnew_0)))
  GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive)
(define (GameFeatureChoiceGroups.jsetstatic_gameFeatureChoiceGroupsExclusive value) (set! GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive value))

(define GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple 'jnone)
(define (GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsMultiple)
  (when (eq? GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple 'jnone) (set! GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple (GameFeatureChoiceGroups.jnew_0)))
  GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple)
(define (GameFeatureChoiceGroups.jsetstatic_gameFeatureChoiceGroupsMultiple value) (set! GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple value))

(define (GameFeatureChoiceGroups.jnew_0)
  (define this (new GameFeatureChoiceGroups% [jclass "GameFeatureChoiceGroups"]))
    (set-field! f_hashtable this (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsExclusive)))))

(define (GameFeatureChoiceGroups.jm_getMultipleInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsMultiple)))))



