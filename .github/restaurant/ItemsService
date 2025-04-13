package com.likelion.restaurant_assignment.item.application;

import com.likelion.restaurant_assignment.item.domain.Item;
import com.likelion.restaurant_assignment.item.domain.ItemRepository;
import com.likelion.restaurant_assignment.item.api.dto.ItemDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ItemService {

    private final ItemRepository itemRepository;

    private static Long sequence = 0L;

    public void saveItem(ItemDto requestDto) {
        Item item = Item.builder()
                .id(++sequence)
                .menu(requestDto.menu())
                .num(requestDto.num())
                .build();

        itemRepository.save(item);
    }

    public ItemDto findItemById(Long id) {
        Item item = itemRepository.findById(id);
        if (item == null) {
            throw new IllegalArgumentException("해당하는 물건이 없습니다. id = " + id);
        }
        return toDto(item);
    }

    public List<ItemDto> findAllItems() {
        return itemRepository.findAll().stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }

    public Item updateItemById(Long id, ItemDto requestDto) {
        Item item = itemRepository.findById(id);
        if (item == null) {
            throw new IllegalArgumentException("해당하는 물건이 없습니다. id = " + id);
        }

        item.update(requestDto.menu(), requestDto.num());
        itemRepository.updateById(id, item);
        return item;
    }

    public void deleteItemById(Long id) {
        itemRepository.deleteById(id);
    }

    private ItemDto toDto(Item item) {
        return ItemDto.builder()
                .id(item.getId())
                .menu(item.getMenu())
                .num(item.getTable_num())
                .build();
    }
}