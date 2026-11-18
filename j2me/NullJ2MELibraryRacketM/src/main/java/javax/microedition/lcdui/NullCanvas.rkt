#lang racket/base
;; Generated Code Do Not Modify
;; package javax.microedition.lcdui

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/util/Stack.rkt"
  "./Canvas.rkt")
(provide (all-defined-out))

(define NullCanvas%
  (class Canvas%
    (super-new)
    (define/override (jm_setFullScreenMode_1 _mode)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_sizeChanged_2 _w _h)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getCommandStack_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_isCommand_1 _command)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/override (jm_addCommand_1 _command)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_removeCommand_1 _command)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_removeAllCommands_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_setCommandListener_1 _l)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getCustomCommandListener_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_isPaused_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_removePauseCommand_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_pause_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_unPause_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_process_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_destroy_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setPaused_1 _isPaused)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/override (jm_pointerDragged_2 _x _y)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_pointerPressed_2 _x _y)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_pointerReleased_2 _x _y)
    (let ()
      (let/ec jreturn (void))))))
(define (NullCanvas.jclassValue) NullCanvas%)

(define NullCanvas.jcell_NULL_CANVAS 'jnone)
(define (NullCanvas.jstatic_NULL_CANVAS)
  (when (eq? NullCanvas.jcell_NULL_CANVAS 'jnone) (set! NullCanvas.jcell_NULL_CANVAS (NullCanvas.jnew_0)))
  NullCanvas.jcell_NULL_CANVAS)
(define (NullCanvas.jsetstatic_NULL_CANVAS value) (set! NullCanvas.jcell_NULL_CANVAS value))

(define (NullCanvas.jnew_0)
  (define this (new NullCanvas% [jclass "NullCanvas"]))
    (let ()
      (let/ec jreturn (void)))
  this)



