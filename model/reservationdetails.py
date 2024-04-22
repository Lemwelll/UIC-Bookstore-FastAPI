# model/reservationdetails.py
from fastapi import Depends, HTTPException, APIRouter, Form, Body
from .db import get_db

ReservationdetailsRouter = APIRouter(tags=["Reservation Details"])

# CRUD operations

@ReservationdetailsRouter.get("/reservationdetails/", response_model=list)
async def read_reservations(
    db=Depends(get_db)
):
    query = "SELECT reservationdetailsID, createDate, expiryDate, numofItems, totalAmount, studentID, items FROM reservationdetails"
    db[0].execute(query)
    reservations = [{"reservationdetailsID": reservation[0], "createDate": reservation[1], "expiryDate": reservation[2], "numofItems": reservation[3], "totalAmount": reservation[4], "studentID": reservation[5], "items": reservation[6]} for reservation in db[0].fetchall()]
    return reservations

@ReservationdetailsRouter.get("/reservationdetails/{reservation_id}", response_model=dict)
async def read_reservation_by_id(
    reservation_id: int, 
    db=Depends(get_db)
):
    query = "SELECT reservationdetailsID, createDate, expiryDate, numofItems, totalAmount, studentID, items FROM reservationdetails WHERE reservationID = %s"
    db[0].execute(query, (reservation_id,))
    reservationdetails = db[0].fetchone()
    if reservationdetails:
        return {"reservationdetailsID": reservationdetails[0], "createDate": reservationdetails[1], "expiryDate": reservationdetails[2], "numofItems": reservationdetails[3], "totalAmount": reservationdetails[4], "studentID": reservationdetails[5], "items": reservationdetails[6]}
    raise HTTPException(status_code=404, detail="Reservation not found")


@ReservationdetailsRouter.post("/reservationdetails/", response_model=dict)
async def create_reservation(
    createDate: str = Body(...), 
    expiryDate: str = Body(...), 
    numofItems: int = Body(...),
    totalAmount: int = Body(...),
    studentID: int = Body(...),
    items: list[dict] = Body(...),  # expect a list of dictionary, each dictionary containing 'bookID' and 'quantity'
    db=Depends(get_db)
):
    query = "INSERT INTO reservationdetails (createDate, expiryDate, numofItems, totalAmount, studentID, items) VALUES (%s, %s, %s, %s, %s, %s)"
    db[0].execute(query, (createDate, expiryDate, numofItems, totalAmount, studentID, items))
    db[1].commit()

    # Retrieve the last inserted ID using LAST_INSERT_ID()
    new_reservationdetails_id = db[0].lastrowid

    return {
        "reservationdetailsID": new_reservationdetails_id,
        "createDate": createDate,
        "expiryDate": expiryDate,
        "numofItems": numofItems,
        "totalAmount": totalAmount,
        "studentID": studentID,
        "items": items
    }

@ReservationdetailsRouter.put("/reservationdetails/{reservationdetailsID}", response_model=dict)
async def update_reservation(
    reservationdetailsID: int,
    createDate: str = Form(...), 
    expiryDate: str = Form(...), 
    numofItems: int = Form(...),
    totalAmount: int = Form(...),
    studentID: int = Form(...),
    items: str = Form(...),
    db=Depends(get_db)
):
    query = "UPDATE reservationdetails SET createDate = %s, expiryDate = %s, numofItems = %s, totalAmount = %s, studentID = %s, items = %s WHERE reservationdetailsID = %s"
    db[0].execute(query, (createDate, expiryDate, numofItems, totalAmount, studentID, items, reservationdetailsID))

    # Check if the update was successful
    if db[0].rowcount > 0:
        db[1].commit()
        return {"message": "Reservation details updated successfully"}
    
    # If no rows were affected, reservation details not found
    raise HTTPException(status_code=404, detail="Reservation details not found")

@ReservationdetailsRouter.delete("/reservationdetails/{reservationdetailsID}", response_model=dict)
async def delete_reservation(
    reservationdetailsID: int,
    db=Depends(get_db)
):
    try:
        # Check if the reservation details exist
        query_check_reservation = "SELECT reservationdetailsID FROM reservationdetails WHERE reservationdetailsID = %s"
        db[0].execute(query_check_reservation, (reservationdetailsID,))
        existing_reservation = db[0].fetchone()

        if not existing_reservation:
            raise HTTPException(status_code=404, detail="Reservation details not found")

        # Delete the reservation details
        query_delete_reservation = "DELETE FROM reservationdetails WHERE reservationdetailsID = %s"
        db[0].execute(query_delete_reservation, (reservationdetailsID,))
        db[1].commit()

        return {"message": "Reservation details deleted successfully"}
    except Exception as e:
        # Handle other exceptions if necessary
        raise HTTPException(status_code=500, detail=f"Internal Server Error: {str(e)}")
    finally:
        # Close the database cursor
        db[0].close()
