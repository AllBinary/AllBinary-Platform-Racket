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
;; package org.allbinary.game.combat.destroy.event

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(lazy-require ["../../../../../../org/allbinary/game/displayable/canvas/NullGameCanvas.rkt" (NullGameCanvas.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/layer/AllBinaryLayer.rkt" (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./DestroyedEventHandler.rkt" (DestroyedEventHandler.jm_getInstance_0)])
(provide (all-defined-out))

(define DestroyedEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_allBinaryGameCanvas JR.null])
    (field [f_allBinaryLayerInterface JR.null])
    (define/public (jm_getAllBinaryGameCanvas_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_allBinaryGameCanvas this)))))
    (define/public (jm_getLayerInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_allBinaryLayerInterface this)))))
    (define/public (jm_setAllBinaryGameCanvas_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (set-field! f_allBinaryGameCanvas this _allBinaryGameCanvas))))
    (define/public (jm_setLayerInterfaceForCircularStaticPool_1 _allBinaryLayerInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_allBinaryLayerInterface this _allBinaryLayerInterface))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "DestroyedEvent: \n")
        (send _stringBuffer jm_append_1 "AllBinaryLayerInterface: ")
        (send _stringBuffer jm_append_1 (send (get-field f_allBinaryLayerInterface this) jm_toString_0))
        (send _stringBuffer jm_append_1 "\nAllBinaryGameCanvas: ")
        (send _stringBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (send this jm_getAllBinaryGameCanvas_0)))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (DestroyedEvent.jclassValue) DestroyedEvent%)

(define (DestroyedEvent.jnew_1 _combatGameCanvas)
  (define this (new DestroyedEvent% [jclass "DestroyedEvent"]))
    (set-field! f_allBinaryGameCanvas this (NullGameCanvas.jm_getInstance_0))
    (set-field! f_allBinaryLayerInterface this (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setAllBinaryGameCanvas_1 _combatGameCanvas)))
  this)



