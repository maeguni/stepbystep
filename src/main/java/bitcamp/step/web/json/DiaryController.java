package bitcamp.step.web.json;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import bitcamp.step.domain.Diary;
import bitcamp.step.domain.Member;
import bitcamp.step.service.DiaryServise;

@RestController
@RequestMapping("/diary")
public class DiaryController {

    DiaryServise diaryService;
    
    public DiaryController(DiaryServise diaryService) {
        
        this.diaryService = diaryService;
        
    }
    
    @GetMapping("list")
    public Object list(HttpSession session) {   
        
        Member loginUser = (Member)session.getAttribute("loginUser");
        
        List<Diary> list = diaryService.list(loginUser.getNo());
        HashMap<String ,Object> result = new HashMap<>();
        result.put("status", "success");
        result.put("list", list);
        System.out.println(list.toString());
        return result;
        
    }
    
    
      
    

}
