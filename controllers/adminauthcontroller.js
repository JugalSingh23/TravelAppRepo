import pool from '../database.js'
import path from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';
import bcrypt from 'bcrypt'
import jwt from 'jsonwebtoken'

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

import { GetAdminFromName, InsertAdmin } from '../models/adminauthmodel.js'

export const AdminLogin = async (req, res) => {
    try {
        return res.sendFile(path.join(__dirname, '../views', 'login.html'));
    }

    catch (error) {

    }
}

export const AdminRegister = async (req, res) => {
    try {
        return res.sendFile(path.join(__dirname, '../views', 'register.html'));
    }

    catch (error) {

    }
}

export const AdminRegisterPost = async (req, res) => {

   
    if (req.body.password != req.body.passwordconfirm) {
        return res.json({ status: 'fail', message: 'Password and ConfirmPassword Do Not Match' });
    }

    if (req.body.password.length < 8) {
        return res.json({ status: 'fail', message: 'Password should be at least 8 characters' });

    }


    const [rows] = await GetAdminFromName(req.body.name)
    console.log(rows)

    if (rows.length > 0) {
        return res.json({ status: 'fail', message: 'Username Taken' });
    }

    const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[A-Z]).+$/;
    if (!passwordRegex.test(req.body.password)) {
        return res.json({ status: 'fail', message: 'Password should contain at least one letter, one number, and one capital letter' });

    }

    else {

        await InsertAdmin(req.body.name, req.body.password, req.body.phone, req.body.email)
        return res.status(202).json({ status: 'success', message: 'Admin Registered' });
    }
    return res.render('register')
}

export const AdminLoginPost = async (req, res) => {
   
    const result = await GetAdminFromName(req.body.name)
    if (result[0].length === 0) {
        console.log("No username exists");
        return res.json({ status: 'fail', message: 'No Such Username Exists' });

    }

    const user = result[0][0];

    if (user.password === req.body.password) {

        console.log('Login success')
        req.session.user = user;
        return res.status(202).json({ status: 'success', message: 'Login Successful' });
    }
    else {
        console.log('Incorrect password');
        return res.json({ status: 'fail', message: 'Incorrect Password' });
    }

    return res.render('login',{message : ''})
}

export const AdminPostLogout = async (req, res) => {
    req.session.destroy(err => {
        if (err) {
            console.log("Error during logout:", err);
            return res.redirect('/admin/viewtours');
        }
        res.clearCookie('connect.sid');
        res.redirect('/admin/login');
    });
}