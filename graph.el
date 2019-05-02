(defvar graph-symbol "*")

(defvar graph-blank " ")

(defun column-of-graph (max-graph-height actual-height)
  (let ((insert-list nil)
        (number-of-top-blanks
         (- max-graph-height actual-height)))
    
    (while (> actual-height 0)
      (setq insert-list (cons graph-symbol insert-list))
      (setq actual-height (1- actual-height)))
    
    (while (> number-of-top-blanks 0)
      (setq insert-list (cons graph-blank insert-list))
      (setq number-of-top-blanks
            (1- number-of-top-blanks)))
    
    insert-list))

(defun graph-body-print (numbers-list)
  "Pring a bar graph of the NUMBERS-LIST.
The numbers-list consists of the Y-axis values."
  (let ((height (apply 'max numbers-list))
        (symbol-width (length graph-blank))
        from-position)
    (while numbers-list
      (setq from-position (point))
      (insert-rectangle
       (column-of-graph height (car numbers-list)))
      (goto-char from-position)
      (forward-char symbol-width)
      (sit-for 0)
      (setq numbers-list (cdr numbers-list)))
    (forward-line height)
    (insert "\n")))

;(graph-body-print '(1 2 3 4 6 4 3 5 7 6 5 2 3))

(defun recursive-graph-body-print (numbers-list)
    "Print a bar graph of the NUMBERS-LIST.
The numbers-list consists of the Y-axis values."
    (let ((height (apply 'max numbers-list))
          (symbol-width (length graph-blank))
          from-position)
      (recursive-graph-body-print-internal
       numbers-list
       height
       symbol-width)))

(defun recursive-graph-body-print-internal
    (numbers-list height symbol-width)
    "Print a bar graph.
Used within recursive-graph-body-print function."

    (if numbers-list
        (progn
          (setq from-position (point))
          (insert-rectangle
           (column-of-graph height (car numbers-list)))
          (goto-char from-position)
          (forward-char symbol-width)
          (sit-for 0)     ; 各桁ごとのグラフの描写
          (recursive-graph-body-print-internal
           (cdr numbers-list) height symbol-width))))

(recursive-graph-body-print '(3 2 5 6 7 5 3 4 6 4 3 2 1)) 
