import pool from "../database.js";
import path from "path";
import { fileURLToPath } from "url";
import { dirname } from "path";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

import { DeleteTour, EditTour, GetTours, GetToursWithCat, InsertTour, EditTourNoImage, GetToursWithID } from "../models/mainmodel.js";
import { GetCatID } from "../models/categoriesmodel.js";

export const GetToursAPI = async (req, res) => {
    try {
        if (req.query.category) {
            const cat = req.query.category;
            const [result] = await GetToursWithCat(cat);
            return res.send(result);
        }
        if (req.query.id) {

            const id = req.query.id;
            const [result] = await GetToursWithID(id);
            return res.send(result)
        }
        const [result] = await GetTours();
        // const rows = result[0]
        return res.send(result);
    } catch (error) {
        return res.json({ message: "Error while fetching Tours data", error });
    }
};

export const PostAddTour = async (req, res) => {
    //itenerary not implemented yet
    try {
        console.log("welcome to add tour API")

        const bannerPath = `/images/${req.file.filename}`;

        const catname = req.body.category;
        const [result2] = await GetCatID(catname);
        const catid = result2[0].id
        console.log(catid)

        const result = await InsertTour(
            req.body.tourname,
            catid,
            req.body.startpoint,
            req.body.endpoint,
            bannerPath,
            req.body.departdate,
            req.body.duration,
            req.body.accommodations,
            req.body.meals,
            req.body.firstaid,
            req.body.description
        );

        return res.status(200).json({ status: "success", message: "Tour Added" });
    } catch (error) {
        return res.json({ message: "Error while adding tour", error });
    }
};

export const PostEditTour = async (req, res) => {
    //itenerary not implemented yet
    try {
        if (req.file) {
            const bannerPath = `/images/${req.file.filename}`;

            const catname = req.body.category;
            const [result2] = await GetCatID(catname);
            const catid = result2[0].id

            await EditTour(
                req.body.id,
                req.body.tourname,
                catid,
                req.body.startpoint,
                req.body.endpoint,
                bannerPath,
                req.body.departdate,
                req.body.duration,
                req.body.accommodations,
                req.body.meals,
                req.body.firstaid,
                req.body.description

            );
            return res
                .status(200)
                .json({ status: "success", message: "Tour Edited" });
        }
        if (!req.file) {
            console.log("welcome to no image")
            
            const catname = req.body.category;
            const [result2] = await GetCatID(catname);
            const catid = result2[0].id

            const modelreturn = await EditTourNoImage(
                req.body.id,
                req.body.tourname,
                catid,
                req.body.startpoint,
                req.body.endpoint,
                req.body.departdate,
                req.body.duration,
                req.body.accommodations,
                req.body.meals,
                req.body.firstaid,
                req.body.description,
            );
            return res
                .status(200)
                .json({ status: "success", message: "Tour Added " });
        }


    } catch (error) {
        return res.json({ message: "Error while adding tour", error });
    }
};


export const PostDeleteTour = async (req, res) => {
    try {
        if (req.query.id) {
            const id = req.query.id
            await DeleteTour(id)
            return res.json({ message: "Tour Deleted Successfully" });
        }

        else {
            return res.json({ message: "Please input id query" })
        }

    } catch (error) {
        return res.json({ message: "Error while deleting tours", error });
    }
};

export const AddTourAdmin = async (req, res) => {
    try {
        return res.sendFile(path.join(__dirname, '../views', 'addtour.html'));
    }
    catch (error) {

    }
}


export const EditTourAdmin = async (req, res) => {
    try {
        
        return res.sendFile(path.join(__dirname, '../views', 'edittour.html'));
    }
    catch (error) {

    }
}

export const DeleteTourAdmin = async (req, res) => {
    try {
        return res.sendFile(path.join(__dirname, '../views', 'deletetour.html'));
    }
    catch (error) {

    }
}