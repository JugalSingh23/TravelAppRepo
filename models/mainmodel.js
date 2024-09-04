import pool from "../database.js";

export const GetTours = async () => {
  const result = await pool.query("SELECT * FROM tours");
  return result;
};

export const GetToursWithID = async (id) => {
  const result = await pool.query("SELECT * FROM tours where id=?",[id]);
  return result;
};

export const GetToursWithCat = async (cat) => {
  const result = await pool.query("SELECT * FROM tours where category=?", [
    cat,
  ]);
  return result;
};

export const InsertTour = async (
  tourname,
  category,
  startpoint,
  endpoint,
  bannerPath,
  departdate,
  duration,
  accommodations,
  meals,
  firstaid,
  description
) => {
  const result = await pool.query(
    "INSERT INTO tours (tourname,category,startpoint,endpoint,bannerpath,departdate,duration,accommodations,meals,firstaid,description) VALUES (?,?,?,?,?,?,?,?,?,?,?)",
    [
      tourname,
      category,
      startpoint,
      endpoint,
      bannerPath,
      departdate,
      duration,
      accommodations,
      meals,
      firstaid,
      description,
    ]
  );
  return result.query;
};

export const EditTour = async (
  id,
  tourname,
  category,
  startpoint,
  endpoint,
  bannerPath,
  departdate,
  duration,
  accommodations,
  meals,
  firstaid,
  description
) => {
  const result = await pool.query(
    `UPDATE tours 
         SET tourname = ?, 
             category = ?, 
             startpoint = ?, 
             endpoint = ?, 
             bannerpath = ?, 
             departdate = ?, 
             duration = ?, 
             accommodations = ?, 
             meals = ?, 
             firstaid = ?, 
             description = ? 
         WHERE id = ?`,
    [
      tourname,
      category,
      startpoint,
      endpoint,
      bannerPath,
      departdate,
      duration,
      accommodations,
      meals,
      firstaid,
      description,
      id,
    ]
  );
  return result;
};

export const EditTourNoImage = async (
    id,
    tourname,
    category,
    startpoint,
    endpoint,
    departdate,
    duration,
    accommodations,
    meals,
    firstaid,
    description
  ) => {
    const result = await pool.query(
      `UPDATE tours 
           SET tourname = ?, 
               category = ?, 
               startpoint = ?, 
               endpoint = ?, 
               departdate = ?, 
               duration = ?, 
               accommodations = ?, 
               meals = ?, 
               firstaid = ?, 
               description = ? 
           WHERE id = ?`,
      [
        tourname,
        category,
        startpoint,
        endpoint,
        departdate,
        duration,
        accommodations,
        meals,
        firstaid,
        description,
        id,
      ]
    );
   
    return result;
  };

  export const DeleteTour = async(id) => {
    const result = await pool.query("DELETE FROM tours WHERE id=?",[id]);
    return result;
  };

  