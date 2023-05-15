import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="Apartment"
)

c = mydb.cursor()


def create_table():
    c.execute('CREATE TABLE IF NOT EXISTS TENANT(tenant_id TEXT,tenant_name TEXT,tenant_block TEXT,tenant_dob TEXT,'
              'tenant_room TEXT)')


def add_data(tenant_id, tenant_name, tenant_block, tenant_dob, tenant_room):
    c.execute('INSERT INTO TENANT(tenant_id, tenant_name, tenant_block, tenant_dob,  tenant_room) VALUES(%s,%s,%s,%s,'
              '%s)', (tenant_id, tenant_name, tenant_block, tenant_dob, tenant_room))
    mydb.commit()


def view_all_data():
    c.execute('SELECT * FROM TENANT')
    data = c.fetchall()
    return data


def view_only_tenant_names():
    c.execute('SELECT tenant_name FROM TENANT')
    data = c.fetchall()
    return data


def get_tenant(tenant_name):
    c.execute('SELECT * FROM TENANT WHERE tenant_name="{}"'.format(tenant_name))
    data = c.fetchall()
    return data


def edit_tenant_data(new_tenant_id, new_tenant_name, new_tenant_block, new_tenant_dob, new_tenant_room, tenant_id,
                     tenant_name, tenant_block, tenant_dob, tenant_room):
    c.execute(
        "UPDATE TENANT SET tenant_id=%s,tenant_name=%s,tenant_block=%s,tenant_dob=%s,tenant_room=%s WHERE tenant_id=%s "
        "and tenant_name=%s and tenant_block=%s and tenant_dob=%s and tenant_room=%s",
        (new_tenant_id, new_tenant_name, new_tenant_block, new_tenant_dob, new_tenant_room, tenant_id, tenant_name,
         tenant_block, tenant_dob, tenant_room))
    mydb.commit()
    data = c.fetchall()
    return data


def delete_data(tenant_name):
    c.execute('DELETE FROM TENANT WHERE tenant_name="{}"'.format(tenant_name))
    mydb.commit()
