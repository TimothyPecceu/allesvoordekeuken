package be.vdab.services;

import java.math.BigDecimal;
import java.util.List;

import be.vdab.dao.ArtikelDAO;
import be.vdab.entities.Artikel;

public class ArtikelService {

	private final ArtikelDAO artikelDAO = new ArtikelDAO();

	public Artikel read(long id) {
		return artikelDAO.read(id);
	}

	public void create(Artikel artikel) {
		artikelDAO.beginTransaction();
		artikelDAO.create(artikel);
		artikelDAO.commit();
	}

	public List<Artikel> findByNameContains(String woord) {
		return artikelDAO.findByNameContains(woord);
	}

	public void prijsverhoging(BigDecimal percentage) {
		BigDecimal factor = BigDecimal.ONE.add(percentage.divide(BigDecimal.valueOf(100)));
		artikelDAO.beginTransaction();
		artikelDAO.prijsverhoging(factor);
		artikelDAO.commit();
	}

	public List<Artikel> findAll() {
		return artikelDAO.findAll();
	}

	public List<Artikel> findAllMetArtikelgroep() {
		return artikelDAO.findAllMetArtikelGroep();
	}
}
