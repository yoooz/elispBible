(+ 1 2)                                 ; => 3
'emacs-major-version                    ; => emacs-major-version
emacs-major-version                     ; => 26
(length '(+ 1 3))                       ; => 3
(symbol-value 'emacs-major-version)     ; => 26

(+ 3 6 -9)                              ; => 0

(- 3)                                   ; => -3

(/ 10 3)                                ; => 3

(% 10 3)                                ; => 1
(expt 2 8)                              ; => 256
(= 10 10)                               ; => t
(/= 10 10)                              ; => nil


(< 9 10)                                ; => t
(<= 9 10)                               ; => t
(> 9 10)                                ; => nil
(>= 9 10)                               ; => nil

1.1                                     ; => 1.1
1.0                                     ; => 1.0
1e3                                     ; => 1000.0

1.23e3                                  ; => 1230.0

(float-time)                            ; => 1556631694.7145755

"abc"                                   ; => "abc"

"
first
second"                                 ; => "\nfirst\nsecond"


(format "%s" "foo")                     ; => "foo"

(format "%d" 1)                         ; => "1"

(format "[%2d] [%-2d] [%02d]" 3 3 3)    ; => "[ 3] [3 ] [03]"

(setq a 1)                              ; => 1
(setq a 1.1)                            ; => 1.1
(setq a "string"
      b 0)                              ; => 0
a                                       ; => "string"
b                                       ; => 0

(integerp 1)                            ; => t
(floatp 1.0)                            ; => t
(numberp 1)                             ; => t
(numberp 1.0)                           ; => t
(consp '(1 2))                          ; => t
(listp '(1 2))                          ; => t
(listp nil)                             ; => t
(sequencep '(1 2))                      ; => t
(sequencep nil)                         ; => t
(sequencep "foo")                       ; => t

(setq x 1)                              ; => 1

(let ((x 2)                            
      null                             
      )                                
  x                                     ; => 2
  null                                  ; => nil
  (let ((x 3)) x)                       ; => 3
  )                                
x                                       ; => 1

(let ((x (+ 5 5))
      (y x)
      )
  x                                     ; => 10
  y                                     ; => 1
  (setq x 100)
  x                                     ; => 100
  )
x                                       ; => 1

(let* ((x (+ 5 5))
       (y x)
       )
  x                                     ; => 10
  y                                     ; => 10
  )


'(10 . "ten")                           ; => (10 . "ten")

(cons 10 "ten")                         ; => (10 . "ten")

'((+ 1 2) . 3)                          ; => ((+ 1 2) . 3)
(cons (+ 1 2) 3)                        ; => (3 . 3)

(car '(10 . "ten"))                     ; => 10
(cdr '(10 . "ten"))                     ; => "ten"
(cons 1 (cons 2 (cons 3 nil)))          ; => (1 2 3)
(list 1 2 3)                            ; => (1 2 3)
'(1 2 3)                                ; => (1 2 3)

(setq l (cons 3 nil))                   ; => (3)
(setq l (cons 2 l))                     ; => (2 3)
(setq l (cons 1 l))                     ; => (1 2 3)


(car '(1 2 3))                          ; => 1
(cdr '(1 2 3))                          ; => (2 3)

(nth 0 '(1 2 3))                        ; => 1
(nth 1 '(1 2 3))                        ; => 2
(nth 2 '(1 2 3))                        ; => 3
(nth 3 '(1 2 3))                        ; => nil

(elt '(1 2 3) 0)                        ; => 1
(elt '(1 2 3) 1)                        ; => 2
(elt '(1 2 3) 2)                        ; => 3
(elt '(1 2 3) 3)                        ; => nil

(null ())                               ; => t
(null nil)                              ; => t
(null '(nil))                           ; => nil

(consp nil)                             ; => nil
(consp '(1 . 2 ))                       ; => t
(consp '(1 2))                          ; => t

(listp nil)                             ; => t
(listp '(1 . 2))                        ; => t
(listp '(1 2))                          ; => t

(atom nil)                              ; => t
(atom '(1 . 2))                         ; => nil
(atom '(1 2))                           ; => nil
(atom 1)                                ; => t
(atom "foo")                            ; => t
(atom 'bar)                             ; => t

(symbolp nil)                           ; => t
(symbolp 'bar)                          ; => t


[(+ 1 1 ) 2]                            ; => [(+ 1 1) 2]

(vector (+ 1 1) 2)                      ; => [2 2]

(aref [3 6 9] 1)                        ; => 6
(elt [3 6 9] 1)                         ; => 6

(setq v [3 6 9])                        ; => [3 6 9]
(aset v 2 999)                          ; => 999
v                                       ; => [3 6 999]

(setq s "abracadabra")                  ; => "abracadabra"
(aref s 1)                              ; => 98
?b                                      ; => 98
(aset s 0 ?A)                           ; => 65
s                                       ; => "Abracadabra"

;; 同値比較
(equal 1 1)                             ; => t
(equal 1 2)                             ; => nil
(equal 'foo 'foo)                       ; => t
(equal ?a ?a)                           ; => t
(equal 1.0 1.0)                         ; => t
(equal "s" "s")                         ; => t
(equal '(1 . 2) '(1 . 2))               ; => t
(equal '(1 (2)) '(1 (2)))               ; => t
(equal [3] [3])                         ; => t
(setq obj '(1 (2)))                     ; => (1 (2))
(equal obj obj)                         ; => t
(setq obj2 obj)                         ; => (1 (2))
(eq obj obj2)                           ; => t

;; 同一比較
(eq 1 1)                                ; => t
(eq 1 2)                                ; => nil
(eq 'foo 'foo)                          ; => t
(eq ?a ?a)                              ; => t
(eq 1.0 1.0)                            ; => nil
(eq "s" "s")                            ; => nil
(eq '(1 . 2) '(1 . 2))                  ; => nil
(eq '(1 (2)) '(1 (2)))                  ; => nil
(eq [3] [3])                            ; => nil
(setq obj '(1 (2)))                     ; => (1 (2))
(eq obj obj)                            ; => t
(setq obj2 obj)                         ; => (1 (2))
(eq obj obj2)                           ; => t

;; 真偽値
(not t)                                 ; => nil
(not 0)                                 ; => nil
(not nil)                               ; => t

;; 条件分岐
;;; when 
(let (msg)
  (when (= 0 (% 6 2))
    (setq msg "6は偶数です"))
  msg)                                  ; => "6は偶数です"
(let (msg)
  (when (= 1 (% 6 2))
    (setq msg "6は奇数です"))
  msg)
                                        ; => nil
;;; unless
(let (msg)
  (unless (= 1 (% 6 2))
    (setq msg "6は奇数ではありません"))
  msg)                                  ; => "6は奇数ではありません"

;;; if
(if (zerop (% 7 2))
    "偶数"
  "奇数")                               ; => "奇数"

(if (zerop (% 7 2))
    "偶数")                             ; => nil

(if (zerop (% 10 4))
    "10は4の倍数"
  (if (zerop (% 10 2))
      "偶数"
    "奇数"))                            ; => "偶数"

;;; progn
(progn
  1
  2)                                    ; => 2

(prog1
    1
  2)                                    ; => 1

(prog2
    1
    2
  3)                                    ; => 2

(let (a b)
  (if (= 1 1)
      (progn
        (setq a 2)
        (setq b 3))
    (setq a 10)
    (setq b 20))
  (list a b))                           ; => (2 3)

(let (a b)
  (cond ((= 1 1)
         (setq a 2)
         (setq b 3))
        (t
         (setq a 10)
         (setq b 20)))
  (list a b))                           ; => (2 3)

(if (zerop (% 10 4))
    "10は4の倍数"
  (if (zerop (% 10 2))
      "偶数"
    "奇数"))                            ; => "偶数"

(cond ((zerop (% 10 4))
       "10は4の倍数")
      ((zerop (% 10 2))
       "偶数")
      (t
       "奇数"))                         ; => "偶数"

(and t t)                               ; => t
(and nil t)                             ; => nil
(and 1 2)                               ; => 2
(if 1 2)                                ; => 2
(and 1 2 3)                             ; => 3

(or nil nil)                            ; => nil
(or nil t)                              ; => t
(or nil 1 2)                            ; => 1

;; and not not -> not or
(and (not t) (not nil))                 ; => nil
;; or not not -> not and
(or (not t) (not nil))                  ; => t
(not (and t nil))                       ; => t

;; ループ
(let ((i 0) result)
  (while (< i 10)
    (setq result (cons i result))
    (setq i (1+ i)))
  result)                               ; => (9 8 7 6 5 4 3 2 1 0)

(let ((lst '(1 2 3)) result)
  (while (car lst)
    (setq result (cons (car lst) result))
    (setq lst (cdr lst)))
  result)                               ; => (3 2 1)

(let ((lst '(1 2 3)) result)
  (while (car lst)
    (setq result (cons (car lst) result))
    (setq lst (cdr lst)))
  (cons 'finished result))              ; => (finished 3 2 1)

(let (result)
  (dolist (x '(1 2 3))
    (setq result (cons x result)))
  (cons 'finished result))              ; => (finished 3 2 1)

(let (result)
  (dolist (x '(1 2 3) (cons 'finished result))
    (setq result (cons x result))))     ; => (finished 3 2 1)

;;; regexp
(string-match ".x" "ax")                ; => 0
(string-match ".x" "testx")             ; => 3
(string-match "[ab]1" "a1")             ; => 0
(string-match "[ab]1" "b1")             ; => 0
(string-match "[ab]1" "(a1)")           ; => 1
(string-match "[a-z]" "1x2")            ; => 1
(string-match "^ab$" "ab")              ; => 0
(string-match "^ab$" "foo\nab\n")       ; => 4
(string-match "\\`ab\\'" "ab")          ; => 0
(string-match "\\(foo\\|bar\\)" "foo")  ; => 0
(string-match "\\(foo\\|bar\\)" "bar")  ; => 0
(string-match "\\bfoo\\b" "foo bar")    ; => 0
(string-match "\\Bcat\\b" "concat")     ; => 3
(string-match "\\(.\\|\n\\)+" "anything") ; => 0

(let ((case-fold-search t))
  (string-match "foo" "FOO"))           ; => 0
(let ((case-fold-search nil))
  (string-match "foo" "FOO"))           ; => nil

(let ((s "(77)I love emacs"))
  (when (string-match "^(\\([0-9]+\\))I love \\(.+\\)$" s)
    (match-string 0 s)                  ; => "(77)I love emacs"
    (match-string 1 s)                  ; => "77"
    (match-string 2 s)                  ; => "emacs"
    (match-string 3 s)                  ; => nil
    ))

(let ((s "(foo) (bar)"))
  (string-match "(\\(.+\\))" s)
  (match-string 1 s)                    ; => "foo) (bar"
  (string-match "(\\(.+?\\))" s)
  (match-string 1 s)                    ; => "foo"
  )

;;; function
(defun bmi (height weight)
  (/ weight height height))

(defun bmi-string (height weight)
  (format "身長%.2fm 体重%.1fkg BMI%.1f" height weight (bmi height weight)))

(bmi 1.63 60)                           ; => 22.582709172343712
(bmi-string 1.63 60)                    ; => "身長1.63m 体重60.0kg BMI22.6"

(defun bmi-fat-p (height weight)
  "肥満ならばtを返す"
  (<= 25 (bmi height weight)))

(bmi-fat-p 1.63 70.0)                   ; => t
(bmi-fat-p 1.63 60.0)                   ; => nil

;;; bとcは省略可能
(defun optional-arg (a &optional b c)
  (setq c (or c 20))
  (list a b c))

(optional-arg 1)                        ; => (1 nil 20)
(optional-arg 1 2)                      ; => (1 2 20)
(optional-arg 1 2 3)                    ; => (1 2 3)

;;; cは可変長引数
(defun rest-arg(a &optional b &rest c)
  (list a b c))

(rest-arg 1)                            ; => (1 nil nil)
(rest-arg 1 2)                          ; => (1 2 nil)
(rest-arg 1 2 3)                        ; => (1 2 (3))
(rest-arg 1 2 3 4)                      ; => (1 2 (3 4))

(defun hello-world()
  (interactive)
  (message "%s" "Hello, world"))

(setq l '(1))                           ; => (1)
(add-to-list 'l 2)                      ; => (2 1)
l                                       ; => (2 1)
(add-to-list 'l 2)                      ; => (2 1)
(setq l (cons 2 l))                     ; => (2 2 1)


