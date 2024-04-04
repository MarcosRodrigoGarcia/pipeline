FROM rust:1.61-buster as test
RUN curl -LsSf https://get.nexte.st/latest/linux | tar zxf - -C ${CARGO_HOME:-~/.cargo}/bin
WORKDIR /app
RUN mkdir ./.config && echo '[profile.ci.junit]\n\
path = "testresults.xml"\n'\
          >> ./.config/nextest.toml
COPY Cargo.toml .
COPY src/ ./src
RUN cargo nextest run --profile ci