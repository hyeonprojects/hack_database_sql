# Mysql 8.0 기반으로 모티터링을 만들었습니다.

# 쿼리 성능 측정

## 쿼리 성능 로깅이 옵션이 켜져있는지 확인
SELECT @@profiling;

## 쿼리 프로파일링 활성화 (비활성화는 0)
SET profiling = 1;

## 쿼리 프로파일링 로그 갯수 설정
SET PROFILING_HISTORY_SIZE = 30;

## 성능 측정 쿼리
SELECT *
FROM gogi;


## 성능 측정 전체 리스트
SHOW profiles;

## 성능 쿼리 하나 자세히 보기 (리스트에서 값을 가져와서 뒤에 넣어줘야함)
SHOW profile CPU FOR QUERY 14;


# 프로세스 리스트 보기 및 죽이기

## 프로세스 리스트
SHOW PROCESSLIST;

## 프로세스 리스트
SHOW FULL PROCESSLIST;

## 프로세스 죽이기
KILL 12;

# 최대 접속 가능한 수 (max_connection 확인)
SHOW VARIABLES LIKE '%max_connection%';

# 현재 접속자수 Thread (Threads_connected)
SHOW STATUS LIKE 'Treads_connected';

