package demo.springboot.springdoc.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "MyApi接口集合", description = "返回测试接口")
@RestController()
public class MyApiController {
    @Operation(summary = "hello接口", description = "返回一个 success 字符串")
    @GetMapping("/hello")
    public String createUser() {
        return "success";
    }
}
