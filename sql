select * from dual;

select round(1234.5678),
      trunc(1234.5678),
      round(1234.5678, 1),
      trunc(1234.5678, 1),
      trunc(1234.5678, -1),
      round(1234.5678, -1) from dual;

      select sysdate 오늘, sysdate-1 어제, sysdate+1 내일 from dual;
      
      select add_months(날짜형식, 몇 개월 후)
      select add_months(sysdate, 6) 육개월후 from dual;
      
      select months_between(sysdate, '2024-12-12'),
              months_between('2024-12-12', sysdate) from dual;
              
      select trunc(months_between(sysdate, '2005-02-07'))/12 AS 만나이 from dual;
      
      select sysdate,
      trunc(sysdate, 'cc'),
      trunc(sysdate, 'hh'),
      trunc(sysdate, 'yyy') from dual;
      
      to_char(대상 데이터, 변환을 원하는 포맷형식)
      select sysdate,
              to_char(sysdate, 'cc') cc,
               to_char(sysdate, 'yyyy') yyyy,
                  to_char(sysdate, 'yy') yy,
                   to_char(sysdate, 'mm') mm,
                    to_char(sysdate, 'mon') mon,
                     to_char(sysdate, 'month') month,
                      to_char(sysdate, 'dd') dd,
                       to_char(sysdate, 'ddd') ddd,
                        to_char(sysdate, 'dy') dy,
                         to_char(sysdate, 'day') day,
                          to_char(sysdate, 'w') w from dual;
              
select to_char(sysdate, 'w')몇번째요일,
      to_char(sysdate, 'ww') 일년중 몇번째주 from dual;
                          
   select to_char(sysdate, 'hh24:mi:ss'),
         to_char(sysdate, 'hh12:mi:ss am'),
         to_char(sysdate, 'hh:mi:ss p.m.') from dual;
         
substr(추출할 원본 데이터, 시작위치, 추출할 문자 개수)

select substr(to_char(sysdate, 'hh24:mi:ss'),1,2) || '시' from dual;
