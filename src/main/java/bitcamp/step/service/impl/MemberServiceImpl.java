package bitcamp.step.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bitcamp.step.domain.Member;
import bitcamp.step.repository.MemberRepository;
import bitcamp.step.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
    
    @Autowired MemberRepository memberRepository;

    @Override
    public int add(Member member) {
         return memberRepository.insert(member);
    }

    @Override
    public Member getMember(String id, String password) {
       HashMap<String,Object> params = new HashMap<>();
       params.put("id",id);
       params.put("password",password);
       
        return  memberRepository.findByIdAndPassword(params);
    }
    
   
    

}
