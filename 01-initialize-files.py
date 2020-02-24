import os.path
import pandas as pd

def initialize_directories():
    """Create an empty folders for data and backup data
    
    Args:
        None
        
    Returns:
        None
    """
    
    directory_name = 'data/backup_data'
    if os.path.exists(directory_name):
        print(directory_name, "data directories already exists")
    else:
        os.makedirs(directory_name)
        print(directory_name, "data directories initialized")
        
def initialize_cursor_data():
    """Create an empty csv file for keeping track of cursors obtained from Steam's getreview 
    API where cursors are URL Encoded strings used to query the next batch of data
    
    refer to https://partner.steamgames.com/doc/store/getreviews for more information
    
    Args:
        None
        
    Returns:
        None
    """
    
    file_name = 'data/cursor_data.csv'
    if (os.path.exists(file_name)):
        print("cursor data already exists")
    else:
        initial_cursor_data = {"batch": 0, "cursor": ['*']}
        cursor_data = pd.DataFrame(data=initial_cursor_data)
        cursor_data.to_csv('data/cursor_data.csv', index=False)
        print("cursor data initialized")
        
def initialize_raw_data():
    """Create an empty csv file for the raw review data - refer to 
    column_names below for the data contained
    
    Args:
        None
        
    Returns:
        None
    """
    
    file_name = 'data/raw_data.csv'
    
    if (os.path.exists(file_name)):
        print("raw data already exists")
    else:
        column_names = ['recommendationid', 'author', 'language', 'review', 
                        'timestamp_created', 'timestamp_updated', 'voted_up', 
                        'votes_funny', 'weighted_vote_score', 'comment_count', 
                        'steam_purchase', 'received_for_free', 
                        'written_during_early_access']
        raw_data = pd.DataFrame(columns=column_names)
        raw_data.to_csv('data/raw_data.csv', index=False)
        print("raw data initialized")

if __name__ == '__main__':
    initialize_directories()
    initialize_cursor_data()
    initialize_raw_data()
