




  create table Users
  (
     Id int primary key identity(1,1),
     UserName nvarchar(64),
     Number nvarchar(64),
     UClass nvarchar(64)
  )
  
  insert Users values('貂蝉','NS001','三国')
  insert Users values('王允','NS001','三国')
  
 insert Users values('吕布','NS002','三国')
   
 insert Users values('董卓','NS002','三国')
  insert Users values('丁原','NS003','三国')
  
  
  insert Users values('诸葛亮','NS003','三国')
  
  
  insert Users values('刘备','NS004','三国')
  
    insert Users values('关羽','NS004','三国')
        insert Users values('张飞','NS005','三国')
     insert Users values('黄忠','NS007','三国')
  
  
  
  select * from Users
  
 
 declare @count int;
 set @count =1;
 while(@count<20)
 begin
      insert Users values('猪'+CAST(@count as nvarchar)+'戒','NS007','三国')
      set @count = @count+1;
 end
  
  
  
      select * from Users
     
      
  --分页 
  
  --方法1：top分页法    一页5条 
  select top 5 * from Users where Id not in (select top 15 Id from Users)

 --  between and (id不连续的时候不适用)
     select * from Users where Id between 1 and 6 
     
 -- 方法2：想办法不连续的Id变成连续的,借助行号 （row_number可以获取行号）
 
 
 select * from (
  select *,ROW_NUMBER() over(order by id) as 'rownumber' from Users
) temp  where rownumber between 11 and 15
 
 
 
     
     
     