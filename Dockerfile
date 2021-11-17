FROM prachandabhanu/build_env:galactic-cuda

COPY ./entrypoint.sh /
RUN chmod a+rwx entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
