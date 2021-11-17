FROM prachandabhanu/build_env:ros2-cuda

COPY ./entrypoint.sh /
RUN chmod a+rwx entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
