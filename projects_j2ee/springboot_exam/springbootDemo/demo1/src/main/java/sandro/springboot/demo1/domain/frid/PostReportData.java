package sandro.springboot.demo1.domain.frid;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostReportData {
    private String[] ids;
    private String action;
}
