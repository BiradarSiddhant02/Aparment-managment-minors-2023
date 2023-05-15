import streamlit as st
from database import add_data


def create():
    col1, col2 = st.columns(2)
    with col1:
        tenant_id = st.text_input("ID:")
        tenant_name = st.text_input("Name:")
    with col2:
        tenant_block = st.selectbox("Block", ["Tranquil", "Peace", "Musical"])
        tenant_dob = st.text_input("DOB:")
        tenant_room = st.text_input("Room_no:")
    if st.button("Add Dealer"):
        add_data(tenant_id, tenant_name, tenant_block, tenant_dob, tenant_room)
        st.success("Successfully added dealer: {}".format(tenant_name))
