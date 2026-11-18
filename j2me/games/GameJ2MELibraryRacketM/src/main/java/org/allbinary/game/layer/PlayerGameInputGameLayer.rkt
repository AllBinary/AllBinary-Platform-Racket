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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/game/input/PlayerGameInputCompositeInterface.rkt"
  "./AllBinaryGameLayer.rkt")
(lazy-require ["../../../../org/allbinary/game/input/PlayerGameInput.rkt" (PlayerGameInput.jnew_3)])
(lazy-require ["../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../org/allbinary/view/StaticViewPosition.rkt" (StaticViewPosition.jnew_3)])
(provide (all-defined-out))

(define PlayerGameInputGameLayer%
  (class AllBinaryGameLayer%
    (super-new)
    (field [f_playerGameInput JR.null])
    (define/public (jm_getPlayerGameInput_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_playerGameInput this)))))
    (define/public (jm_initInputProcessors_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_processInput_1 _myManager)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (PlayerGameInputGameLayer.jclassValue) PlayerGameInputGameLayer%)

(define (PlayerGameInputGameLayer.jnew_1 _playerInputId)
  (define this (new PlayerGameInputGameLayer% [jclass "PlayerGameInputGameLayer"]))
    
    (let ([_canvasStrings JR.null])
      (let/ec jreturn
        (void)
        (set-field! f_playerGameInput this (PlayerGameInput.jnew_3 (send this jm_getGameKeyEventList_0) (BasicArrayListD.jnew_0) _playerInputId))
        (set! _canvasStrings (CanvasStrings.jm_getInstance_0))
        (JR.className (get-field f_logUtil this))))
  this)



