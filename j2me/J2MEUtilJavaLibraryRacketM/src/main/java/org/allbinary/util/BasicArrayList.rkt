#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.util

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/System.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["./ArrayUtil.rkt" (ArrayUtil.jm_getInstance_0)])
(lazy-require ["./BasicArrayListS.rkt" (BasicArrayListS.jnew_1)])
(provide (all-defined-out))

;This is a very fast and simple resizable list.
(define BasicArrayList%
  (class JObject%
    (super-new)
    (field [f_arrayUtil JR.null])
    (field [f_objectArray JR.null])
    (field [f_currentIndex 0])
    (define/public (jm_addAt_2 _index _element)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (when (or (> _index (get-field f_currentIndex this)) (< _index 0))
            (begin
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 (get-field f_INDEX_LABEL (CommonLabels.jm_getInstance_0)))
            (send _stringBuffer jm_appendint_1 _index)
            (send _stringBuffer jm_append_1 (BasicArrayList.jstatic_SIZE))
            (send _stringBuffer jm_appendint_1 (get-field f_currentIndex this))
            (raise (JR.newException "IndexOutOfBoundsException" (send _stringBuffer jm_toString_0)))))
        (send this jm_ensureCapacity_1 (JR.i32 (+ (get-field f_currentIndex this) 1)))
        (JR.arraycopy (get-field f_objectArray this) _index (get-field f_objectArray this) (JR.i32 (+ _index 1)) (JR.i32 (- (get-field f_currentIndex this) _index)))
        (vector-set! (get-field f_objectArray this) _index _element)
        (set-field! f_currentIndex this (JR.i32 (+ (get-field f_currentIndex this) 1))))))
    (define/public (jm_add_1 _anyType)
    (let ()
      (let/ec jreturn
        (send this jm_ensureCapacity_1 (JR.i32 (+ (get-field f_currentIndex this) 1)))
        (vector-set! (get-field f_objectArray this) (let ([jvalue (get-field f_currentIndex this)]) (set-field! f_currentIndex this (JR.i32 (+ (get-field f_currentIndex this) 1))) jvalue) _anyType)
        (jreturn #t))))
    (define/public (jm_removeAt_1 _index)
    (let ([_stringBuffer JR.null][_oldValue JR.null][_numMoved JR.null])
      (let/ec jreturn
        (when (>= _index (get-field f_currentIndex this))
            (begin
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 (get-field f_INDEX_LABEL (CommonLabels.jm_getInstance_0)))
            (send _stringBuffer jm_appendint_1 _index)
            (send _stringBuffer jm_append_1 (BasicArrayList.jstatic_SIZE))
            (send _stringBuffer jm_appendint_1 (get-field f_currentIndex this))
            (raise (JR.newException "IndexOutOfBoundsException" (send _stringBuffer jm_toString_0)))))
        (set! _oldValue (vector-ref (get-field f_objectArray this) _index))
        (set! _numMoved (JR.i32 (- (JR.i32 (- (get-field f_currentIndex this) _index)) 1)))
        (when (> _numMoved 0)
            (begin
            (JR.arraycopy (get-field f_objectArray this) (JR.i32 (+ _index 1)) (get-field f_objectArray this) _index _numMoved)))
        (vector-set! (get-field f_objectArray this) (let ([jvalue (JR.i32 (- (get-field f_currentIndex this) 1))]) (set-field! f_currentIndex this jvalue) jvalue) JR.null)
        (jreturn _oldValue))))
    (define/public (jm_remove_1 _anyType)
    (let ([_numMoved JR.null][_index JR.null])
      (let/ec jreturn
        (if (JR.null? _anyType)
            (begin
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index (get-field f_currentIndex this))
                    (let/ec jcontinue
                (when (JR.null? (vector-ref (get-field f_objectArray this) _index))
                    (begin
                    (set! _numMoved (JR.i32 (- (JR.i32 (- (get-field f_currentIndex this) _index)) 1)))
                    (when (> _numMoved 0)
                        (begin
                        (JR.arraycopy (get-field f_objectArray this) (JR.i32 (+ _index 1)) (get-field f_objectArray this) _index _numMoved)))
                    (vector-set! (get-field f_objectArray this) (let ([jvalue (JR.i32 (- (get-field f_currentIndex this) 1))]) (set-field! f_currentIndex this jvalue) jvalue) JR.null)
                    (jreturn #t))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop))))))
            (begin
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index (get-field f_currentIndex this))
                    (let/ec jcontinue
                (when (or (eq? _anyType (vector-ref (get-field f_objectArray this) _index)) (eq? _anyType (vector-ref (get-field f_objectArray this) _index)))
                    (begin
                    (set! _numMoved (JR.i32 (- (JR.i32 (- (get-field f_currentIndex this) _index)) 1)))
                    (when (> _numMoved 0)
                        (begin
                        (JR.arraycopy (get-field f_objectArray this) (JR.i32 (+ _index 1)) (get-field f_objectArray this) _index _numMoved)))
                    (vector-set! (get-field f_objectArray this) (let ([jvalue (JR.i32 (- (get-field f_currentIndex this) 1))]) (set-field! f_currentIndex this jvalue) jvalue) JR.null)
                    (jreturn #t))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))))
        (jreturn #f))))
    (define/public (jm_removeAll2_1 _list)
    (let ([_result JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _result #t)
        (set! _size (send _list jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (if (send this jm_remove_1 (send _list jm_get_1 _index))
                (begin
                (void))
                (begin
                (set! _result #f))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _result))))
    (define/public (jm_addAll2_1 _list)
    (let ([_listSize JR.null][_index JR.null])
      (let/ec jreturn
        (send this jm_ensureCapacity_1 (JR.i32 (+ (get-field f_currentIndex this) (get-field f_currentIndex _list))))
        (set! _listSize (get-field f_currentIndex _list))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _listSize)
                (let/ec jcontinue
            (vector-set! (get-field f_objectArray this) (let ([jvalue (get-field f_currentIndex this)]) (set-field! f_currentIndex this (JR.i32 (+ (get-field f_currentIndex this) 1))) jvalue) (vector-ref (get-field f_objectArray _list) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn #t))))
    (define/public (jm_addAllList_1 _list)
    (let ([_newObjectArray JR.null])
      (let/ec jreturn
        (set! _newObjectArray (send _list jm_toArray_0))
        (jreturn (send this jm_addAll_1 _newObjectArray)))))
    (define/public (jm_addAll_1 _newObjectArray)
    (let ([_numSize JR.null])
      (let/ec jreturn
        (set! _numSize (vector-length _newObjectArray))
        (send this jm_ensureCapacity_1 (JR.i32 (+ (get-field f_currentIndex this) _numSize)))
        (JR.arraycopy _newObjectArray 0 (get-field f_objectArray this) (get-field f_currentIndex this) _numSize)
        (set-field! f_currentIndex this (JR.i32 (+ (get-field f_currentIndex this) _numSize)))
        (jreturn (not (= _numSize 0))))))
    (define/public (jm_ensureCapacity_1 _minSize)
    (let ([_oldCapacity JR.null][_newCapacity JR.null])
      (let/ec jreturn
        (set! _oldCapacity (vector-length (get-field f_objectArray this)))
        (when (> _minSize _oldCapacity)
            (begin
            (set! _newCapacity (JR.i32 (+ (arithmetic-shift (JR.i32 (* _oldCapacity 3)) (- (bitwise-and 1 31))) 1)))
            (when (< _newCapacity _minSize)
                (begin
                (set! _newCapacity _minSize)))
            (set-field! f_objectArray this (send (get-field f_arrayUtil this) jm_copyOf_2 (get-field f_objectArray this) _newCapacity)))))))
    (define/public (jm_trimToSize_0)
    (let ([_oldCapacity JR.null])
      (let/ec jreturn
        (set! _oldCapacity (vector-length (get-field f_objectArray this)))
        (when (< (get-field f_currentIndex this) _oldCapacity)
            (begin
            (set-field! f_objectArray this (send (get-field f_arrayUtil this) jm_copyOf_2 (get-field f_objectArray this) (get-field f_currentIndex this))))))))
    (define/public (jm_indexOf_1 _anyType)
    (let ([_i JR.null])
      (let/ec jreturn
        (if (JR.null? _anyType)
            (begin
            (begin
                (set! _i 0)
                (let/ec jbreak (let jloop () (when (< _i (get-field f_currentIndex this))
                    (let/ec jcontinue
                (when (JR.null? (vector-ref (get-field f_objectArray this) _i))
                    (begin
                    (jreturn _i))))
                    (set! _i (JR.i32 (+ _i 1))) (jloop))))))
            (begin
            (begin
                (set! _i 0)
                (let/ec jbreak (let jloop () (when (< _i (get-field f_currentIndex this))
                    (let/ec jcontinue
                (when (eq? _anyType (vector-ref (get-field f_objectArray this) _i))
                    (begin
                    (jreturn _i))))
                    (set! _i (JR.i32 (+ _i 1))) (jloop)))))))
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_lastIndexOf_1 _anyType)
    (let ([_i JR.null])
      (let/ec jreturn
        (if (JR.null? _anyType)
            (begin
            (begin
                (set! _i (JR.i32 (- (get-field f_currentIndex this) 1)))
                (let/ec jbreak (let jloop () (when (>= _i 0)
                    (let/ec jcontinue
                (when (JR.null? (vector-ref (get-field f_objectArray this) _i))
                    (begin
                    (jreturn _i))))
                    (set! _i (JR.i32 (- _i 1))) (jloop))))))
            (begin
            (begin
                (set! _i (JR.i32 (- (get-field f_currentIndex this) 1)))
                (let/ec jbreak (let jloop () (when (>= _i 0)
                    (let/ec jcontinue
                (when (eq? _anyType (vector-ref (get-field f_objectArray this) _i))
                    (begin
                    (jreturn _i))))
                    (set! _i (JR.i32 (- _i 1))) (jloop)))))))
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_get_1 _index)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (when (>= _index (get-field f_currentIndex this))
            (begin
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 (get-field f_INDEX_LABEL (CommonLabels.jm_getInstance_0)))
            (send _stringBuffer jm_appendint_1 _index)
            (send _stringBuffer jm_append_1 (BasicArrayList.jstatic_SIZE))
            (send _stringBuffer jm_appendint_1 (get-field f_currentIndex this))
            (raise (JR.newException "IndexOutOfBoundsException" (send _stringBuffer jm_toString_0)))))
        (jreturn (vector-ref (get-field f_objectArray this) _index)))))
    (define/public (jm_set_2 _index _element)
    (let ([_stringBuffer JR.null][_oldValue JR.null])
      (let/ec jreturn
        (when (>= _index (get-field f_currentIndex this))
            (begin
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 (get-field f_INDEX_LABEL (CommonLabels.jm_getInstance_0)))
            (send _stringBuffer jm_appendint_1 _index)
            (send _stringBuffer jm_append_1 (BasicArrayList.jstatic_SIZE))
            (send _stringBuffer jm_appendint_1 (get-field f_currentIndex this))
            (raise (JR.newException "IndexOutOfBoundsException" (send _stringBuffer jm_toString_0)))))
        (set! _oldValue (vector-ref (get-field f_objectArray this) _index))
        (vector-set! (get-field f_objectArray this) _index _element)
        (jreturn _oldValue))))
    (define/public (jm_clear_0)
    (let ([_i JR.null])
      (let/ec jreturn
        (begin
            (set! _i 0)
            (let/ec jbreak (let jloop () (when (< _i (get-field f_currentIndex this))
                (let/ec jcontinue
            (vector-set! (get-field f_objectArray this) _i JR.null))
                (set! _i (JR.i32 (+ _i 1))) (jloop)))))
        (set-field! f_currentIndex this 0))))
    (define/public (jm_size_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_currentIndex this)))))
    (define/public (jm_isEmpty_0)
    (let ()
      (let/ec jreturn
        (jreturn (= (get-field f_currentIndex this) 0)))))
    (define/public (jm_contains_1 _anyType)
    (let ()
      (let/ec jreturn
        (jreturn (>= (send this jm_indexOf_1 _anyType) 0)))))
    (define/public (jm_toArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_arrayUtil this) jm_copyOf_2 (get-field f_objectArray this) (get-field f_currentIndex this))))))
    (define/public (jm_toArrayType_1 _objectArray)
    (let ()
      (let/ec jreturn
        (when (< (vector-length _objectArray) (get-field f_currentIndex this))
            (begin
            (jreturn (send (get-field f_arrayUtil this) jm_copyOfType_3 (get-field f_objectArray this) (get-field f_currentIndex this) (JR.className _objectArray)))))
        (JR.arraycopy (get-field f_objectArray this) 0 _objectArray 0 (get-field f_currentIndex this))
        (when (> (vector-length _objectArray) (get-field f_currentIndex this))
            (begin
            (vector-set! _objectArray (get-field f_currentIndex this) JR.null)))
        (jreturn _objectArray))))
    (define/public (jm_clone_0)
    (let ([_size JR.null][_list JR.null][_anyType JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send this jm_size_0))
        (set! _list (BasicArrayListS.jnew_1 _size))
        (set! _anyType JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _anyType (vector-ref (get-field f_objectArray this) _index))
            (send _list jm_add_1 _anyType))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _list))))
    (define/override (jm_toString_0)
    (let ([_COMMA_SEP JR.null][_stringBuffer JR.null][_index JR.null])
      (let/ec jreturn
        (set! _COMMA_SEP (get-field f_COMMA_SEP (CommonSeps.jm_getInstance_0)))
        (set! _stringBuffer (StringMaker.jnew_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (get-field f_currentIndex this))
                (let/ec jcontinue
            (send _stringBuffer jm_append_1 (JR.toString (vector-ref (get-field f_objectArray this) _index)))
            (send _stringBuffer jm_append_1 _COMMA_SEP))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (BasicArrayList.jclassValue) BasicArrayList%)

(define BasicArrayList.jcell_SIZE 'jnone)
(define (BasicArrayList.jstatic_SIZE)
  (when (eq? BasicArrayList.jcell_SIZE 'jnone) (set! BasicArrayList.jcell_SIZE ", Size: "))
  BasicArrayList.jcell_SIZE)
(define (BasicArrayList.jsetstatic_SIZE value) (set! BasicArrayList.jcell_SIZE value))

(define (BasicArrayList.jnew_1 _objectArray)
  (define this (new BasicArrayList% [jclass "BasicArrayList"]))
    (set-field! f_arrayUtil this (ArrayUtil.jm_getInstance_0))
    
    (set-field! f_currentIndex this 0)
    (let ()
      (let/ec jreturn
        (set-field! f_objectArray this _objectArray)))
  this)



