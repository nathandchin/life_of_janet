(def- alive "$")
(def- dead ".")

(defn- list-conv
  [xs]
  (map |(scan-number $) xs))

(defn- line-split
  [s]
  (string/split " " s))

(defn parse
  [filename]
  (->> (slurp filename)
    (string/replace-all "\r" "")
    (string/replace-all alive "1")
    (string/replace-all dead "0")
    (string/split "\n")
    (map line-split)
    (map list-conv)))
