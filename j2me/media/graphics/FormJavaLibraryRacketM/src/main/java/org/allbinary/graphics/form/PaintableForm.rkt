#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./ABCustomForm.rkt")
(lazy-require ["../../../../org/allbinary/graphics/RectangleFactory.rkt" (RectangleFactory.jstatic_SINGLETON)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./FormTypeFactory.rkt" (FormTypeFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define PaintableForm%
  (class ABCustomForm%
    (super-new)
    (field [f_canvasStrings JR.null])
    (field [f_rectangle JR.null])
    (field [f_x 0])
    (field [f_y 0])
    (field [f_formType JR.null])
    (define/public (jm_init_2 _rectangle _formType)
    (let ([_point JR.null])
      (let/ec jreturn
        (set-field! f_rectangle this _rectangle)
        (set! _point (send (get-field f_rectangle this) jm_getPoint_0))
        (set-field! f_x this (send _point jm_getX_0))
        (set-field! f_y this (send _point jm_getY_0))
        (set-field! f_formType this _formType))))
    (define/override (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_rectangle this) jm_getWidth_0)))))))
(define (PaintableForm.jclassValue) PaintableForm%)

(define PaintableForm.jcell_NULL_PAINTABLE_FORM 'jnone)
(define (PaintableForm.jstatic_NULL_PAINTABLE_FORM)
  (when (eq? PaintableForm.jcell_NULL_PAINTABLE_FORM 'jnone) (set! PaintableForm.jcell_NULL_PAINTABLE_FORM (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  PaintableForm.jcell_NULL_PAINTABLE_FORM)
(define (PaintableForm.jsetstatic_NULL_PAINTABLE_FORM value) (set! PaintableForm.jcell_NULL_PAINTABLE_FORM value))

(define (PaintableForm.jnew_4 _title _items _backgroundBasicColor _foregroundBasicColor)
  (define this (new PaintableForm% [jclass "PaintableForm"]))
    (set-field! f_canvasStrings this (CanvasStrings.jm_getInstance_0))
    (set-field! f_rectangle this (RectangleFactory.jstatic_SINGLETON))
    
    
    (set-field! f_formType this (get-field f_NULL_FORM_TYPE (FormTypeFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setSelectedIndex_1 0)))
  this)

(define (PaintableForm.jm_getNullPaintableForm_0)
    (let ()
      (let/ec jreturn
        (when (eq? (PaintableForm.jstatic_NULL_PAINTABLE_FORM) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! PaintableForm.jcell_NULL_PAINTABLE_FORM (PaintableForm.jnew_4 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (JR.newArray JR.null 0) (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)) (get-field f_WHITE (BasicColorFactory.jm_getInstance_0))))))
        (jreturn (PaintableForm.jstatic_NULL_PAINTABLE_FORM)))))



