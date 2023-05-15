import pandas as pd
import streamlit as st
from database import view_all_data, view_only_tenant_names, get_tenant, edit_tenant_data


def update():
    result = view_all_data()
    df = pd.DataFrame(result, columns=['Tenant ID', 'Tenant Name', 'Tenant Block', 'Tenant dob',
                                       'Tenant room'])
    with st.expander("Current Dealers"):
        st.dataframe(df)
    list_of_tenants = [i[0] for i in view_only_tenant_names()]
    selected_tenant = st.selectbox("Tenant to Edit", list_of_tenants)
    selected_result = get_tenant(selected_tenant)
    if selected_result:
        tenant_id = selected_result[0][0]
        tenant_name = selected_result[0][1]
        tenant_block = selected_result[0][2]
        tenant_dob = selected_result[0][3]
        tenant_room = selected_result[0][4]

        col1, col2 = st.columns(2)
        with col1:
            new_tenant_id = st.text_input("ID:", tenant_id)
            new_tenant_name = st.text_input("Name:", tenant_name)
        with col2:
            new_tenant_block = st.selectbox(tenant_block, ["Tranquil", "Peace", "Musical"])
            new_tenant_dob = st.text_input("Pin Code:", tenant_dob)
            new_tenant_room = st.text_input("Street Name:", tenant_room)
        if st.button("Update Dealer"):
            edit_tenant_data(new_tenant_id, new_tenant_name, new_tenant_block, new_tenant_dob, new_tenant_room,
                             tenant_id, tenant_name, tenant_block, tenant_dob, tenant_room)
            st.success("Successfully updated:: {} to ::{}".format(tenant_name, new_tenant_name))
        result2 = view_all_data()
        df2 = pd.DataFrame(result2, columns=['Tenant ID', 'Tenant Name', 'Tenant Block', 'Tenant dob',
                                             'Tenant room'])
        with st.expander("Updated data"):
            st.dataframe(df2)
