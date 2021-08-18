package am.realestate.realestate.manager;


import am.realestate.realestate.db.DBConnectionProvider;
import am.realestate.realestate.model.Home;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HomeManager {

    private Connection connection = DBConnectionProvider.getProvider().getConnection();
    private UserManager userManager = new UserManager();


    public void addHome(Home home) {
        try {
            String query = "INSERT INTO `home` (`addres`,`rooms`,`price`,`description`, `phone_number`,`pic_url`, `user_id`) " +
                    "VALUES(?,?,?,?,?,?,?);";
            PreparedStatement pStatement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            pStatement.setString(1, home.getAddres());
            pStatement.setInt(2, home.getRooms());
            pStatement.setInt(3, home.getPrice());
            pStatement.setString(4, home.getDescription());
            pStatement.setInt(5, home.getPhoneNumber());
            pStatement.setString(6, home.getPicUrl());
            pStatement.setInt(7, home.getUser().getId());
            System.out.println(query);
            pStatement.executeUpdate();
            ResultSet generatedKeys = pStatement.getGeneratedKeys();
            if (generatedKeys.next()) {
                int id = generatedKeys.getInt(1);
                home.setId(id);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void updateHome(Home home) {
        try {
            Statement statement = connection.createStatement();
            String query = String.format("UPDATE home SET addres = '%s', rooms= '%s', price ='%s',  description='%s',  phone_number='%s', pic_url='%s' WHERE id=" + home.getId(),
                    home.getAddres(), home.getRooms(), home.getPrice(), home.getDescription(), home.getPhoneNumber(), home.getPicUrl());
            System.out.println(query);
            statement.executeUpdate(query);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public List<Home> getHome() {
        String sql = "SELECT * from home";
        List<Home> result = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                Home home = Home.builder()
                        .id(resultSet.getInt(1))
                        .addres(resultSet.getString(2))
                        .rooms(resultSet.getInt(3))
                        .price(resultSet.getInt(4))
                        .description(resultSet.getString(5))
                        .phoneNumber(resultSet.getInt(6))
                        .picUrl(resultSet.getString(7))
                        .user(userManager.getUserById(resultSet.getInt(8)))
                        .build();
                result.add(home);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return result;
    }

    public Home getHomeById(int id) {
        String sql = "SELECT * FROM home WHERE id=" + id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            if (resultSet.next()) {
                return Home.builder()
                        .id(resultSet.getInt(1))
                        .addres(resultSet.getString(2))
                        .rooms(resultSet.getInt(3))
                        .price(resultSet.getInt(4))
                        .description(resultSet.getString(5))
                        .phoneNumber(resultSet.getInt(6))
                        .picUrl(resultSet.getString(7))
                        .user(userManager.getUserById(resultSet.getInt(8)))
                        .build();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public void deleteHome(int id) {
        String sql = "DELETE from home where id = " + id;
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}