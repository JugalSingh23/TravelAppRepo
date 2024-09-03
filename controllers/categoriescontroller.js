import pool from '../database.js'
import path from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);


import { GetCatName, InsertCategory, GetCategories } from '../models/categoriesmodel.js'


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

export const AddCategory = async (req, res) => {
    //itenerary not implemented yet
    try {
        const bannerPath = `/images/${req.file.filename}`;

        await InsertCategory(
            req.body.catname,
            bannerPath,
            req.body.bannerhead,
        );
        return res.status(202).json({ status: "success", message: "Category Created" });
    } catch (error) {
        return res.json({ message: "Error while adding Category", error });
    }
};

export const GetCategoriesAPI = async (req, res) => {
    try {
           
            const [result] = await GetCategories();
            return res.send(result);

    } catch (error) {
        return res.json({ message: "Error while fetching categories", error });
    }
};