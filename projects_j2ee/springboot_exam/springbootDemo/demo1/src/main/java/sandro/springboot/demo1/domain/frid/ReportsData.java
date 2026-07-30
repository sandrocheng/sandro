package sandro.springboot.demo1.domain.frid;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReportsData {
    private int len;
    private ReportInfo[] data;

    public ReportsData(int len){
        this.len = len;
        this.data = new ReportInfo[len];
        for(int i= 0;i<len;i++){
            this.data[i] = new ReportInfo(i + 1);
        }
    }
}
