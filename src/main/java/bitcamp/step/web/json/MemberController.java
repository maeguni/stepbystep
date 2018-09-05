package bitcamp.step.web.json;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import bitcamp.step.domain.Member;
import bitcamp.step.service.MemberService;

@RestController
@RequestMapping("/member")
public class MemberController {

    @Autowired MemberService memberService;
 /*   @Autowired
    ServletContext sc;*/

    @PostMapping("info")
    public Object info(Member member) {

        /*
         * String newfilename = UUID.randomUUID().toString(); String path =
         * sc.getRealPath("/files/" + newfilename); try { photo.transferTo(new
         * File(path)); }catch(Exception e) { e.printStackTrace(); }
         */
        HashMap<String,Object> result = new HashMap<>();

        try {
            memberService.add(member);
            result.put("status", "success");
            /* result.put("newfilename", newfilename); */

        } catch (Exception e) {
            result.put("status", "fail");
            result.put("massge", e.getMessage());
        }

        return result;
    }

}
