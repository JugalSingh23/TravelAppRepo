import pool from '../database.js'
import path from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);


import { GetCatName } from '../models/categoriesmodel.js'


export const GetCatNameAPI = async (req, res) => {
    try {
        if (req.query.id) {
            const id = req.query.id;
            const [result] = await GetCatName(id);
            return res.send(result);
        }
    } catch (error) {
        return res.json({ message: "Error while fetching category name", error });
    }
};
