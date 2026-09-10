const express = require("express")
const authRoute = require("./routes/authRoutes")

const app = express()

app.use(express.json())

app.get("/", (req,res) =>{
    res.json({
        status: true,
        message: "Api Running"
    })
})

app.use("/api/auth",authRoute)

app.listen(process.env.PORT,()=>{
    console.log("Sever Running");
    
})