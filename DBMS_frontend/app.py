import streamlit as st
from create import create
from database import create_table
from delete import delete
from read import read
from update import update
import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password=""
)
c = mydb.cursor()
# c.execute("CREATE DATABASE Apartment")


def main():
    st.title("Apartment")
    menu = ["Add", "View", "Edit", "Remove"]
    choice = st.sidebar.selectbox("Menu", menu)
    create_table()
    if choice == "Add":
        st.subheader("Enter tenant Details:")
        create()
    elif choice == "View":
        st.subheader("View created tasks")
        read()
    elif choice == "Edit":
        st.subheader("Update created tasks")
        update()
    elif choice == "Remove":
        st.subheader("Delete created tasks")
        delete()
    else:
        st.subheader("About tasks")
    if __name__ == '__main__':
        main()
