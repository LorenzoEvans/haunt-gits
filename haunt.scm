(use-modules (haunt asset)
             (haunt site)
             (haunt builder blog)
             (haunt builder atom)
             (haunt reader skribe))

(site #:title "My First Haunt"
      #:domain "hauntblog.com"
      #:default-metadata
      '((author . "Eva Luator")
        (email . "eva@example.com"))
      #:readers (list skribe-reader)
      #:builders (list (blog)
                       (atom-feed)
                       (atom-feeds-by-tag)))
