import pool from "../database.js";

export const GetCatName = async (id) => {
  const result = await pool.query("SELECT catname FROM tourcategories where id=?",[id]);
  return result;
};

