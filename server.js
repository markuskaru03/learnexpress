import express from 'express';
import nunjucks from 'nunjucks';
const app = express();
const port = 3000;

nunjucks.configure('views', {
    autoescape: true,
    express: app
});

app.get('/', (req, res) => {
  let name = 'Markus';
  let age = 76;
  let fruits = [
    'Banana',
    'Õun',
    'damnit',
    'al pacino',
    'cheery',
  ]
  res.render('index.njk', {name, age, fruits});
});

app.get('/about', (req, res) => {
  res.render('about.njk');
});

app.get('/contact', (req, res) => {
  res.render('contact.njk');
});


app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
