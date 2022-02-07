package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.MysqlConnection;
import model.Destinos;

public class DestinosDAO implements DestinosCRUD {

	private static Connection connection = MysqlConnection.createConnection();
	private static String sql;

	public static void create(Destinos destino) {
		sql = "INSERT INTO destinos VALUES(null, ?, ?, ?)";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
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
		sql = "DELETE FROM destinos WHERE idDestinos = ?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, destinoId);
			preparedStatement.executeUpdate();

			System.out.println("--correct delete on destino");

		} catch (SQLException e) {
			System.out.println("--incorrect delete on destino. " + e.getMessage());
		}
	};

	public static List<Destinos> find(String pesquisa) {
		sql = String.format("SELECT * FROM destinos WHERE estado like '%s%%' OR cidade LIKE '%s%%' ", pesquisa,
				pesquisa);
		List<Destinos> destinos = new ArrayList<Destinos>();

		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {

				Destinos destino = new Destinos();

				destino.setId(resultSet.getInt("idDestinos"));
				destino.setEstado(resultSet.getString("estado"));
				destino.setCidade(resultSet.getString("cidade"));
				destino.setDescricao(resultSet.getString("descricao"));

				destinos.add(destino);
			}
			System.out.println("--correct find destinos");
			return destinos;
		} catch (SQLException e) {
			System.out.println("--incorrect find destinos. " + e.getMessage());
			return null;
		}

	};

	public static Destinos findByPk(int destinoId) {
		sql = String.format("SELECT * FROM destinos WHERE idDestinos = %d ", destinoId);

		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			Destinos destino = new Destinos();

			while (resultSet.next()) {

				destino.setId(resultSet.getInt("idDestinos"));
				destino.setEstado(resultSet.getString("estado"));
				destino.setCidade(resultSet.getString("cidade"));
				destino.setDescricao(resultSet.getString("descricao"));

			}

			System.out.println("--correct find by pk destino");
			return destino;

		} catch (SQLException e) {
			System.out.println("--incorrect find by pk destino. " + e.getMessage());
			return null;
		}
	};

	public static void update(Destinos destino) {
		sql = "UPDATE destinos SET estado=?, cidade=?, descricao=? WHERE idDestinos=?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1, destino.getEstado());
			preparedStatement.setString(2, destino.getCidade());
			preparedStatement.setString(3, destino.getDescricao());

			preparedStatement.setInt(4, destino.getId());
			preparedStatement.executeUpdate();

			System.out.println("--correct update on database");
		} catch (SQLException e) {
			System.out.println("--incorrect update on database" + e.getMessage());
		}
	};
}
