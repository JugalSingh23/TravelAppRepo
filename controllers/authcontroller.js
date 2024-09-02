import pool from '../database.js'
import path from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);


import { GetUsersFromUsername, InsertUser } from '../models/authmodel.js'


export const PostLogin = async (req, res) => {
  console.log(req.body.username)
    const result = await GetUsersFromUsername(req.body.username)
    if (result[0].length === 0) {
        console.log("No username exists");
        return res.status(404).json({ status: 'fail', message: 'Username does not exist' });

    }

    const user = result[0][0];

    if (user.password === req.body.password) {

        console.log('Login success')
        // req.session.user = user;
        return res.status(202).json({ status: 'success', message: 'User Authenticated' });
    }
    else {
        console.log('Incorrect password');
        return res.status(404).json({ status: 'fail', message: 'Wrong Password' });
    }

}

export const PostRegister = async (req, res) => {
   
    const [rows] = await GetUsersFromUsername(req.body.username)
  

    if (rows.length > 0) {
        return res.status(404).json({ status: 'fail', message: 'Username taken' });
    }

    
     
    await InsertUser(req.body.username, req.body.password, req.body.phone, req.body.email)
    return res.status(202).json({ status: 'success', message: 'User Registerd' });


}

