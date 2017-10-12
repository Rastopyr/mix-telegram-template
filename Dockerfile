FROM nebo15/alpine-elixir:latest

ENV HOME=/{{MODULE_NAME}}

CMD ["mix"]
