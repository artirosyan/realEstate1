package am.realestate.realestate.model;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Home {

    private int id;
    private String addres;
    private int rooms;
    private int price;
    private String description;
    private int phoneNumber;
    private String picUrl;
    private User user;

}
