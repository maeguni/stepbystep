package bitcamp.step.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import bitcamp.step.domain.Diary;
import bitcamp.step.repository.DiaryRepository;
import bitcamp.step.service.DiaryServise;

@Service
public class DiaryServiceImpl implements DiaryServise  {
            
    DiaryRepository diaryRepository;

    public DiaryServiceImpl(
            DiaryRepository diaryRepository) {
        this.diaryRepository = diaryRepository;
    }
    @Override
    public List<Diary> list(int no) {
        return diaryRepository.findByMemberNo(no);
    }


    
    
    
    
    
    
    
    
    
    
    
}
