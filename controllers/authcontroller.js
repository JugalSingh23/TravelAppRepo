import pool from '../database.js'
import path from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';
import bcrypt from 'bcrypt'
import jwt from 'jsonwebtoken'

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

    const isMatch = await bcrypt.compare(req.body.password,user.password)
    if (isMatch) {

        console.log('Login success')
        const token = jwt.sign({ userid: user.id, useremail : user.email, userphone : user.phone }, 'HexaGNTokenSign1294');
        
        return res.status(202).json({ status: 'success', message: 'User Authenticated',token : token });
    }
    else {
        console.log('Incorrect password');
        return res.status(404).json({ status: 'fail', message: 'Wrong Password' });
    }

}

export const PostRegister = async (req, res) => {
   try {

  
    const [rows] = await GetUsersFromUsername(req.body.username)
    if (rows.length > 0) {
        return res.status(404).json({ status: 'fail', message: 'Username taken' });
    }

    
    const hash = await bcrypt.hash(req.body.password,13)


    await InsertUser(req.body.username, hash, req.body.phone, req.body.email);
    return res.status(202).json({ status: 'success', message: 'User Registerd' });
}
catch (error) {
    return res.json({ message: "Error while registering user", error });
}

}

