package bitcamp.step.service;

import bitcamp.step.domain.Member;

public interface MemberService {

    int add(Member member);

    Member getMember(String id, String password);

}
