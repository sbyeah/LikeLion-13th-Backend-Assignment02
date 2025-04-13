package com.likelion.restaurant_assignment.item.api.dto;

import com.likelion.restaurant_assignment.item.application.ItemService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class ItemController {

    private final ItemService itemService;

    @PostMapping("items")
    public void save(@RequestBody ItemDto itemDto) {
        itemService.saveItem(itemDto);
    }

    @GetMapping("items/{id}")
    public ItemDto findItemById(@PathVariable Long id) {
        return itemService.findItemById(id);
    }

    @GetMapping("items")
    public List<ItemDto> findAllItem() {
        return itemService.findAllItems();
    }

    @PatchMapping("items/{id}")
    public void updateItemById(@PathVariable Long id, @RequestBody ItemDto itemDto) {
        itemService.updateItemById(id, itemDto);
    }

    @DeleteMapping("items/{id}")
    public void deleteItemById(@PathVariable Long id) {
        itemService.deleteItemById(id);
    }

}
