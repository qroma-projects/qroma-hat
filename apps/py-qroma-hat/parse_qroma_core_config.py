from py_qroma.qroma_comm_proto import qroma_config_pb2

with open("qroma-core-config.qroma", "rb") as f:
    b = f.read()
    print(b)
    qroma_core_config = qroma_config_pb2.QromaCoreConfig()
    qroma_core_config.ParseFromString(b)
    print(qroma_core_config)


