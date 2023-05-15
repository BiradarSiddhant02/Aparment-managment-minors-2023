import pandas as pd
import streamlit as st
# import plotly.express as px
from database import view_all_data
def read():
    result=view_all_data()
    df=pd.DataFrame(result,columns=['tenant_id', 'tenant_name', 'tenant_block', 'tenant_dob',  'tenant_room'])
    with st.expander("View all Tenants"):
        st.dataframe(df)
    with st.expander("Tenant Block_no:"):
        task_df=df['tenant_block'].value_counts().to_frame()
        task_df=task_df.reset_index()
        st.dataframe(task_df)
        # p1=px.pie(task_df,names='Index',values='tenant_block')
        # st.plotly_chart(p1)