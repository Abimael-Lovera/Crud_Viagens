package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import db.MysqlConnection;
import model.Destinos;

public class DestinosDAO implements DestinosCRUD {
	
	private static Connection connection = MysqlConnection.createConnection();
	private static String sql;
	
	public static void create(Destinos destino) {
		sql = "INSERT INTO destinos VALUES(null, ?, ?, ?)";
		try {
			PreparedStatement preparedStatement =  connection.prepareStatement(sql);
			preparedStatement.setString(1, destino.getEstado());
			preparedStatement.setString(2, destino.getCidade());
			preparedStatement.setString(3, destino.getDescricao());
			preparedStatement.executeUpdate();
			
			System.out.println("--correct insert on database");
		} catch (SQLException e) {
			System.out.println("--incorrect insert on database" + e.getMessage());
		}
	};

	public static void delete(int destinoId) {

	};

	public static List<Destinos> find(String pesquisa) {
		return null;
	};

	public static Destinos findByPk(int destinoId) {
		return null;
	};

	public static void update(Destinos destino) {

	};
}
