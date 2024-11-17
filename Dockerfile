# 사용 docker file
FROM amazoncorretto:17

# 빌드시 아래 환경변수 사용
ARG DB_URL
ARG DB_PORT
ARG DB_USERNAME
ARG DB_PASSWORD
ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG S3_BUCKET_NAME
ARG JWT_SECRET_KEY
ARG MAIL_USERNAME
ARG MAIL_APP_PASSWORD

# 컨테이너에서 사용할 환경변수 지정
ENV DB_URL=${DB_URL}
ENV DB_PORT=${DB_PORT}
ENV DB_USERNAME=${DB_USERNAME}
ENV DB_PASSWORD=${DB_PASSWORD}
ENV AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
ENV AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}
ENV S3_BUCKET_NAME=${S3_BUCKET_NAME}
ENV JWT_SECRET_KEY=${JWT_SECRET_KEY}
ENV MAIL_USERNAME = ${MAIL_USERNAME}
ENV MAIL_APP_PASSWORD = ${MAIL_APP_PASSWORD}

# JAR파일을 container로 복사
COPY build/libs/jongGangHaejo-0.0.1-SNAPSHOT.jar /app/jongGangHaejo.jar

# 포트지정
EXPOSE 8080

# 아래 명령어와 함께 실행
CMD ["java", "-jar", "/app/jongGangHaejo.jar"]
