FROM alpine


LABEL com.github.actions.name="Push Release"
LABEL com.github.action.description="create a Release"
LABEL com.github.actions.icon="gift"
LABEL com.github.actions.color="blue"


RUN apk add --no-cache \
            bash httpie jq && which bash && which http && which jq


COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]