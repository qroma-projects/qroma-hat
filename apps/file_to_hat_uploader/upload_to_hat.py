import asyncio
import time

from aioserial import aioserial
from py_qroma.qc_file_system.upload_file import UploadFileDetails, create_upload_file_details_from_local_file, \
    UploadDetails
from py_qroma.qc_file_system.upload_then_check_filedetails import main

from settings import QROMA_ACTIVE_COM_PORT

FILE_STREAM_ID = int(time.time())
UPLOAD_FILE = "qroma_hat.dgsr"
UPLOAD_PATH = "/qroma_hat.dgsr"

uploadFileDetails: UploadFileDetails = create_upload_file_details_from_local_file(UPLOAD_FILE, UPLOAD_PATH)

aioserialInstance: aioserial.AioSerial = aioserial.AioSerial(
    port=QROMA_ACTIVE_COM_PORT,
    baudrate=115200,
)

uploadDetails = UploadDetails()
uploadDetails.file_details = uploadFileDetails
uploadDetails.serial = aioserialInstance
uploadDetails.file_stream_id = FILE_STREAM_ID

asyncio.run(main(uploadDetails))
