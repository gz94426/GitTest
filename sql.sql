




  create table Users
  (
     Id int primary key identity(1,1),
     UserName nvarchar(64),
     Number nvarchar(64),
     UClass nvarchar(64)
  )
  
  insert Users values('����','NS001','����')
  insert Users values('����','NS001','����')
  
 insert Users values('����','NS002','����')
   
 insert Users values('��׿','NS002','����')
  insert Users values('��ԭ','NS003','����')
  
  
  insert Users values('�����','NS003','����')
  
  
  insert Users values('����','NS004','����')
  
    insert Users values('����','NS004','����')
        insert Users values('�ŷ�','NS005','����')
     insert Users values('����','NS007','����')
  
  
  
  select * from Users
  
 
 declare @count int;
 set @count =1;
 while(@count<20)
 begin
      insert Users values('��'+CAST(@count as nvarchar)+'��','NS007','����')
      set @count = @count+1;
 end
  
  
  
      select * from Users
     
      
  --��ҳ 
  
  --����1��top��ҳ��    һҳ5�� 
  select top 5 * from Users where Id not in (select top 15 Id from Users)

 --  between and (id��������ʱ������)
     select * from Users where Id between 1 and 6 
     
 -- ����2����취��������Id���������,�����к� ��row_number���Ի�ȡ�кţ�
 
 
 select * from (
  select *,ROW_NUMBER() over(order by id) as 'rownumber' from Users
) temp  where rownumber between 11 and 15
 
 
 
     
     
     