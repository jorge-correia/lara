const { Sequelize, DataTypes, Model } = require ('sequelize');
require ('dotenv').config ();

const sequelize = new Sequelize ({
  dialect: 'mariadb',
  host: process.env.DB_HOST,
  username: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: 'lara_database'
});

// creating the table objects;
const relAlunoCurso = sequelize.define ('rel_aluno_curso', {
  n_matricula_aluno: {
    type: DataTypes.INTEGER (11),
    allowNull: false,
    primaryKey: true,
    references: {
      model: 'aluno',
      key: 'n_matricula'
    }
  },
  id_curso: {
    type: DataTypes.INTEGER (11),
    allowNull: false,
    primaryKey: true,
    references: {
      model: 'curso',
      key: 'id'
    }
  }
}, {
  tableName: 'rel_aluno_curso'
});

const professor = sequelize.define ('professor', {
  n_matricula: {
    type: DataTypes.INTEGER (11),
    allowNull: false,
    primaryKey: true
  },
  nome: {
    type: DataTypes.STRING (50),
    allowNull: false
  },
  email: {
    type: DataTypes.STRING (50),
    allowNull: false
  },
  senha: {
    type: DataTypes.STRING (64),
    allowNull: false
  }
}, {
  tableName: 'professor'
});
const material = sequelize.define ('material', {
  id: {
    type: DataTypes.INTEGER (11),
    allowNull: false,
    primaryKey: true
  },
  nome: {
    type: DataTypes.STRING (50),
    allowNull: false
  },
  arquivo: {
    type: "BLOB",
    allowNull: false
  },
  id_curso: {
    type: DataTypes.INTEGER (11),
    allowNull: false,
    references: {
      model: 'curso',
      key: 'id'
    }
  }
}, {
  tableName: 'material'
});

const gerente = sequelize.define ('gerente', {
  n_matricula: {
    type: DataTypes.INTEGER (11),
    allowNull: false,
    primaryKey: true
  },
  nome: {
    type: DataTypes.STRING (50),
    allowNull: false
  },
  email: {
    type: DataTypes.STRING (50),
    allowNull: false
  },
  senha: {
    type: DataTypes.STRING (64),
    allowNull: false
  }
}, {
  tableName: 'gerente'
});
const curso = sequelize.define ('curso', {
  id: {
    type: DataTypes.INTEGER (11),
    allowNull: false,
    primaryKey: true
  },
  nome: {
    type: DataTypes.STRING (50),
    allowNull: false
  },
  descricao: {
    type: "BLOB",
    allowNull: false
  },
  carga_horaria: {
    type: DataTypes.INTEGER (11),
    allowNull: false
  },
  matricula_professor: {
    type: DataTypes.INTEGER (11),
    allowNull: false,
    references: {
      model: 'professor',
      key: 'n_matricula'
    }
  }
}, {
  tableName: 'curso'
});
const aluno = sequelize.define ('aluno', {
  n_matricula: {
    type: DataTypes.INTEGER (11),
    allowNull: false,
    primaryKey: true
  },
  nome: {
    type: DataTypes.STRING (50),
    allowNull: false
  },
  email: {
    type: DataTypes.STRING (50),
    allowNull: false
  },
  senha: {
    type: DataTypes.STRING (64),
    allowNull: false
  }
}, {
  tableName: 'aluno'
});

// classes end

async function dbConn () {
  try {
    await sequelize.authenticate ();
    console.log ('Connection has been established successfully.');
    await sequelize.sync ();
    console.log ('Modules syncronized sucessfully');

    // simple example query
    const result = await professor.findAll ({
      attributes: ['nome']
    });

    console.log (result);
  }
  catch (error) {
    console.error ('Unable to connect to the database:', error);
  }
  finally {
    sequelize.close ();
  }
}


dbConn ();
