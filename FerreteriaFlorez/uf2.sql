-- MySQL Script generated by MySQL Workbench
-- Wed Jun 21 10:18:28 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering


-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Docente`
-- -----------------------------------------------------
CREATE TABLE  Docente(
  `dniDocente` VARCHAR(10) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` VARCHAR(45) COLLATE utf8_spanish_ci NOT NULL,
  `lugar` VARCHAR(45) COLLATE utf8_spanish_ci NOT NULL,
  `ap_paterno` VARCHAR(45) COLLATE utf8_spanish_ci NOT NULL,
  `ap_materno` VARCHAR(45) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` VARCHAR(45) COLLATE utf8_spanish_ci NOT NULL,
  `cuenta_bancaria` VARCHAR(45) COLLATE utf8_spanish_ci NOT NULL,
  `cod_modular` VARCHAR(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`dniDocente`))
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `mydb`.`Establecimiento`
-- -----------------------------------------------------
CREATE TABLE Establecimiento(
  `idEstablecimiento` INT OLLATE utf8_spanish_ci NOT NULL,
  `cod_establecimiento` VARCHAR(45) OLLATE utf8_spanish_ci NOT NULL,
  `nom_establecimiento` VARCHAR(45) OLLATE utf8_spanish_ci NOT NULL,
  `dniDocente_td` VARCHAR(10) OLLATE utf8_spanish_ci NOT NULL,
  `Docente_dniDocente` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idEstablecimiento`, `Docente_dniDocente`),
  INDEX `fk_Establecimiento_Docente_idx` (`Docente_dniDocente` ASC),
  CONSTRAINT `fk_Establecimiento_Docente`
    FOREIGN KEY (`Docente_dniDocente`)
    REFERENCES `mydb`.`Docente` (`dniDocente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `mydb`.`Haberes`
-- -----------------------------------------------------
CREATE TABLE Haberes(
  `idHaberes` INT NOT NULL,
  `sueldo_basico` VARCHAR(45) NULL,
  `bonif_personal` VARCHAR(45) NULL,
  `tp_home_f` VARCHAR(45) NULL,
  `tp_humol` VARCHAR(45) NULL,
  `diferencia` VARCHAR(45) NULL,
  `familiar` VARCHAR(45) NULL,
  `ref_mov` VARCHAR(45) NULL,
  `encargo` VARCHAR(45) NULL,
  `contrato` VARCHAR(45) NULL,
  `bon_dir` VARCHAR(45) NULL,
  `ds_021` VARCHAR(45) NULL,
  `aguinaldo` VARCHAR(45) NULL,
  `b_especifico` VARCHAR(45) NULL,
  `reunific` VARCHAR(45) NULL,
  `igv` VARCHAR(45) NULL,
  `cts_ca` VARCHAR(45) NULL,
  `25671_19` VARCHAR(45) NULL,
  `pr_ju_co` VARCHAR(45) NULL,
  `palma_ju` VARCHAR(45) NULL,
  `g_utls_b` VARCHAR(45) NULL,
  `l_26504` VARCHAR(45) NULL,
  `c_deveng` VARCHAR(45) NULL,
  `dl_25897` VARCHAR(45) NULL,
  `palmas` VARCHAR(45) NULL,
  `direc` VARCHAR(45) NULL,
  `du_90_96` VARCHAR(45) NULL,
  `du_73_97` VARCHAR(45) NULL,
  `du_11_99` VARCHAR(45) NULL,
  `palmas_m` VARCHAR(45) NULL,
  `du_105_01` VARCHAR(45) NULL,
  `dni_Docente_h` VARCHAR(10) NULL,
  `Docente_dniDocente` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idHaberes`, `Docente_dniDocente`),
    FOREIGN KEY (`Docente_dniDocente`)
    REFERENCES `Docente` (`dniDocente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `mydb`.`Descuentos`
-- -----------------------------------------------------
CREATE TABLE Descuentos (
  `idDescuentos` INT NOT NULL,
  `20530` VARCHAR(45) NULL,
  `onp_19990` VARCHAR(45) NULL,
  `ipssvida` VARCHAR(45) NULL,
  `d_admin` VARCHAR(45) NULL,
  `d_magis` VARCHAR(45) NULL,
  `cap_yup` VARCHAR(45) NULL,
  `judicial` VARCHAR(45) NULL,
  `dl_25897` VARCHAR(45) NULL,
  `zapateria` VARCHAR(45) NULL,
  `responsa` VARCHAR(45) NULL,
  `sesdis` VARCHAR(45) NULL,
  `bazares` VARCHAR(45) NULL,
  `multas` VARCHAR(45) NULL,
  `b_mater` VARCHAR(45) NULL,
  `derese` VARCHAR(45) NULL,
  `sub_cafae` VARCHAR(45) NULL,
  `varios` VARCHAR(45) NULL,
  `dea` VARCHAR(45) NULL,
  `sanpedro` VARCHAR(45) NULL,
  `ancue` VARCHAR(45) NULL,
  `sutage` VARCHAR(45) NULL,
  `rimac_seg` VARCHAR(45) NULL,
  `editorial` VARCHAR(45) NULL,
  `aceade` VARCHAR(45) NULL,
  `cafaecu` VARCHAR(45) NULL,
  `c_mun_a` VARCHAR(45) NULL,
  `credinka` VARCHAR(45) NULL,
  `c_municipal_cusco` VARCHAR(45) NULL,
  `reintegro` VARCHAR(45) NULL,
  `p_p_indebidos` VARCHAR(45) NULL,
  `dni_Docente_d` VARCHAR(10) NULL,
  `Docente_dniDocente` VARCHAR(10) NOT NULL,

  CONSTRAINT `fk_Descuentos_Docente1`
    FOREIGN KEY (`Docente_dniDocente`)
    REFERENCES `mydb`.`Docente` (`dniDocente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE Usuario(
  `idUsuario` INT NOT NULL,
  `nombre_Usuario` VARCHAR(45) NULL,
  `password_Usuario` VARCHAR(45) NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

