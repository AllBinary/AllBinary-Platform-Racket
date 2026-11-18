#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./CustomScreen.rkt")
(lazy-require ["../../../../org/allbinary/graphics/form/item/ABCustomItem.rkt" (ABCustomItem.jm_getNullInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define ABCustomForm%
  (class CustomScreen%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (define/public (jm_getAllitems_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.newArray JR.null 0)))))
    (define/public (jm_size_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_setSelectedIndex_1 _index)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getSelectedIndex_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_deleteAll_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_delete_1 _itemNum)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_append_1 _item)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_insert_2 _itemNum _item)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_set_2 _itemNum _item)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_get_1 _itemNum)
    (let ()
      (let/ec jreturn
        (jreturn (ABCustomItem.jm_getNullInstance_0)))))
    (define/public (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getTitle_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))))
(define (ABCustomForm.jclassValue) ABCustomForm%)

(define (ABCustomForm.jnew_4 _title _items _backgroundBasicColor _foregroundBasicColor)
  (define this (new ABCustomForm% [jclass "ABCustomForm"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)



