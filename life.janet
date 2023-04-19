(defn- alive-next?
  [current neighbors]
  (cond
    (and current (= 2 neighbors)) true
    (and current (= 3 neighbors)) true
    (and (not current) (= 3 neighbors)) true
    false))

(defn- nil-to-int
  [x]
  (if x
    x
    0))

(defn- bool-to-int
  [x]
  (if x
    1
    0))

(defn- get-neighbors
  [board r c]
  (var res 0)
  (+= res (nil-to-int (get-in board [(dec r) (dec c)] )))
  (+= res (nil-to-int (get-in board [(dec r)      c ] )))
  (+= res (nil-to-int (get-in board [(dec r) (inc c)] )))
  (+= res (nil-to-int (get-in board [r       (dec c)] )))
  (+= res (nil-to-int (get-in board [r       (inc c)] )))
  (+= res (nil-to-int (get-in board [(inc r) (dec c)] )))
  (+= res (nil-to-int (get-in board [(inc r)      c ] )))
  (+= res (nil-to-int (get-in board [(inc r) (inc c)] )))
  res)

(defn advance
  [board]
  (var copy (slice board))
  (array/clear board)
  (for i 0 (length copy)
    (array/push board (array/new-filled (length (first copy)) 0)))
  (for r 0 (length board)
    (for c 0 (length (first board))
      (put-in
        board
        [r c]
        (bool-to-int
          (alive-next?
            (= 1 (get-in copy [r c]))
            (get-neighbors copy r c)))))))

(defn- print-board
  [board]
  (for r 0 (length board)
    (for c 0 (length (first board))
      (prin (if (= 1 (get-in board [r c])) "O" "-")))
    (print))
  (print))

(defn play-terminal
  [board speed]
  (let [delay-time (/ 1 speed)]
    (forever
      (print-board board)
      (advance board)
      (os/sleep delay-time))))
