FROM techempower/haskell:0.1

COPY ./bench ./

RUN stack --allow-different-user build --install-ghc

CMD stack --allow-different-user exec snap-bench -- +RTS -A4M -N -qg2 -I0 -G2
