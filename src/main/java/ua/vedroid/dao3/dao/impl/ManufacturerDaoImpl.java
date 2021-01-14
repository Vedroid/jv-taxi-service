package ua.vedroid.dao3.dao.impl;

import java.util.List;
import java.util.Optional;
import ua.vedroid.dao3.dao.ManufacturerDao;
import ua.vedroid.dao3.db.Storage;
import ua.vedroid.dao3.model.Manufacturer;

public class ManufacturerDaoImpl implements ManufacturerDao {
    @Override
    public Manufacturer create(Manufacturer manufacturer) {
        return Storage.addManufacturer(manufacturer);
    }

    @Override
    public Optional<Manufacturer> getById(Long manufacturerId) {
        return Storage.manufacturers.stream()
                .filter(m -> m.getId().equals(manufacturerId))
                .findFirst();
    }

    @Override
    public List<Manufacturer> getAll() {
        return Storage.manufacturers;
    }

    @Override
    public Manufacturer update(Manufacturer manufacturer) {
        int index = Storage.manufacturers.indexOf(getById(manufacturer.getId()).get());
        return Storage.manufacturers.set(index, manufacturer);
    }

    @Override
    public boolean deleteById(Long manufacturerId) {
        return Storage.manufacturers.removeIf(m -> m.getId().equals(manufacturerId));
    }
}