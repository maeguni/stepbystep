package bitcamp.step.repository;

import java.util.List;

import bitcamp.step.domain.Diary;


public interface DiaryRepository {

    List<Diary> findByMemberNo(int no);
        
    
    
    
}
