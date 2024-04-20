from time import time
from fastapi import FastAPI, __version__
from fastapi.staticfiles import StaticFiles
from fastapi.responses import HTMLResponse
from model.student import StudentRouter
from model.book import BookRouter
from model.uniform import UniformRouter
from model.admin import AdminRouter
from model.reservation import ReservationRouter
from model.reservationdetails import ReservationdetailsRouter
from model.bookdetails import BookdetailsRouter
from model.uniformdetails import UniformdetailsRouter

app = FastAPI()


# Include CRUD routes from modules
app.include_router(StudentRouter, prefix="/api")
app.include_router(BookRouter, prefix="/api")
app.include_router(UniformRouter, prefix="/api")
app.include_router(AdminRouter, prefix="/api")
app.include_router(ReservationRouter, prefix="/api")
app.include_router(ReservationdetailsRouter, prefix="/api")
app.include_router(BookdetailsRouter, prefix="/api")
app.include_router(UniformdetailsRouter, prefix="/api")
