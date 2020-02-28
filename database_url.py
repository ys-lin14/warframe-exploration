def get_database_url():
    """Get the url for connecting to the MySQL database
    
    Args:
        None
    
    Returns:
        database_url (str): url used to connect to the database
    """
    
    username = input('user: ')
    password = input('password: ')
    hostname = input('hostname: ')
    database_name = input('database name: ')
    
    database_url = (
        'mysql+mysqlconnector://{0}:{1}@{2}/{3}'
        .format(username, password, hostname, database_name)
    )
    return database_url
