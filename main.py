# main.py
from fastapi import FastAPI
from model.student import StudentRouter
from model.book import BookRouter
from model.uniform import UniformRouter
from model.admin import AdminRouter
from model.reservation import ReservationRouter
from model.reservationdetails import ReservationdetailsRouter
from model.bookdetails import BookdetailsRouter
from model.uniformdetails import UniformdetailsRouter
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://139.59.246.2"],
    allow_methods=["*"],
)

# Include CRUD routes from modules
app.include_router(StudentRouter, prefix="/api")
app.include_router(BookRouter, prefix="/api")
app.include_router(UniformRouter, prefix="/api")
app.include_router(AdminRouter, prefix="/api")
app.include_router(ReservationRouter, prefix="/api")
app.include_router(ReservationdetailsRouter, prefix="/api")
app.include_router(BookdetailsRouter, prefix="/api")
app.include_router(UniformdetailsRouter, prefix="/api")
