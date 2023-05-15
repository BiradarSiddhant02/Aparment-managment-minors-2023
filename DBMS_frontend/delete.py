import pandas as pd
import streamlit as st
from database import view_all_data, view_only_tenant_names, delete_data


def delete():
    result=view_all_data()
    df = pd.DataFrame(result, columns=['Tenant ID', 'Tenant Name', 'Tenant Block', 'Tenant dob',
                                       'Tenant room'])
    with st.expander("Current data"):
        st.dataframe(df)
        list_of_tenants = [i[0] for i in view_only_tenant_names()]
        selected_tenant = st.selectbox("Task to Delete", list_of_tenants)
        st.warning("Do you want to delete ::{}".format(selected_tenant))
        if st.button("Delete tenant"):
            delete_data(selected_tenant)
            st.success("tenant has been deleted successfully")
            new_result = view_all_data()
            df2 = pd.DataFrame(new_result, columns=['Tenant ID', 'Tenant Name', 'Tenant Block', 'Tenant dob',
                                       'Tenant room'])
            with st.expander("Updated data"):
                st.dataframe(df2)