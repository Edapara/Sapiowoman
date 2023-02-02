SalesforceDevoleper favori = new SalesforceDevoleper();
favori.myFirstCode();

SalesforceDevoleper objcO1 = new SalesforceDevoleper();
objcO1.myLife();



Datetime dogumTarihim = Datetime.newInstance(1986, 5, 23, 10, 00, 00);
system.debug(' Benim dogum tarihim:' + dogumTarihim);

Integer dGun = dogumTarihim.day();
Integer dAyim = dogumTarihim.month();
Integer dYilim = dogumTarihim.year();
Integer toplamD = dGun + dAyim + dYilim;
system.debug('23 + 5 + 1986 =' + toplamD);

date bugunTarih = date.newInstance(2023, 1, 14);
System.debug('Bugunun tarihi ' + bugunTarih);

date mariaCurie = date.newInstance(1867, 11, 7);
system.debug('Maria Curien nin dogum tarihi' + mariaCurie);

Integer kadinYil = mariaCurie.year();
Integer bugunYil = bugunTarih.year();
Integer aradaFark = bugunYil - kadinYil;
system.debug('Marie Curie nin dogum tarihi ve bugunun tarihi arasindaki fark:' + aradaFark);

Integer ayArasi = mariaCurie.monthsBetween(bugunTarih);
