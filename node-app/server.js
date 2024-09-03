require('dotenv/config')
const express = require('express')

const app = express()

const PORT = process.env.PORT

app.get('/me', async (req, res) => {
  return res.send({ message: { server : `Server At ${PORT}` } })
})

app.listen(PORT, () => {
  console.log(`server runnig at port: ${PORT}`)
})