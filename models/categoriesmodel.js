import pool from "../database.js";

export const GetCatName = async (id) => {
  const result = await pool.query("SELECT catname FROM tourcategories where id=?",[id]);
  return result;
};

export const InsertCategory = async (
  catname,bannerPath,bannerHead
) => {
  const result = await pool.query(
    "INSERT INTO tourcategories (catname,bannerpath,bannerhead) VALUES (?,?,?)",
    [
      catname,bannerPath,bannerHead
    ]
  );
  return result;
};
