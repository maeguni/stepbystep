package bitcamp.step.repository;

import java.util.Map;

import bitcamp.step.domain.Member;

public interface MemberRepository {

    int insert(Member member);
    Member findByIdAndPassword(Map<String,Object>params);
}
