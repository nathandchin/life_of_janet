(use jaylib)
(import /life)

(defn play-draw
  [board speed scale]
  (def frame-delay (/ 1 speed))

  (init-window (* (length (first board)) scale) (* (length board) scale) "Test Game")
  (set-target-fps 60)
  (hide-cursor)

  (while (not (window-should-close))
    (begin-drawing)

    (clear-background [0 0 0])

    (for r 0 (length board)
      (for c 0 (length (first board))
        (let [val (get-in board [r c])
              x (* c scale)
              y (* r scale)]
          (if (= val 1)
            (draw-rectangle x y scale scale :ray-white)))))
    (life/advance board)
    (os/sleep frame-delay)


    (end-drawing))
  (close-window))
