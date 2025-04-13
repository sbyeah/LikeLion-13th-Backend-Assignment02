package com.likelion.restaurant_assignment.item.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Item {

    private Long id; // 고객의 고유 id
    private String menu; // 주문 메뉴 이름
    private Long table_num; // 테이블 번호

    @Builder
    public Item(Long id, String menu, Long num) {
        this.id = id;
        this.menu = menu;
        this.table_num = num;
    }


    public void update(String menu, Long num) {
        this.menu = menu;
        this.table_num = num;
    }
}