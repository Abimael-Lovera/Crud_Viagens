package dao;

import java.util.List;

import model.Destinos;

public interface DestinosCRUD {
	public static void create(Destinos destino) {};
	public static void delete(int destinoId) {};
	public static List<Destinos> find(String pesquisa) {return null;};
	public static Destinos findByPk(int destinoId) {return null;};
	public static void update (Destinos destino) {};
}
