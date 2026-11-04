const express = require('express');
// Cần cài đặt thư viện: npm install dotenv
require('dotenv').config(); 

const app = express();

const OPENAI_API_KEY = process.env.OPENAI_API_KEY;
const STEAM_WEB_API_KEY = process.env.STEAM_WEB_API_KEY;
const MONGO_URI = process.env.MONGO_URI;
const JWT_SECRET = process.env.JWT_SECRET;

app.listen(3000, () => console.log('Game Server running on port 3000'));
