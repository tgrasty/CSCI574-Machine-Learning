#!/usr/bin/env python
"""
Custom code and functions that are useful across more than one notebook for the class.
"""
import inspect
import os.path
import tarfile
import types
import urllib


def download_progress_hook(count, block_size, total_size):
    """Hook for urlretrieve so we can monitor progress of downloads.

    Parameters
    ----------
    count - The count of the current number of blocks received 
    block_size - The size in bytes of each block we receive.
       count * block_size gives the number of total bytes currently received.
    total_size - The total number of bytes in file being fetched
    """
    total_received = count * block_size
    print("Received %8d / %8d bytes" % (total_received, total_size), end='\r', flush=True)
    
    
def fetch_compressed_data(data_url, data_file):
    """Fetch compressed data from a url location and uncompress the data. 
    We attempt to fetch a file which is assumed to be in tared and gzip compressed 
    format.  We assume that the compressed archive has a file named data_name.csv 
    and that by untarring and uncompressing the downloaded file, the result is this 
    file.

    Parameters
    ----------
    data_url - The full url of the data file to be downloaded.
    data_file - The target name of the file that should result from fetching the 
      requested tarred and compressed file and extracting it.
    """
    # split out the path to the data directory and the filename of the data file
    # anc create names/paths needed to do the work
    data_path, data_csvname = os.path.split(data_file)
    data_basename, data_ext = os.path.splitext(data_csvname)
    data_tgzname = "%s.tgz" % data_basename
    
    # do nothing if the file is already downloaded
    if os.path.isfile(data_file):
        print("Downloaded data file '%s' exists, nothing done." % data_csvname)
        return

    # make sure the data directory exists
    if not os.path.isdir(data_path):
        os.makedirs(data_path)
    
    # filename of resulting tared and gziped file we will download
    tgz_path = os.path.join(data_path, data_tgzname)
    
    # actually download the file
    if not os.path.isfile(tgz_path):
        urllib.request.urlretrieve(data_url, tgz_path, reporthook=download_progress_hook)
        print('')
        print("File '%s' successfully downloaded" % data_tgzname)

    # extract the tared and gzipped file to the data directory
    if not os.path.isfile(data_file):
        data_tgz = tarfile.open(tgz_path)
        data_tgz.extractall(path=data_path)
        data_tgz.close()
        if os.path.isfile(data_file):
            print("Successfully extracted '%s'" % data_csvname)
            # remove compressed file so doesn't waste space
            os.remove(tgz_path)
        else:
            print("Error extraction did not result in expected file '%s'" % data_csvname)
            
    

def version_information():
    """Dynamically gather loaded modules form the current running
    environment and display them with their version information.
    """     
    # first gather information about imported modules and their versions
    module_dict = {}
    caller_globals = inspect.stack()[1][0].f_globals
    for name, module in caller_globals.items():
        if isinstance(module, types.ModuleType) and hasattr(module, '__version__') and module.__name__ != 'builtins':
            key = module.__name__
            version = module.__version__ 
            versions = module_dict.get(key, [])
            if not version in versions:
                versions.append(version)
            module_dict[key] = versions
            
    # now display the imported modules
    keys = list(module_dict.keys())
    keys.sort()
    print('%+20s   %s' % ('Module', 'Versions'))
    print('-' * 20 + '   ' + '-' * 60)
    for key in keys:
        print('%+19s:   %s' % (key, module_dict[key])) 

