from elasticsearch import Elasticsearch
from filehash import FileHash

PUNCTUATION = r"""!"#$%&'()*+,-./'’“”—:;<=>–?«»@[\]^_`©‘…{|}~"""
DOCUMENTS_DIR = '/documents'
DOCUMENTS_INDEX = 'library'

ES = Elasticsearch(['192.168.2.145:9200'])
SHA256 = FileHash('sha256')
